package id.posyandu.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import id.posyandu.domain.Balita;
import id.posyandu.domain.Tinggi;
import id.posyandu.service.BalitaService;
import id.posyandu.service.TinggiService;

@Controller
@ComponentScan
public class TinggiController {
	
	@Autowired
	BalitaService balitaService;
	
	@Autowired
	TinggiService tinggiService;
	
	@InitBinder
    public void initBinder(WebDataBinder binder){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
	
	@RequestMapping(value = {"/tinggi"}, method = RequestMethod.GET)
    public String index(Model model) {
        
        model.addAttribute("allTinggis", (ArrayList<Tinggi>) tinggiService.getAllTinggis());
        model.addAttribute("allBalitas", (Collection<Balita>) balitaService.getAllBalitas());
        return "/tinggi/index";
    }
	
	@RequestMapping(value = "/tinggi/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
       model.addAttribute("tinggi", new Tinggi());
       model.addAttribute("allBalitas", (Collection<Balita>) balitaService.getAllBalitas());
        
        return "/tinggi/create";
    }
	
	@RequestMapping(value = {"/tinggi/save"}, method = RequestMethod.POST)
    public String saveTinggi(@ModelAttribute("tinggi") Tinggi tinggi,
            final RedirectAttributes redirectAttributes) {

        if (tinggiService.saveTinggi(tinggi) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }

        return "redirect:/tinggi";
    }
	
	@RequestMapping(value = "/tinggi/{operation}/{tinggiId}", method = RequestMethod.GET)
    public String editRemoveTinggi(@PathVariable("operation") String operation,
            @PathVariable("tinggiId") String tinggiId, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (tinggiService.deleteTinggi(tinggiId)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
            Tinggi tinggi = tinggiService.findTinggi(tinggiId);
            if (tinggi != null) {
                model.addAttribute("tinggi", tinggi);
                model.addAttribute("allBalitas", (Collection<Balita>) balitaService.getAllBalitas());
                return "/tinggi/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
        	Tinggi tinggi = tinggiService.findTinggi(tinggiId);
            if (tinggi != null) {
            	model.addAttribute("tinggi", tinggi);
                return "/tinggi/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/tinggi";
    }
	
	@RequestMapping(value = "/tinggi/update/{tinggiId}", method = RequestMethod.POST)
	public String updateBerat(@PathVariable("tinggiId") String tinggiId, 
	    		Tinggi tinggi,
	    		final RedirectAttributes redirectAttributes){
	    	
			tinggi.setTinggiId(tinggiId);
	    	    	
	    	
	    	if (tinggiService.saveTinggi(tinggi) != null ) {
	            redirectAttributes.addFlashAttribute("edit", "success");
	        } else {
	            redirectAttributes.addFlashAttribute("edit", "unsuccess");
	        }
	    	
	    	return "redirect:/tinggi";
	    }

}

package id.posyandu.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import id.posyandu.domain.Berat;
import id.posyandu.domain.Tinggi;
import id.posyandu.service.BalitaService;
import id.posyandu.service.BeratService;
import id.posyandu.service.TinggiService;

@Controller
@ComponentScan
public class BeratTinggiController {
	
	@Autowired
	BalitaService balitaService;
	
	@Autowired
	TinggiService tinggiService;
	
	@Autowired
	BeratService beratService;
	
	@InitBinder
    public void initBinder(WebDataBinder binder){
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
	
	@RequestMapping(value = {"/posbulanan"}, method = RequestMethod.GET)
    public String index(Model model) {
        
		model.addAttribute("allBalitas", (ArrayList<Balita>) balitaService.getAllBalitas());
		return "/posbulanan/index";
    }
	
	@RequestMapping(value = "/posbulanan/create/{balitaId}", method = RequestMethod.GET)
	public String createBeratTinggi(@PathVariable("balitaId") String balitaId, 
			final RedirectAttributes redirectAttributes,
            Model model){
				
		Balita balita = balitaService.findBalita(balitaId);
		
		Date tanggalPosyandu = new Date();
		SimpleDateFormat ft = new SimpleDateFormat ("MM-dd-yyyy");
		
		model.addAttribute("tanggalPosyandu", ft.format(tanggalPosyandu));
		
		model.addAttribute("balita", balita);
		model.addAttribute("berat", new Berat());
        model.addAttribute("tinggi", new Tinggi());
            
        return "/posbulanan/create";
    }
	
	@RequestMapping(value = "/posbulanan/save", method = RequestMethod.POST)
	public String saveBeratTinggi(@ModelAttribute("berat") Berat berat,
				@ModelAttribute("tinggi") Tinggi tinggi,
				final RedirectAttributes redirectAttributes){
	    	
			
	    	if (beratService.saveBerat(berat) != null) {
	            redirectAttributes.addFlashAttribute("edit", "success");
	        } else {
	            redirectAttributes.addFlashAttribute("edit", "unsuccess");
	        }
	    	
	    	tinggiService.saveTinggi(tinggi);
	    	
	    	return "redirect:/posbulanan";
	    }

}

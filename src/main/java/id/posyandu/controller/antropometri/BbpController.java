package id.posyandu.controller.antropometri;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import id.posyandu.domain.antropometri.Beratbadanpanjang;
import id.posyandu.service.antropometri.BbpService;

@Controller
@ComponentScan
public class BbpController {
	
	@Autowired
    private BbpService bbpService;

	@RequestMapping(value = {"/bbp"}, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("allBbpL", (Collection<Beratbadanpanjang>) bbpService.getAllBBPLs());
        model.addAttribute("allBbpP", (Collection<Beratbadanpanjang>) bbpService.getAllBBPPs());
        
        return "/bbp/index";
    }
    
    @RequestMapping(value = "/bbp/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
        model.addAttribute("bbp", new Beratbadanpanjang());
        
        return "/bbp/create";
    }
    
    @RequestMapping(value = {"/bbp/save"}, method = RequestMethod.POST)
    public String saveBBP(@ModelAttribute("bbp") Beratbadanpanjang bbp,
            final RedirectAttributes redirectAttributes) {

        if (bbpService.saveBBP(bbp) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }

        return "redirect:/bbp";
    }
    
    @RequestMapping(value = "/bbp/{operation}/{id}", method = RequestMethod.GET)
    public String editRemoveBBP(@PathVariable("operation") String operation,
            @PathVariable("id") String id, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (bbpService.deleteBBP(id)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
            Beratbadanpanjang bbp = bbpService.findBBP(id);
            if (bbp != null) {
                model.addAttribute("bbp", bbp);
                return "/bbp/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
        	 Beratbadanpanjang bbp = bbpService.findBBP(id);
            if (bbp != null) {
                model.addAttribute("bbp", bbp);
                return "/bbp/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/bbp";
    }
    
    @RequestMapping(value = "/bbp/update/{id}", method = RequestMethod.POST)
    public String update(@PathVariable("id") String id, 
    		Beratbadanpanjang bbp,
    		final RedirectAttributes redirectAttributes){
    	    	
    	bbp.setId(id);
    	    	
    	if (bbpService.saveBBP(bbp) != null) {
            redirectAttributes.addFlashAttribute("edit", "success");
        } else {
            redirectAttributes.addFlashAttribute("edit", "unsuccess");
        }
    	
    	return "redirect:/bbp";
    }
}

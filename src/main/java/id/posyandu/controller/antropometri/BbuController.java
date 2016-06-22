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

import id.posyandu.domain.antropometri.Beratbadanumur;
import id.posyandu.service.antropometri.BbuService;

@Controller
@ComponentScan
public class BbuController {
	
	@Autowired
    private BbuService bbuService;

	@RequestMapping(value = {"/bbu"}, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("allBbuL", (Collection<Beratbadanumur>) bbuService.getAllBBULs());
        model.addAttribute("allBbuP", (Collection<Beratbadanumur>) bbuService.getAllBBUPs());
        
        return "/bbu/index";
    }
    
    @RequestMapping(value = "/bbu/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
        model.addAttribute("bbu", new Beratbadanumur());
        
        return "/bbu/create";
    }
    
    @RequestMapping(value = {"/bbu/save"}, method = RequestMethod.POST)
    public String saveBBU(@ModelAttribute("bbu") Beratbadanumur bbu,
            final RedirectAttributes redirectAttributes) {

        if (bbuService.saveBBU(bbu) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }

        return "redirect:/bbu";
    }
    
    @RequestMapping(value = "/bbu/{operation}/{id}", method = RequestMethod.GET)
    public String editRemoveBBU(@PathVariable("operation") String operation,
            @PathVariable("id") String id, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (bbuService.deleteBBU(id)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
            Beratbadanumur bbu = bbuService.findBBU(id);
            if (bbu != null) {
                model.addAttribute("bbu", bbu);
                return "/bbu/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
        	Beratbadanumur bbu = bbuService.findBBU(id);
            if (bbu != null) {
                model.addAttribute("bbu", bbu);
                return "/bbu/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/bbu";
    }
    
    @RequestMapping(value = "/bbu/update/{id}", method = RequestMethod.POST)
    public String update(@PathVariable("id") String bbuId, 
    		Beratbadanumur bbu,
    		final RedirectAttributes redirectAttributes){
    	    	
    	bbu.setId(bbuId);
    	    	
    	if (bbuService.saveBBU(bbu) != null) {
            redirectAttributes.addFlashAttribute("edit", "success");
        } else {
            redirectAttributes.addFlashAttribute("edit", "unsuccess");
        }
    	
    	return "redirect:/bbu";
    }
}

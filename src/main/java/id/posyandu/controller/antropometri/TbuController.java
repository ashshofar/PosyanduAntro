package id.posyandu.controller.antropometri;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import id.posyandu.domain.antropometri.Tinggibadanumur;
import id.posyandu.service.antropometri.TbuService;

@Controller
@ComponentScan
public class TbuController {

	@Autowired
    private TbuService tbuService;
	
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
	@RequestMapping(value = {"/tbu"}, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("allTbuL", (Collection<Tinggibadanumur>) tbuService.getAllTBULs());
        model.addAttribute("allTbuP", (Collection<Tinggibadanumur>) tbuService.getAllTBUPs());
        
        return "/tbu/index";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/tbu/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
        model.addAttribute("tbu", new Tinggibadanumur());
        
        return "/tbu/create";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = {"/tbu/save"}, method = RequestMethod.POST)
    public String saveTBU(@ModelAttribute("tbu") Tinggibadanumur tbu,
            final RedirectAttributes redirectAttributes) {

        if (tbuService.saveTBU(tbu) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }

        return "redirect:/tbu";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/tbu/{operation}/{id}", method = RequestMethod.GET)
    public String editRemoveTBU(@PathVariable("operation") String operation,
            @PathVariable("id") String id, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (tbuService.deleteTBU(id)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
        	Tinggibadanumur tbu = tbuService.findTBU(id);
            if (tbu != null) {
                model.addAttribute("tbu", tbu);
                return "/tbu/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
        	Tinggibadanumur tbu = tbuService.findTBU(id);
            if (tbu != null) {
                model.addAttribute("tbu", tbu);
                return "/tbu/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/tbu";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/tbu/update/{id}", method = RequestMethod.POST)
    public String update(@PathVariable("id") String id, 
    		Tinggibadanumur tbu,
    		final RedirectAttributes redirectAttributes){
    	    	
    	tbu.setId(id);
    	    	
    	if (tbuService.saveTBU(tbu) != null) {
            redirectAttributes.addFlashAttribute("edit", "success");
        } else {
            redirectAttributes.addFlashAttribute("edit", "unsuccess");
        }
    	
    	return "redirect:/tbu";
    }
}

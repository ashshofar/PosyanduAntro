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

import id.posyandu.domain.antropometri.Panjangbadanumur;
import id.posyandu.service.antropometri.PbuService;

@Controller
@ComponentScan
public class PbuController {
	
	@Autowired
    private PbuService pbuService;
	
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
	@RequestMapping(value = {"/pbu"}, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("allPbuL", (Collection<Panjangbadanumur>) pbuService.getAllPBULs());
        model.addAttribute("allPbuP", (Collection<Panjangbadanumur>) pbuService.getAllPBUPs());
        
        return "/pbu/index";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/pbu/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
        model.addAttribute("pbu", new Panjangbadanumur());
        
        return "/pbu/create";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = {"/pbu/save"}, method = RequestMethod.POST)
    public String savePBU(@ModelAttribute("tbu") Panjangbadanumur pbu,
            final RedirectAttributes redirectAttributes) {

        if (pbuService.savePBU(pbu) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }

        return "redirect:/pbu";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/pbu/{operation}/{id}", method = RequestMethod.GET)
    public String editRemovePBU(@PathVariable("operation") String operation,
            @PathVariable("id") String id, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (pbuService.deletePBU(id)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
        	Panjangbadanumur pbu = pbuService.findPBU(id);
            if (pbu != null) {
                model.addAttribute("pbu", pbu);
                return "/pbu/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
        	Panjangbadanumur pbu = pbuService.findPBU(id);
            if (pbu != null) {
                model.addAttribute("pbu", pbu);
                return "/pbu/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/pbu";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/pbu/update/{id}", method = RequestMethod.POST)
    public String update(@PathVariable("id") String id, 
    		Panjangbadanumur pbu,
    		final RedirectAttributes redirectAttributes){
    	    	
    	pbu.setId(id);
    	    	
    	if (pbuService.savePBU(pbu) != null) {
            redirectAttributes.addFlashAttribute("edit", "success");
        } else {
            redirectAttributes.addFlashAttribute("edit", "unsuccess");
        }
    	
    	return "redirect:/pbu";
    }
}

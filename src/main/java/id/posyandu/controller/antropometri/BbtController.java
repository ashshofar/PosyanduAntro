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

import id.posyandu.domain.antropometri.Beratbadantinggi;
import id.posyandu.service.antropometri.BbtService;

@Controller
@ComponentScan
public class BbtController {
	
	@Autowired
    private BbtService bbtService;
	
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
	@RequestMapping(value = {"/bbt"}, method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("allBbtL", (Collection<Beratbadantinggi>) bbtService.getAllBBTLs());
        model.addAttribute("allBbtP", (Collection<Beratbadantinggi>) bbtService.getAllBBTPs());
        
        return "/bbt/index";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/bbt/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
        model.addAttribute("bbt", new Beratbadantinggi());
        
        return "/bbt/create";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = {"/bbt/save"}, method = RequestMethod.POST)
    public String saveBBT(@ModelAttribute("bbt") Beratbadantinggi bbt,
            final RedirectAttributes redirectAttributes) {

        if (bbtService.saveBBT(bbt) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }

        return "redirect:/bbt";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/bbt/{operation}/{id}", method = RequestMethod.GET)
    public String editRemoveBBT(@PathVariable("operation") String operation,
            @PathVariable("id") String id, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (bbtService.deleteBBT(id)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
        	Beratbadantinggi bbt = bbtService.findBBT(id);
            if (bbt != null) {
                model.addAttribute("bbt", bbt);
                return "/bbt/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } else if (operation.equals("view")) {
        	Beratbadantinggi bbt = bbtService.findBBT(id);
            if (bbt != null) {
                model.addAttribute("bbt", bbt);
                return "/bbt/view";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        }

        return "redirect:/bbt";
    }
    
	@PreAuthorize("hasAnyAuthority('Admin', 'Bidan')")
    @RequestMapping(value = "/bbt/update/{id}", method = RequestMethod.POST)
    public String update(@PathVariable("id") String id, 
    		Beratbadantinggi bbt,
    		final RedirectAttributes redirectAttributes){
    	    	
    	bbt.setId(id);
    	    	
    	if (bbtService.saveBBT(bbt) != null) {
            redirectAttributes.addFlashAttribute("edit", "success");
        } else {
            redirectAttributes.addFlashAttribute("edit", "unsuccess");
        }
    	
    	return "redirect:/bbt";
    }

}

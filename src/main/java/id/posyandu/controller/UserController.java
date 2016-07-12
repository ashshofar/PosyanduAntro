package id.posyandu.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import id.posyandu.domain.Assigment;
import id.posyandu.domain.Jabatan;
import id.posyandu.domain.User;
import id.posyandu.service.AssigmentService;
import id.posyandu.service.UserService;

@Controller
@ComponentScan
public class UserController {
	
	@Autowired
    UserService userService;
    
    @Autowired
    AssigmentService assigmentService;
    
   @PreAuthorize("hasAnyAuthority('Admin')") 
   @RequestMapping(value = {"/user"}, method = RequestMethod.GET)
    public String index(Model model) {
        
        model.addAttribute("allUsers", (ArrayList<User>) userService.getAllUsers());
        return "/user/index";
    }
    
   
    @PreAuthorize("hasAuthority('Admin')")
    @RequestMapping(value = "/user/create", method = RequestMethod.GET)
    public String viewForm(Model model){
        
       model.addAttribute("user", new User());
       return "/user/create";
    }
    
    @RequestMapping(value = {"/user/save"}, method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("user") User user,
            final RedirectAttributes redirectAttributes) {
    	
       user.setActive(true);
  	   user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
  	   
        if (userService.saveUser(user) != null) {
            redirectAttributes.addFlashAttribute("save", "success");
        } else {
            redirectAttributes.addFlashAttribute("save", "unsuccess");
        }
        
       

        return "redirect:/user";
    }
    
    @RequestMapping(value = "/user/view/{userId}", method = RequestMethod.GET)
    public String viewUser(@PathVariable("userId") String userId, Model model){
    	User user = userService.findUser(userId);
    	model.addAttribute("user", user);
    	return "/user/view";
    }
    
    @RequestMapping(value = "/user/{operation}/{userId}", method = RequestMethod.GET)
    public String editRemoveUser(@PathVariable("operation") String operation,
            @PathVariable("userId") String userId, final RedirectAttributes redirectAttributes,
            Model model) {
        if (operation.equals("delete")) {
            if (userService.deleteUser(userId)) {
                redirectAttributes.addFlashAttribute("deletion", "success");
            } else {
                redirectAttributes.addFlashAttribute("deletion", "unsuccess");
            }
        } else if (operation.equals("edit")) {
            User user = userService.findUser(userId);
            if (user != null) {
                model.addAttribute("user", user);
                return "/user/edit";
            } else {
                redirectAttributes.addFlashAttribute("status", "notfound");
            }
        } 

        return "redirect:/user";
    }
    
   @RequestMapping(value = "/user/update/{userId}", method = RequestMethod.POST)
   public String updateUser(@PathVariable("userId") String userId, 
		    User user,    		
    		final RedirectAttributes redirectAttributes){
    	   	
    	user.setUserId(userId);
    	    	
    	if (userService.saveUser(user) != null) {
            redirectAttributes.addFlashAttribute("edit", "success");
        } else {
            redirectAttributes.addFlashAttribute("edit", "unsuccess");
        }
    	
    	return "redirect:/user";
    }
   
   
   /*  
    * Controller Untuk Jabatan Petugas
    * 
    */
   
   @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
   @RequestMapping(value = {"/user/petugas"}, method = RequestMethod.GET)
   public String indexPetugas(Model model) {
       
       model.addAttribute("allPetugas", (ArrayList<User>) userService.getAllPetugas());
       return "/user/petugas/index";
   }
   
   @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
   @RequestMapping(value = "/user/petugas/create", method = RequestMethod.GET)
   public String viewFormPetugas(Model model){
       
      model.addAttribute("user", new User());
      return "/user/petugas/create";
   }
   
   @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
   @RequestMapping(value = {"/user/petugas/save"}, method = RequestMethod.POST)
   public String savePetugas(@ModelAttribute("user") User user, 
		   Assigment assigment,
		   Jabatan jabatan,
		   final RedirectAttributes redirectAttributes) {
	   
	   if (userService.saveUser(user) != null) {
           redirectAttributes.addFlashAttribute("save", "success");
       } else {
           redirectAttributes.addFlashAttribute("save", "unsuccess");
       }
	   
	   user.setActive(true);
	   user.setUsername(user.getUserId());
	   user.setPassword(new BCryptPasswordEncoder().encode("2016"));
	   jabatan.setJabatanId("1ac99d1b-cee9-4c60-bb42-05e5399c883c");
	   assigment.setIdUser(user);
	   assigment.setIdJabatan(jabatan);
	   
	   assigmentService.saveAssigment(assigment);

       return "redirect:/user/petugas";
   }
   
   @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
   @RequestMapping(value = "/user/petugas/{operation}/{userId}", method = RequestMethod.GET)
   public String editRemovePetugas(@PathVariable("operation") String operation,
           @PathVariable("userId") String userId, final RedirectAttributes redirectAttributes,
           Model model) {
       if (operation.equals("delete")) {
           if (userService.deleteUser(userId)) {
               redirectAttributes.addFlashAttribute("deletion", "success");
           } else {
               redirectAttributes.addFlashAttribute("deletion", "unsuccess");
           }
       } else if (operation.equals("edit")) {
           User user = userService.findUser(userId);
           if (user != null) {
               model.addAttribute("user", user);
               return "/user/petugas/edit";
           } else {
               redirectAttributes.addFlashAttribute("status", "notfound");
           }
       } else if (operation.equals("view")) {
           User user = userService.findUser(userId);
           if (user != null) {
               model.addAttribute("user", user);
               return "/user/petugas/view";
           } else {
               redirectAttributes.addFlashAttribute("status", "notfound");
           }
       }

       return "redirect:/user/petugas";
   }
  
  @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
  @RequestMapping(value = "/user/petugas/update/{userId}", method = RequestMethod.POST)
  public String updatePetugas(@PathVariable("userId") String userId, 
		    User user,    		
   		final RedirectAttributes redirectAttributes){
   	   	
   	user.setUserId(userId);
   	    	
   	if (userService.saveUser(user) != null) {
           redirectAttributes.addFlashAttribute("edit", "success");
       } else {
           redirectAttributes.addFlashAttribute("edit", "unsuccess");
       }
   	
   	return "redirect:/user/petugas";
   }
  
  
  /*  
   * Controller Untuk Jabatan OrangTua
   * 
   */
  
  @PreAuthorize("hasAnyAuthority('Admin', 'Rw', 'Petugas')")
  @RequestMapping(value = {"/user/orangtua"}, method = RequestMethod.GET)
  public String indexOrangtua(Model model) {
      
      model.addAttribute("allOrangtuas", (ArrayList<User>) userService.getAllOrangtuas());
      return "/user/orangtua/index";
  }
  
  @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
  @RequestMapping(value = "/user/orangtua/create", method = RequestMethod.GET)
  public String viewFormOrangtua(Model model){
      
     model.addAttribute("user", new User());
     return "/user/orangtua/create";
  }
  
  @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
  @RequestMapping(value = {"/user/orangtua/save"}, method = RequestMethod.POST)
  public String saveOrangtua(@ModelAttribute("user") User user, 
		   Assigment assigment,
		   Jabatan jabatan,
		   final RedirectAttributes redirectAttributes) {
	   
	   if (userService.saveUser(user) != null) {
          redirectAttributes.addFlashAttribute("save", "success");
      } else {
          redirectAttributes.addFlashAttribute("save", "unsuccess");
      }
	   
	   user.setActive(true);
	   user.setUsername(user.getUserId());
	   user.setPassword(new BCryptPasswordEncoder().encode("2016"));
	   jabatan.setJabatanId("c33d618b-a759-4d2f-b5d0-bf5bc5c26d71");
	   assigment.setIdUser(user);
	   assigment.setIdJabatan(jabatan);
	   
	   assigmentService.saveAssigment(assigment);

      return "redirect:/user/orangtua";
  }
  
  @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
  @RequestMapping(value = "/user/orangtua/{operation}/{userId}", method = RequestMethod.GET)
  public String editRemoveOrangtua(@PathVariable("operation") String operation,
          @PathVariable("userId") String userId, final RedirectAttributes redirectAttributes,
          Model model) {
      if (operation.equals("delete")) {
          if (userService.deleteUser(userId)) {
              redirectAttributes.addFlashAttribute("deletion", "success");
          } else {
              redirectAttributes.addFlashAttribute("deletion", "unsuccess");
          }
      } else if (operation.equals("edit")) {
          User user = userService.findUser(userId);
          if (user != null) {
              model.addAttribute("user", user);
              return "/user/orangtua/edit";
          } else {
              redirectAttributes.addFlashAttribute("status", "notfound");
          }
      } else if (operation.equals("view")) {
          User user = userService.findUser(userId);
          if (user != null) {
              model.addAttribute("user", user);
              return "/user/orangtua/view";
          } else {
              redirectAttributes.addFlashAttribute("status", "notfound");
          }
      }

      return "redirect:/user/orangtua";
  }
 
 @PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
 @RequestMapping(value = "/user/orangtua/update/{userId}", method = RequestMethod.POST)
 public String updateOrangtua(@PathVariable("userId") String userId, 
		    User user,    		
  		final RedirectAttributes redirectAttributes){
  	   	
  	user.setUserId(userId);
  	    	
  	if (userService.saveUser(user) != null) {
          redirectAttributes.addFlashAttribute("edit", "success");
      } else {
          redirectAttributes.addFlashAttribute("edit", "unsuccess");
      }
  	
  	return "redirect:/user/orangtua";
  }
 
 
 /*  
  * Controller Untuk Jabatan RW
  * 
  */
 
 @PreAuthorize("hasAnyAuthority('Admin')") 
 @RequestMapping(value = {"/user/rw"}, method = RequestMethod.GET)
 public String indexRw(Model model) {
     
     model.addAttribute("allRws", (ArrayList<User>) userService.getAllRws());
     return "/user/rw/index";
 }
 
 @PreAuthorize("hasAnyAuthority('Admin')") 
 @RequestMapping(value = "/user/rw/create", method = RequestMethod.GET)
 public String viewFormRw(Model model){
     
    model.addAttribute("user", new User());
    return "/user/rw/create";
 }
 
 @PreAuthorize("hasAnyAuthority('Admin')") 
 @RequestMapping(value = {"/user/rw/save"}, method = RequestMethod.POST)
 public String saveRw(@ModelAttribute("user") User user, 
		   Assigment assigment,
		   Jabatan jabatan,
		   final RedirectAttributes redirectAttributes) {
	   
	   if (userService.saveUser(user) != null) {
         redirectAttributes.addFlashAttribute("save", "success");
     } else {
         redirectAttributes.addFlashAttribute("save", "unsuccess");
     }
	   
	   user.setActive(true);
	   user.setUsername(user.getUserId());
	   user.setPassword(new BCryptPasswordEncoder().encode("2016"));
	   jabatan.setJabatanId("6b651276-f046-4ce9-b6d8-14bfeb42591c");
	   assigment.setIdUser(user);
	   assigment.setIdJabatan(jabatan);
	   
	   assigmentService.saveAssigment(assigment);

     return "redirect:/user/rw";
 }
 
 @PreAuthorize("hasAnyAuthority('Admin')") 
 @RequestMapping(value = "/user/rw/{operation}/{userId}", method = RequestMethod.GET)
 public String editRemoveRw(@PathVariable("operation") String operation,
         @PathVariable("userId") String userId, final RedirectAttributes redirectAttributes,
         Model model) {
     if (operation.equals("delete")) {
         if (userService.deleteUser(userId)) {
             redirectAttributes.addFlashAttribute("deletion", "success");
         } else {
             redirectAttributes.addFlashAttribute("deletion", "unsuccess");
         }
     } else if (operation.equals("edit")) {
         User user = userService.findUser(userId);
         if (user != null) {
             model.addAttribute("user", user);
             return "/user/rw/edit";
         } else {
             redirectAttributes.addFlashAttribute("status", "notfound");
         }
     } else if (operation.equals("view")) {
         User user = userService.findUser(userId);
         if (user != null) {
             model.addAttribute("user", user);
             return "/user/rw/view";
         } else {
             redirectAttributes.addFlashAttribute("status", "notfound");
         }
     }

     return "redirect:/user/rw";
 }

 @PreAuthorize("hasAnyAuthority('Admin')") 
@RequestMapping(value = "/user/rw/update/{userId}", method = RequestMethod.POST)
public String updateRw(@PathVariable("userId") String userId, 
		    User user,    		
 		final RedirectAttributes redirectAttributes){
 	   	
 	user.setUserId(userId);
 	    	
 	if (userService.saveUser(user) != null) {
         redirectAttributes.addFlashAttribute("edit", "success");
     } else {
         redirectAttributes.addFlashAttribute("edit", "unsuccess");
     }
 	
 	return "redirect:/user/rw";
 }

/*  
 * Controller Untuk Jabatan Bidan
 * 
 */

@PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
@RequestMapping(value = {"/user/bidan"}, method = RequestMethod.GET)
public String indexBidan(Model model) {
    
    model.addAttribute("allBidans", (ArrayList<User>) userService.getAllBidans());
    return "/user/bidan/index";
}

@PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
@RequestMapping(value = "/user/bidan/create", method = RequestMethod.GET)
public String viewFormBidan(Model model){
    
   model.addAttribute("user", new User());
   return "/user/bidan/create";
}

@PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
@RequestMapping(value = {"/user/bidan/save"}, method = RequestMethod.POST)
public String saveBidan(@ModelAttribute("user") User user, 
		   Assigment assigment,
		   Jabatan jabatan,
		   final RedirectAttributes redirectAttributes) {
	   
	   if (userService.saveUser(user) != null) {
        redirectAttributes.addFlashAttribute("save", "success");
    } else {
        redirectAttributes.addFlashAttribute("save", "unsuccess");
    }
	   user.setActive(true);
	   user.setUsername(user.getUserId());
	   user.setPassword(new BCryptPasswordEncoder().encode("2016"));	   
	   jabatan.setJabatanId("9ce32cfb-67f7-4410-93a1-3f15282a9811");
	   assigment.setIdUser(user);
	   assigment.setIdJabatan(jabatan);
	   
	   assigmentService.saveAssigment(assigment);

    return "redirect:/user/bidan";
}

@PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
@RequestMapping(value = "/user/bidan/{operation}/{userId}", method = RequestMethod.GET)
public String editRemoveBidan(@PathVariable("operation") String operation,
        @PathVariable("userId") String userId, final RedirectAttributes redirectAttributes,
        Model model) {
    if (operation.equals("delete")) {
        if (userService.deleteUser(userId)) {
            redirectAttributes.addFlashAttribute("deletion", "success");
        } else {
            redirectAttributes.addFlashAttribute("deletion", "unsuccess");
        }
    } else if (operation.equals("edit")) {
        User user = userService.findUser(userId);
        if (user != null) {
            model.addAttribute("user", user);
            return "/user/bidan/edit";
        } else {
            redirectAttributes.addFlashAttribute("status", "notfound");
        }
    } else if (operation.equals("view")) {
        User user = userService.findUser(userId);
        if (user != null) {
            model.addAttribute("user", user);
            return "/user/bidan/view";
        } else {
            redirectAttributes.addFlashAttribute("status", "notfound");
        }
    }

    return "redirect:/user/bidan";
}

@PreAuthorize("hasAnyAuthority('Admin', 'Rw')")
@RequestMapping(value = "/user/bidan/update/{userId}", method = RequestMethod.POST)
public String updateBidan(@PathVariable("userId") String userId, 
		    User user,    		
		final RedirectAttributes redirectAttributes){
	   	
	user.setUserId(userId);
	    	
	if (userService.saveUser(user) != null) {
        redirectAttributes.addFlashAttribute("edit", "success");
    } else {
        redirectAttributes.addFlashAttribute("edit", "unsuccess");
    }
	
	
	return "redirect:/user/bidan";
}

}

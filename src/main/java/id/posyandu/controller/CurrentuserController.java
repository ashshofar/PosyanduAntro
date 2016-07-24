package id.posyandu.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import id.posyandu.service.UserService;

//@ControllerAdvice
public class CurrentuserController {
	
	@Autowired
	UserService userService;
	
	@ModelAttribute("infoUser")
	public Map<String, Object> getCurrentUser(Principal principal){
		
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("currentRole", SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString());
		info.put("currentUser", SecurityContextHolder.getContext().getAuthentication().getName());
		
		String username = principal.getName();
		info.put("user", userService.findOneByUsername(username));
		
		
		return info;
		
		
		
	}
}

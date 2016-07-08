package id.posyandu.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class CurrentUser {
	
	@ModelAttribute("infoUser")
	public Map<String, Object> getCurrentUser(){
		
		Map<String, Object> info = new HashMap<String, Object>();
		info.put("currentRole", SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString());
		info.put("currentUser", SecurityContextHolder.getContext().getAuthentication().getName());
		//info.put("currentName", SecurityContextHolder.getContext().getAuthentication().getDetails());
		
		//model.addAttribute("infoUser", info);
		//model.addAllAttributes(info);
		return info;
		
		
		
	}
}

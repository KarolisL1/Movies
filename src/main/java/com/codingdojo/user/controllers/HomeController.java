package com.codingdojo.user.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.user.models.LoginUser;
import com.codingdojo.user.models.User;
import com.codingdojo.user.services.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	public HomeController(UserService userService) {
		this.userService = userService;
	};
	
	@GetMapping("/register")
	public String user_register_get(Model model) {
		model.addAttribute("user", new User());
		return "user_register";
	}
	
	@PostMapping("/register")
	public String user_register_post(
			@Valid @ModelAttribute("user") User user,
			BindingResult result,
			Model model,
			HttpSession session
			) 
	{
		if(result.hasErrors()) return "user_register";
		User created_user = userService.register(user, result);
		if(created_user == null) return "user_register";
		return "redirect:/login";
	}
	
	@GetMapping("/login")
	public String user_login_get(Model model)
	{
		model.addAttribute("user",new LoginUser());
		return "user_login";
	}
	
	@PostMapping("/login")
	public String user_login_post
	(
		@Valid @ModelAttribute("user") LoginUser user, 
        BindingResult result,
        Model model,
        HttpSession session	
	)
	{
		if(result.hasErrors()) return "user_login";
		User db_user=userService.login(user,result);
		if(db_user == null) return "user_login";
		session.setAttribute("user_id", db_user.getId());
		return "redirect:/";
	}
	
	@GetMapping("/")
	public String index(HttpSession session) {
		if(!userService.isLoggedIn(session)) return "redirect:/register";
		return "redirect:/movies";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		userService.Logout(session);
		return "redirect:/login";
	}
}

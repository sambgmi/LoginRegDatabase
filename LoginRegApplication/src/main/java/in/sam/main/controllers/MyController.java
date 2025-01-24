package in.sam.main.controllers;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.sam.main.entites.User;
import in.sam.main.services.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
public class MyController {
	@Autowired
	private UserService userservice;
	
	
	@GetMapping("/regPage")
	public String openRegpage(Model model) {
		
		model.addAttribute("user",new User());
		return "register";
	}
	@PostMapping("/regForm")
	public String submitFrom(@ModelAttribute("user") User user ,Model model) 
	{
	Boolean status =userservice.registerUser(user);
		if(status) {
			model.addAttribute("successMsg","User Registered SuccessFully");
		}else {
			model.addAttribute("errorsMsg","User Not Registered SuccessFully");
		}
		return "register";
	}
	
	@GetMapping("/loginPage")
	public String openLoginPage(Model model) {
		model.addAttribute("user",new User() );
		return "login";
	}
	
	@PostMapping("/loginForm")
	public String submitLogin(@ModelAttribute("user") User user,Model model) 
	{
		
	User validuser =userservice.loginHere(user.getEmail(),user.getPassword());
	if(validuser !=null) {	
		model.addAttribute("modelname",validuser.getName());
	return "profile";
	}
	else 
	{
	model.addAttribute("errorMsg","Wrong email or password Try Again");
	return "login";
	}

	
	}
	@GetMapping("/logout")
	public String logoutuser(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		
		return "login";
	}
	
}

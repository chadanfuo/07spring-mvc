package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {
	
	
	public LogoutController() {
		System.out.println("LogoutController");
	}
	
	@RequestMapping("/auth/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/index.jsp";
	}
	
/*	@RequestMapping("/auth/kkk")
	public String kkk(HttpSession session){
		
		return "redirect:/index.jsp";
	}*/
}

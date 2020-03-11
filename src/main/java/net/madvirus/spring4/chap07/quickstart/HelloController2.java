package net.madvirus.spring4.chap07.quickstart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController2 {
	@RequestMapping("/hello.do2")
	public String hello(Model model){
		model.addAttribute("greeting","æ»≥Á«œººø‰");
		return "hello";
	}
	
	
}

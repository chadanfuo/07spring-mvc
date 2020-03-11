package net.madvirus.spring4.chap07.quickstart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("/hello.do")
	public String hello(Model model){
		model.addAttribute("greeting","�ȳ��ϼ���");
		return "hello";
	}
	
	@RequestMapping("/hello-raw.do")
	public void hello(HttpServletResponse response) throws IOException{
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		PrintWriter writer =response.getWriter();
		writer.write("�ȳ��ϼ���");
		writer.flush();
	}
}

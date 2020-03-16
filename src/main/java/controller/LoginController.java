package controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.madvirus.spring4.chap07.auth.Auth;
import net.madvirus.spring4.chap07.auth.AuthenticationException;
import net.madvirus.spring4.chap07.auth.LoginCommand;
import net.madvirus.spring4.chap07.auth.LoginCommandValidator;
import service.Authenticator;



@Controller
@RequestMapping("/auth/login")
public class LoginController {
	
	private static final String LOGIN_FORM ="auth/loginForm";
	@Autowired
	private Authenticator authenticator;
	@RequestMapping(method=RequestMethod.GET)
	public String loginForm(LoginCommand loginCommand){
		return LOGIN_FORM;
	
	}
	
	public LoginController() {
		System.out.println("LoginController");
	}
	/*@RequestMapping("/auth/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/index.jsp";
	}*/
	
	@RequestMapping(method=RequestMethod.POST)
	public String login(@Valid LoginCommand loginCommand,Errors errors,
			HttpServletRequest request){
		if(errors.hasErrors()){return LOGIN_FORM;}
		try{
			Auth auth=authenticator.authenticate(loginCommand.getEmail(),loginCommand.getPassword());
			HttpSession session=request.getSession();
			session.setAttribute("auth", auth);
			return "redirect:/index.jsp";
		}catch (AuthenticationException ex) {
			errors.reject("invalidIdOrPassword");
			return LOGIN_FORM;
		}
	}
	@InitBinder
	protected void initeBinder(WebDataBinder binder){
		binder.setValidator(new LoginCommandValidator());
	}
	//xml로 하겠다 하면 있어야함
	public void setAuthenticator(Authenticator authenticator){
		this.authenticator=authenticator;
	}
}

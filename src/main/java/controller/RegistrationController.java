package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.madvirus.spring4.chap08.member.MemberRegistRequest;
import net.madvirus.spring4.chap08.member.MemberRegistValidator;
import service.MemberService;

@Controller
@RequestMapping("/member/regist")
public class RegistrationController {
	private static final String MEMBER_REGISTATION_FORM="member/registrationForm";
	@Autowired
	private MemberService memberService;
	@RequestMapping(method=RequestMethod.GET)
	public String form(@ModelAttribute("memberInfo") MemberRegistRequest memRegReq){
		return MEMBER_REGISTATION_FORM;
	}
//가입버튼을 누르면 가는곳
	@RequestMapping(method=RequestMethod.POST)
	public String regist(
			//@ModelAttribute이거로   registered.jsp에 ${memberInfo.name } 사용할수 있다.
			@ModelAttribute("memberInfo") MemberRegistRequest memRegReq,
			BindingResult bindingResult){
		new MemberRegistValidator().validate(memRegReq,bindingResult);
		if(bindingResult.hasErrors()){return MEMBER_REGISTATION_FORM;}
		memberService.registNewMember(memRegReq);
		return "member/registered";
	}
	public void setMemberService(MemberService memberService){
		this.memberService=memberService;
	}
}

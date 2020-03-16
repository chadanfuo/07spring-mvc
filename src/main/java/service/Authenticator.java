package service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.madvirus.spring4.chap07.auth.Auth;
import net.madvirus.spring4.chap07.auth.AuthenticationException;
import net.madvirus.spring4.chap08.member.MemberInfo;
@Component //∫Û¿∏∑Œ ∏∏µÎ
public class Authenticator {
	@Autowired
	private MemberService memberService;
	
	public Authenticator(){}
	
	public Authenticator(MemberService memberService){
		this.memberService=memberService;
	}
	public Auth authenticate(String email,String password){
		MemberInfo mi=memberService.getMemberInfoEmail(email);
		if(mi==null)
			throw new AuthenticationException();
		if(!mi.matchPassword(password))
			throw new AuthenticationException();
		
		return new Auth(mi.getId(),mi.getName());
	}
}

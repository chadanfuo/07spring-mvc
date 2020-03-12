package net.madvirus.spring4.chap08.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MemberService {
	private int nextMemberId=0;
	private Map<String,MemberInfo> memberMap= new HashMap<>();
	
	public  MemberService(){
		memberMap.put("m1",new MemberInfo("m1","�̻�ȭ","sanghwa@sanghwa.com","sanghwa",false,new Address()));
		memberMap.put("m2",new MemberInfo("m2","�迬��","yuna@yuna.com","yuna",false,new Address()));
		nextMemberId=3;
		
	}
	
	public void registNewMember(MemberRegistRequest memRegReq){
		MemberInfo mi =new MemberInfo("m"+nextMemberId,memRegReq.getName(),memRegReq.getEmail(),memRegReq.getPassword(),memRegReq.isAllowNoti(),memRegReq.getAddress());
		memberMap.put(mi.getId(),mi);
	}
	
	public MemberInfo getMemberInfo(String memberId){
		return memberMap.get(memberId);
	}
	public List<MemberInfo> getMembers(){
		return new ArrayList<MemberInfo>(memberMap.values());
	}
}


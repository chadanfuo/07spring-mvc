package net.madvirus.spring4.chap07.ac;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AclController {
	private AclService aclService;
	
	@RequestMapping("/acl/list")
	public String list(Model model){
		model.addAttribute("aclList",aclService.getAclList());
		return "acl/aclList";
	}
	
	public void setAclService(AclService aclService){
		this.aclService=aclService;
	}
}

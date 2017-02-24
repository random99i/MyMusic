package com.yc.mp.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.mp.entity.aUser;
import com.yc.mp.service.aUserService;

@Component
@RequestMapping("/auser")
@SessionAttributes("loginUser")
public class aUserHandler {
	
	@Autowired
	private aUserService aUserService;
	
	@RequestMapping("/login")
	public String login(aUser user,ModelMap map){
		user = aUserService.aUserlogin(user);
		System.out.println(user);
		if(user !=null){
			map.put("loginUser", user);
			return "redirect:/page/manage.jsp";
		}
		map.put("errorMsg","用户名或密码错误");
		return "forward:/page/login.jsp";
		
		
	}
	@RequestMapping("/checkphone")
	@ResponseBody
	public aUser checkphone(aUser user,String jbphone){
		aUser auser=new aUser(jbphone);
		user = aUserService.checkPhone(auser);
		return user;
	}
	
	@RequestMapping("/modifypwd")
	@ResponseBody
	public boolean modifypwd(aUser auser){
		LogManager.getLogger().debug(auser);
		return aUserService.modifyPwd(auser);
	}
	

}

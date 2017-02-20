package com.yc.mp.web.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.mp.entity.mUser;
import com.yc.mp.service.mUserService;

@Component
@RequestMapping("/muser")
@SessionAttributes("user")
public class mUserHandler {
	
	@Autowired
	private mUserService mUserService;
	
	@RequestMapping("/register")
	@ResponseBody
	public boolean register(mUser mUser){
		return mUserService.insertmUser(mUser);
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public boolean login(mUser mUser){
		mUser user = mUserService.findmUser(mUser);
		LogManager.getLogger().debug("登录用户 ==》"+user);
		if(user!=null){
			return true;
		}
		return false;
	}
	

}

package com.yc.mp.web.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.mp.entity.mUser;
import com.yc.mp.service.mUserService;

@Component
@RequestMapping("/muser")
public class mUserHandler {
	
	@Autowired
	private mUserService mUserService;
	
	@RequestMapping("/register")
	@ResponseBody
	public boolean register(String utel,String upwd){
		mUser mUser = new mUser(utel, upwd);
		return mUserService.insertmUser(mUser);
	}
	

}

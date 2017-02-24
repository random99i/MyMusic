package com.yc.mp.service.impl;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.mp.entity.aUser;
import com.yc.mp.mapper.aUserMapper;
import com.yc.mp.service.aUserService;

@Service("aUserService")
public class aUserServiceImpl implements aUserService {
	
	@Autowired
	private aUserMapper aUserMapper;

	@Override
	public aUser checkPhone(aUser auser) {
		LogManager.getLogger().debug(auser.toString());
		return aUserMapper.checkPhone(auser);
	}

	@Override
	public aUser aUserlogin(aUser aUser) {
		LogManager.getLogger().debug(aUser.toString());
		return aUserMapper.getAUser(aUser);
	}

	@Override
	public boolean modifyPwd(aUser auser) {
		int i = aUserMapper.updatePwd(auser);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}

}

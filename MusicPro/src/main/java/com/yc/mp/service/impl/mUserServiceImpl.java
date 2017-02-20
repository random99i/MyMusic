package com.yc.mp.service.impl;


import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.mp.entity.mUser;
import com.yc.mp.mapper.mUserMapper;
import com.yc.mp.service.mUserService;

@Service("mUserService")
public class mUserServiceImpl implements mUserService {
	
	@Autowired
	private mUserMapper mUserMapper;

	@Override
	public boolean insertmUser(mUser mUser) {
		int i = mUserMapper.addmUser(mUser);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public mUser findmUser(mUser mUser) {
		return mUserMapper.selectmUser(mUser);
	}

}

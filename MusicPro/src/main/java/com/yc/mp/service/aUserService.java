package com.yc.mp.service;

import com.yc.mp.entity.aUser;

public interface aUserService {

	aUser checkPhone(aUser auser);

	aUser aUserlogin(aUser user);

	boolean modifyPwd(aUser auser);

}

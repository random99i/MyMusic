package com.yc.mp.mapper;

import com.yc.mp.entity.aUser;

public interface aUserMapper {

	aUser getAUser(aUser aUser);

	aUser checkPhone(aUser auser);

	int updatePwd(aUser auser);

}

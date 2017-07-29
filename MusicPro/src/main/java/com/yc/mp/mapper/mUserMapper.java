package com.yc.mp.mapper;

import java.util.List;

import com.yc.mp.entity.Dynamic;
import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.mUser;

public interface mUserMapper {

	int addmUser(mUser mUser);

	mUser selectmUser(mUser mUser);

	mUser selectUtel(mUser mUser);

	mUser selectUname(mUser mUser);

	int modifyUname(mUser mUser);

	List<mUser> selectfollow(mUser mUser);

	List<mUser> selectfans(mUser mUser);

	int updatemUser(mUser mUser);

	mUser getmUser(mUser muser);

	mUser ismyfollow(String usid, String rusid);

	int insertfollow(String usid, String rusid);

	int deletefollow(String usid, String rusid);

	List<Dynamic> findDynamic(mUser mUser);

	int addDynamic(Dynamic dynamic);

	int delDynamic(Dynamic dynamic);

	PaginationBean<mUser> listAllUser(PaginationBean<mUser> bean);

	int archive(mUser mUser);

}

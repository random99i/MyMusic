package com.yc.mp.service;

import java.util.List;

import com.yc.mp.entity.Dynamic;
import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.mUser;

public interface mUserService {
	
	public boolean insertmUser(mUser mUser);

	public mUser findmUser(mUser mUser);

	public boolean findUtel(mUser mUser);

	public boolean findUname(mUser mUser);

	public boolean updateUname(mUser mUser);

	public List<mUser> findfollow(mUser mUser);

	public List<mUser> findfans(mUser mUser);

	public boolean modifymUser(mUser mUser);

	public mUser detailmUser(mUser muser);

	public boolean findfollow(String usid, String rusid);

	public boolean tofollow(String usid, String rusid);

	public boolean notfollow(String usid, String rusid);

	public List<Dynamic> findDynamic(mUser mUser);

	public boolean addDynamic(Dynamic dynamic);

	public boolean delDynamic(Dynamic dynamic);

	public PaginationBean<mUser> listAllmUser(PaginationBean<mUser> bean);

	public boolean archive(mUser mUser);

	public mUser refind(mUser mUser);

}

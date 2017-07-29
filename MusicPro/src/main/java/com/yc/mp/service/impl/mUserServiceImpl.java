package com.yc.mp.service.impl;


import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.mp.entity.Dynamic;
import com.yc.mp.entity.PaginationBean;
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

	@Override
	public boolean findUtel(mUser mUser) {
		mUser user = mUserMapper.selectUtel(mUser);
		if(user!=null){
			return true;
		}
		return false;
	}

	@Override
	public boolean findUname(mUser mUser) {
		mUser user = mUserMapper.selectUname(mUser);
		if(user!=null){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateUname(mUser mUser) {
		int i = mUserMapper.modifyUname(mUser);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<mUser> findfollow(mUser mUser) {
		return mUserMapper.selectfollow(mUser);
	}

	@Override
	public List<mUser> findfans(mUser mUser) {
		return mUserMapper.selectfans(mUser);
	}

	@Override
	public boolean modifymUser(mUser mUser) {
		int i = mUserMapper.updatemUser(mUser);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public mUser detailmUser(mUser muser) {
		return mUserMapper.getmUser(muser);
	}

	@Override
	public boolean findfollow(String usid, String rusid) {
		mUser muser = mUserMapper.ismyfollow(usid,rusid);
		if(muser!=null){
			return true;
		}
		return false;
	}

	@Override
	public boolean tofollow(String usid, String rusid) {
		int i = mUserMapper.insertfollow(usid,rusid);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean notfollow(String usid, String rusid) {
		int i = mUserMapper.deletefollow(usid,rusid);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<Dynamic> findDynamic(mUser mUser) {
		return mUserMapper.findDynamic(mUser);
	}

	@Override
	public boolean addDynamic(Dynamic dynamic) {
		return mUserMapper.addDynamic(dynamic)>0;
	}

	@Override
	public boolean delDynamic(Dynamic dynamic) {
		return mUserMapper.delDynamic(dynamic)>0;
	}

	@Override
	public PaginationBean<mUser> listAllmUser(PaginationBean<mUser> bean) {
		return mUserMapper.listAllUser(bean);
	}

	@Override
	public boolean archive(mUser mUser) {
		return mUserMapper.archive(mUser)>0;
	}

	@Override
	public mUser refind(mUser mUser) {
		return mUserMapper.selectUname(mUser);
	}

}

package com.yc.mp.web.handler;


import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yc.mp.entity.Dynamic;
import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.mUser;
import com.yc.mp.service.mUserService;
import com.yc.mp.util.DateUtil;
import com.yc.mp.util.ServletUtil;

@Component
@RequestMapping("/muser")
@SessionAttributes(names={"userinfo","selectinfo"})
public class mUserHandler {
	
	
	@Autowired
	private mUserService mUserService;
	
	@RequestMapping("/login")
	@ResponseBody
	public mUser login(mUser mUser,ModelMap map){
		mUser user = mUserService.findmUser(mUser);
		LogManager.getLogger().debug("登录用户 ==》"+user);
		if(user!=null){
			map.put("userinfo", user);
			return user;
		}else{
			return null;
		}
	}
	
	@RequestMapping("/refind")
	@ResponseBody
	public boolean refind(mUser mUser,ModelMap map){
		mUser user = mUserService.refind(mUser);
		map.put("userinfo", user);
		LogManager.getLogger().error("修改后的用户"+user);
		return true;
	}
	
	@RequestMapping("/logout")
	@ResponseBody
	public boolean logout(ModelMap map){
		map.put("userinfo", "");
		return true;
	}
	
	
	@RequestMapping("/register")
	@ResponseBody
	public boolean register(mUser mUser){
		return mUserService.insertmUser(mUser);
	}
	
	@RequestMapping("/isUtelExist")
	@ResponseBody
	public boolean isUtelExist(mUser mUser){
		return mUserService.findUtel(mUser);
	}
	
	@RequestMapping("/isUnameExist")
	@ResponseBody
	public boolean isUnameExist(mUser mUser){
		return mUserService.findUname(mUser);
	}
	
	@RequestMapping("/updateUname")
	@ResponseBody
	public boolean updateUname(mUser mUser){
		return mUserService.updateUname(mUser);
	}
	
	@RequestMapping("/findDynamic")
	@ResponseBody
	public List<Dynamic> findDynamic(mUser mUser){
		LogManager.getLogger().debug("查询到我的动态："+mUserService.findDynamic(mUser));
		return mUserService.findDynamic(mUser);
	}
	
	@RequestMapping("/findfollow")
	@ResponseBody
	public List<mUser> findfollow(mUser mUser){
		LogManager.getLogger().debug("查询到我的关注的信息："+mUserService.findfollow(mUser));
		return mUserService.findfollow(mUser);
	}
	
	@RequestMapping("/findfans")
	@ResponseBody
	public List<mUser> findfans(mUser mUser){
		LogManager.getLogger().debug("查询到我的粉丝的信息："+mUserService.findfans(mUser));
		return mUserService.findfans(mUser);
	}
	
	@RequestMapping("/modifyinfo")
	@ResponseBody
	public boolean modifyinfo(@RequestParam(name="upicdata",required=false)MultipartFile upicdata,mUser mUser){
		DateUtil util = new DateUtil();
		if(upicdata!=null && !upicdata.isEmpty()){
			try {
				File file=new File(ServletUtil.UPLOAD_DIR,upicdata.getOriginalFilename());
				upicdata.transferTo(file);
				mUser.setUpic("/"+ServletUtil.UPLOAD_DIR_NAME+"/"+upicdata.getOriginalFilename());
				LogManager.getLogger().debug("头像上传成功，上传地址为:"+file);
				LogManager.getLogger().debug(mUser);
			} catch (Exception e) {
				LogManager.getLogger().debug("头像上传失败：",e);	
			}
		}
		return mUserService.modifymUser(mUser);
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(mUser muser,ModelAndView model,HttpSession session){
		mUser loginuser = (mUser) session.getAttribute("userinfo");
		if(muser.getUsid().equals(loginuser.getUsid())){
			model.setViewName("page/person");
			return model;
		}else{
			mUser man= mUserService.detailmUser(muser);
			model.setViewName("page/detail");
			model.addObject("selectinfo", man);
			return model;
		}
	}
	
	
	@RequestMapping("/ismyfollow")
	@ResponseBody
	public boolean ismyfollow(String usid,String rusid){
		return mUserService.findfollow(usid,rusid);
	}
	
	@RequestMapping("/tofollow")
	@ResponseBody
	public boolean tofollow(String usid,String rusid){
		return mUserService.tofollow(usid,rusid);
	}
	
	@RequestMapping("/notfollow")
	@ResponseBody
	public boolean notfollow(String usid,String rusid){
		return mUserService.notfollow(usid,rusid);
	}
	
	@RequestMapping("/addDynamic")
	@ResponseBody
	public boolean addDynamic(Dynamic dynamic){
		Date date = new Date();
		dynamic.setD_date(new DateUtil().dateToStr(date));
		return mUserService.addDynamic(dynamic);
	}
	
	@RequestMapping("/delDynamic")
	@ResponseBody
	public boolean delDynamic(Dynamic dynamic){
		return mUserService.delDynamic(dynamic);
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<mUser> list(String page,String rows){
		PaginationBean<mUser> bean = new PaginationBean<mUser>();
		bean.setPageNum(Integer.parseInt(page));
		bean.setPageSize(Integer.parseInt(rows));
		PaginationBean<mUser> users = mUserService.listAllmUser(bean);
		return users;
	}
	
	@RequestMapping("/archive")
	@ResponseBody
	public boolean archive(mUser mUser){
		return mUserService.archive(mUser);
	}
	

}

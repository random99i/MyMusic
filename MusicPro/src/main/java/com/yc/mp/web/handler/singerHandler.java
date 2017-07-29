package com.yc.mp.web.handler;

import java.io.File;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.Singer;
import com.yc.mp.entity.Song;
import com.yc.mp.service.singerService;
import com.yc.mp.util.ServletUtil;

@Component
@RequestMapping("/singer")
@SessionAttributes(names={"singerinfo"})
public class singerHandler {
	
	@Autowired
	private singerService singerService;
	
	@RequestMapping("/gethot")
	@ResponseBody
	public List<Singer> gethot(){
		return singerService.getAllhot();
	}
	
	@RequestMapping("/getall")
	@ResponseBody
	public List<Singer> getAll(){
		return singerService.getAll();
	}
	
	@RequestMapping("/detail")
	@ResponseBody
	public ModelAndView detail(Singer singer,ModelAndView model){
		Singer ss = singerService.detailSinger(singer);
		model.setViewName("page/singer");
		model.addObject("singerinfo", ss);
		return model;
	}
	
	@RequestMapping("/selectzm")
	@ResponseBody
	public List<Singer> selectzm(Singer singer){
		System.out.println(singerService.findSinger(singer));
		return singerService.findSinger(singer);
	}
	
	@RequestMapping("/getsong")
	@ResponseBody
	public List<Song> getsong(Singer singer){
		return singerService.getsong(singer);
	}
	
	
	@RequestMapping("/opensong")
	@ResponseBody
	public List<Song> opensong(Song song){
		return singerService.opensong(song);
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<Singer> list(String page,String rows){
		PaginationBean<Singer> bean = new PaginationBean<Singer>();
		bean.setPageNum(Integer.parseInt(page));
		bean.setPageSize(Integer.parseInt(rows));
		PaginationBean<Singer> users = singerService.listAllSinger(bean);
		return users;
	}

	@RequestMapping("/addsong")
	@ResponseBody
	public boolean addsong(@RequestParam(name="link_urldata",required=false)MultipartFile link_urldata,
			@RequestParam(name="link_lrcdata",required=false)MultipartFile link_lrcdata,
			@RequestParam(name="coverdata",required=false)MultipartFile coverdata,Song song){
		if(link_urldata!=null && !link_urldata.isEmpty()){
			try {
				File file=new File(ServletUtil.UPLOAD_BACKDIR_Mp3,link_urldata.getOriginalFilename());
				link_urldata.transferTo(file);
				song.setLink_url("/"+ServletUtil.UPLOAD_BACKDIR_Mp3NAME+"/"+link_urldata.getOriginalFilename());
				LogManager.getLogger().debug("歌曲上传成功，上传地址为:"+file);
			} catch (Exception e) {
				LogManager.getLogger().debug("歌曲上传失败：",e);	
			}
		}
		if(link_lrcdata!=null && !link_lrcdata.isEmpty()){
			try {
				File file=new File(ServletUtil.UPLOAD_BACKDIR_Mp3,link_lrcdata.getOriginalFilename());
				link_lrcdata.transferTo(file);
				song.setLink_lrc("/"+ServletUtil.UPLOAD_BACKDIR_Mp3NAME+"/"+link_lrcdata.getOriginalFilename());
				LogManager.getLogger().debug("歌词上传成功，上传地址为:"+file);
			} catch (Exception e) {
				LogManager.getLogger().debug("歌词上传失败：",e);	
			}
		}
		if(coverdata!=null && !coverdata.isEmpty()){
			try {
				File file=new File(ServletUtil.UPLOAD_BACKDIR_Pic,coverdata.getOriginalFilename());
				coverdata.transferTo(file);
				song.setCover("/"+ServletUtil.UPLOAD_BACKDIR_PicNAME+"/"+coverdata.getOriginalFilename());
				LogManager.getLogger().debug("背景上传成功，上传地址为:"+file);
			} catch (Exception e) {
				LogManager.getLogger().debug("背景上传失败：",e);	
			}
		}
		return singerService.addSong(song);
	}

}

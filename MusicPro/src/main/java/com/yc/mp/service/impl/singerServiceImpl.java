package com.yc.mp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.Singer;
import com.yc.mp.entity.Song;
import com.yc.mp.mapper.singerMapper;
import com.yc.mp.service.singerService;

@Service("singerService")
public class singerServiceImpl implements singerService {
	
	@Autowired
	private singerMapper singerMapper;

	@Override
	public List<Singer> getAllhot() {
		return singerMapper.findAllhot();
	}

	@Override
	public Singer detailSinger(Singer singer) {
		return singerMapper.findSingerbyid(singer);
	}

	@Override
	public List<Singer> getAll() {
		return singerMapper.findAll();
	}

	@Override
	public List<Singer> findSinger(Singer singer) {
		return singerMapper.findSinger(singer);
	}

	@Override
	public List<Song> getsong(Singer singer) {
		return singerMapper.getsong(singer);
	}

	@Override
	public List<Song> opensong(Song song) {
		return singerMapper.opensong(song);
	}

	@Override
	public PaginationBean<Singer> listAllSinger(PaginationBean<Singer> bean) {
		return singerMapper.listAllSinger(bean);
	}

	@Override
	public boolean addSong(Song song) {
		return singerMapper.addSong(song)>0;
	}

}

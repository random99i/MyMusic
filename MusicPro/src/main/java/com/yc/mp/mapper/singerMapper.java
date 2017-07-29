package com.yc.mp.mapper;

import java.util.List;

import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.Singer;
import com.yc.mp.entity.Song;

public interface singerMapper {

	List<Singer> findAllhot();

	Singer findSingerbyid(Singer singer);

	List<Singer> findAll();

	List<Singer> findSinger(Singer singer);

	List<Song> getsong(Singer singer);

	List<Song> opensong(Song song);

	PaginationBean<Singer> listAllSinger(PaginationBean<Singer> bean);

	int addSong(Song song);

}

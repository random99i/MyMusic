package com.yc.mp.service;

import java.util.List;

import com.yc.mp.entity.PaginationBean;
import com.yc.mp.entity.Singer;
import com.yc.mp.entity.Song;

public interface singerService {

	List<Singer> getAllhot();

	Singer detailSinger(Singer singer);

	List<Singer> getAll();

	List<Singer> findSinger(Singer singer);

	List<Song> getsong(Singer singer);

	List<Song> opensong(Song song);

	PaginationBean<Singer> listAllSinger(PaginationBean<Singer> bean);

	boolean addSong(Song song);

}

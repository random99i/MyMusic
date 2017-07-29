package com.yc.mp.entity;

public class Song {

	private Integer so_id;
	private String name;
	private Integer so_rid;
	private String singer;
	private String album;
	private String type;
	private String cover;
	private String link_url;
	private String link_lrc;
	private Integer so_click;

	public Song() {
		// TODO Auto-generated constructor stub
	}


	public Song(Integer so_id, String name, Integer so_rid, String singer, String album, String type, String cover,
			String link_url, String link_lrc, Integer so_click) {
		super();
		this.so_id = so_id;
		this.name = name;
		this.so_rid = so_rid;
		this.singer = singer;
		this.album = album;
		this.type = type;
		this.cover = cover;
		this.link_url = link_url;
		this.link_lrc = link_lrc;
		this.so_click = so_click;
	}


	public Integer getSo_id() {
		return so_id;
	}

	public void setSo_id(Integer so_id) {
		this.so_id = so_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSo_rid() {
		return so_rid;
	}

	public void setSo_rid(Integer so_rid) {
		this.so_rid = so_rid;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getLink_url() {
		return link_url;
	}

	public void setLink_url(String link_url) {
		this.link_url = link_url;
	}

	public String getLink_lrc() {
		return link_lrc;
	}

	public void setLink_lrc(String link_lrc) {
		this.link_lrc = link_lrc;
	}

	public Integer getSo_click() {
		return so_click;
	}

	public void setSo_click(Integer so_click) {
		this.so_click = so_click;
	}

	public String getAlbum() {
		return album;
	}


	public void setAlbum(String album) {
		this.album = album;
	}


	@Override
	public String toString() {
		return "Song [so_id=" + so_id + ", name=" + name + ", so_rid=" + so_rid + ", singer=" + singer + ", album="
				+ album + ", type=" + type + ", cover=" + cover + ", link_url=" + link_url + ", link_lrc=" + link_lrc
				+ ", so_click=" + so_click + "]";
	}



	
	
}
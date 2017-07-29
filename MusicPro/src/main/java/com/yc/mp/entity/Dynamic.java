package com.yc.mp.entity;

public class Dynamic {

	private Integer d_id; 
	private Integer d_usid;
	private String d_thing;
	private String d_date; 
	
	public Dynamic() {
		// TODO Auto-generated constructor stub
	}

	public Dynamic(Integer d_id, Integer d_usid, String d_thing, String d_date) {
		super();
		this.d_id = d_id;
		this.d_usid = d_usid;
		this.d_thing = d_thing;
		this.d_date = d_date;
	}

	public Integer getD_id() {
		return d_id;
	}

	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}

	public Integer getD_usid() {
		return d_usid;
	}

	public void setD_usid(Integer d_usid) {
		this.d_usid = d_usid;
	}

	public String getD_thing() {
		return d_thing;
	}

	public void setD_thing(String d_thing) {
		this.d_thing = d_thing;
	}

	public String getD_date() {
		return d_date;
	}

	public void setD_date(String d_date) {
		this.d_date = d_date;
	}

	@Override
	public String toString() {
		return "Dynamic [d_id=" + d_id + ", d_usid=" + d_usid + ", d_thing=" + d_thing + ", d_date=" + d_date + "]";
	}
	
	
}

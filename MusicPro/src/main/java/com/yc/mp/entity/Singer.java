package com.yc.mp.entity;

public class Singer {

	private Integer s_id;
	private String s_name;
	private String s_show;
	private Integer s_hot;
	private String s_zm;
	private String s_pic;
	
	public Singer() {
		// TODO Auto-generated constructor stub
	}
	
	public Singer(Integer s_id, String s_name, String s_show, Integer s_hot, String s_zm, String s_pic) {
		super();
		this.s_id = s_id;
		this.s_name = s_name;
		this.s_show = s_show;
		this.s_hot = s_hot;
		this.s_zm = s_zm;
		this.s_pic = s_pic;
	}



	public Integer getS_id() {
		return s_id;
	}

	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_show() {
		return s_show;
	}

	public void setS_show(String s_show) {
		this.s_show = s_show;
	}

	public Integer getS_hot() {
		return s_hot;
	}

	public void setS_hot(Integer s_hot) {
		this.s_hot = s_hot;
	}

	public String getS_zm() {
		return s_zm;
	}

	public void setS_zm(String s_zm) {
		this.s_zm = s_zm;
	}

	public String getS_pic() {
		return s_pic;
	}

	public void setS_pic(String s_pic) {
		this.s_pic = s_pic;
	}



	@Override
	public String toString() {
		return "Singer [s_id=" + s_id + ", s_name=" + s_name + ", s_show=" + s_show + ", s_hot=" + s_hot + ", s_zm="
				+ s_zm + ", s_pic=" + s_pic + "]";
	}

	
}

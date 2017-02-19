package com.yc.mp.entity;

import java.util.Date;

public class mUser {
	private Integer usid;
	private String uname;
	private String utel;
	private String upwd;
	private String unote;
	private String usex;
	private Date ubri;
	private String uaddr;
	private String upic;

	public mUser(String utel, String upwd) {
		super();
		this.utel = utel;
		this.upwd = upwd;
	}

	public mUser() {
		// TODO Auto-generated constructor stub
	}

	public Integer getUsid() {
		return usid;
	}

	public void setUsid(Integer usid) {
		this.usid = usid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUtel() {
		return utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUnote() {
		return unote;
	}

	public void setUnote(String unote) {
		this.unote = unote;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public Date getUbri() {
		return ubri;
	}

	public void setUbri(Date ubri) {
		this.ubri = ubri;
	}

	public String getUaddr() {
		return uaddr;
	}

	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}

	public String getUpic() {
		return upic;
	}

	public void setUpic(String upic) {
		this.upic = upic;
	}

	@Override
	public String toString() {
		return "mUser [usid=" + usid + ", uname=" + uname + ", utel=" + utel + ", upwd=" + upwd + ", unote=" + unote
				+ ", usex=" + usex + ", ubri=" + ubri + ", uaddr=" + uaddr + ", upic=" + upic + "]";
	}

}

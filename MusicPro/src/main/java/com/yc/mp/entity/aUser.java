package com.yc.mp.entity;

public class aUser {
	private int id;
	private String username;
	private String password;
	private String jbphone;
	
	
	public aUser( String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	
	public aUser(String jbphone) {
		this.jbphone = jbphone;
	}


	public aUser() {
	}

	public aUser(int id, String username, String password, String jbphone) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.jbphone = jbphone;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	

	public String getJbphone() {
		return jbphone;
	}


	public void setJbphone(String jbphone) {
		this.jbphone = jbphone;
	}


	@Override
	public String toString() {
		return "aUser [id=" + id + ", username=" + username + ", password="
				+ password + ", jbphone=" + jbphone + "]";
	}


	
	
	
}

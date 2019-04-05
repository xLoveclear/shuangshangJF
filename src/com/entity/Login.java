package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseLogin")
public class Login{

	// Fields

	private String id;
	private String loginid;
	private String pass;
	private String jami;
	private String email;
	private String lasttime;
	private String ip;
	private String userfj;
	public String getUserfj() {
		return userfj;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLoginid() {
		return loginid;
	}
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getJami() {
		return jami;
	}
	public void setJami(String jami) {
		this.jami = jami;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLasttime() {
		return lasttime;
	}
	public void setLasttime(String lasttime) {
		this.lasttime = lasttime;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}

	
	

	
}
package com.entity;


import org.apache.ibatis.type.Alias;

@Alias("BaseUser")
public  class User{

	// Fields

	private String id;
	private String name;
	private String phone;
	private String flid;
	private String qiye;
	private Integer jifen;
	private String fjid;
	private String userfj;
	private String loginid;

	// Constructors


	// Property accessors
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFlid() {
		return this.flid;
	}

	public void setFlid(String flid) {
		this.flid = flid;
	}

	public String getQiye() {
		return this.qiye;
	}

	public void setQiye(String qiye) {
		this.qiye = qiye;
	}

	public Integer getJifen() {
		return this.jifen;
	}

	public void setJifen(Integer jifen) {
		this.jifen = jifen;
	}

	public String getFjid() {
		return this.fjid;
	}

	public void setFjid(String fjid) {
		this.fjid = fjid;
	}

	public String getUserfj() {
		return this.userfj;
	}

	public void setUserfj(String userfj) {
		this.userfj = userfj;
	}

	public String getLoginid() {
		return this.loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

}
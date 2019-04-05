package com.entity;



import org.apache.ibatis.type.Alias;

/**
 * PinglunId entity. @author MyEclipse Persistence Tools
 */
@Alias("BasePinglun")
public class Pinglun extends BaseEntity{

	// Fields

	private String id;
	private String userid;
	private String duixiang;
	private String pltable;
	private String pltime;
	private String plnr;
	private String bplid;

	// Constructors

	/** default constructor */
	public Pinglun() {
	}

	/** full constructor */
	public Pinglun(String id, String userid, String duixiang, String pltable,
			String pltime, String plnr, String bplid) {
		this.id = id;
		this.userid = userid;
		this.duixiang = duixiang;
		this.pltable = pltable;
		this.pltime = pltime;
		this.plnr = plnr;
		this.bplid = bplid;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDuixiang() {
		return this.duixiang;
	}

	public void setDuixiang(String duixiang) {
		this.duixiang = duixiang;
	}

	public String getPltable() {
		return this.pltable;
	}

	public void setPltable(String pltable) {
		this.pltable = pltable;
	}

	public String getPltime() {
		return this.pltime;
	}

	public void setPltime(String pltime) {
		this.pltime = pltime;
	}

	public String getPlnr() {
		return this.plnr;
	}

	public void setPlnr(String plnr) {
		this.plnr = plnr;
	}

	public String getBplid() {
		return this.bplid;
	}

	public void setBplid(String bplid) {
		this.bplid = bplid;
	}

	

}
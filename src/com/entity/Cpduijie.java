package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * AbstractCpduijie entity provides the base persistence definition of the
 * Cpduijie entity. @author MyEclipse Persistence Tools
 */
@Alias("BaseCpduijie")
public class Cpduijie extends BaseEntity{

	// Fields

	private String id;
	private String userid;
	private String cpxinxi;
	private String diantime;
	private Integer dianstatic;

	// Constructors

	/** default constructor */
	public Cpduijie() {
	}

	/** full constructor */
	public Cpduijie(String userid, String cpxinxi, String diantime,
			Integer dianstatic) {
		this.userid = userid;
		this.cpxinxi = cpxinxi;
		this.diantime = diantime;
		this.dianstatic = dianstatic;
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

	public String getCpxinxi() {
		return this.cpxinxi;
	}

	public void setCpxinxi(String cpxinxi) {
		this.cpxinxi = cpxinxi;
	}

	public String getDiantime() {
		return this.diantime;
	}

	public void setDiantime(String diantime) {
		this.diantime = diantime;
	}

	public Integer getDianstatic() {
		return this.dianstatic;
	}

	public void setDianstatic(Integer dianstatic) {
		this.dianstatic = dianstatic;
	}

}
package com.entity;


import org.apache.ibatis.type.Alias;

/**
 * DianzanId entity. @author MyEclipse Persistence Tools
 */
@Alias("BaseDianzan")
public class Dianzan extends BaseEntity{

	// Fields

	private String id;
	private String userid;
	private String dzdxbianhao;
	private String dztable;
	private String dztime;

	// Constructors

	/** default constructor */
	public Dianzan() {
	}

	/** full constructor */
	public Dianzan(String id, String userid, String dzdxbianhao,
			String dztable, String dztime) {
		this.id = id;
		this.userid = userid;
		this.dzdxbianhao = dzdxbianhao;
		this.dztable = dztable;
		this.dztime = dztime;
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

	public String getDzdxbianhao() {
		return this.dzdxbianhao;
	}

	public void setDzdxbianhao(String dzdxbianhao) {
		this.dzdxbianhao = dzdxbianhao;
	}

	public String getDztable() {
		return this.dztable;
	}

	public void setDztable(String dztable) {
		this.dztable = dztable;
	}

	public String getDztime() {
		return this.dztime;
	}

	public void setDztime(String dztime) {
		this.dztime = dztime;
	}

	
}
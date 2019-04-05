package com.entity;


import org.apache.ibatis.type.Alias;

/**
 * AbstractYhhyguanxi entity provides the base persistence definition of the
 * Yhhyguanxi entity. @author MyEclipse Persistence Tools
 */
@Alias("BaseYhhyguanxi")
public class Yhhyguanxi extends BaseEntity{

	// Fields

	private String id;
	private String yhhybianhao;
	private String yhid;
	private String yhflid;

	// Constructors

	/** default constructor */
	public Yhhyguanxi() {
	}

	/** full constructor */
	public Yhhyguanxi(String yhhybianhao, String yhid, String yhflid) {
		this.yhhybianhao = yhhybianhao;
		this.yhid = yhid;
		this.yhflid = yhflid;
	}

	// Property accessors
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getYhhybianhao() {
		return this.yhhybianhao;
	}

	public void setYhhybianhao(String yhhybianhao) {
		this.yhhybianhao = yhhybianhao;
	}

	public String getYhid() {
		return this.yhid;
	}

	public void setYhid(String yhid) {
		this.yhid = yhid;
	}

	public String getYhflid() {
		return this.yhflid;
	}

	public void setYhflid(String yhflid) {
		this.yhflid = yhflid;
	}

}
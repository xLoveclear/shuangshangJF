package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseXinwencx")
public  class Xinwencx {

	// Fields

	private String id;
	private String title;
	private String fbtime;
	private String fbren;
	private String xinwennr;
	private String fmtupian;
	private String xwlmbianhao;
	private Integer liulanshu;
	private Integer dianzanzd;
	private Integer plziduan;

	// Constructors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getFbtime() {
		return this.fbtime;
	}

	public void setFbtime(String fbtime) {
		this.fbtime = fbtime;
	}

	public String getFbren() {
		return this.fbren;
	}

	public void setFbren(String fbren) {
		this.fbren = fbren;
	}

	public String getXinwennr() {
		return this.xinwennr;
	}

	public void setXinwennr(String xinwennr) {
		this.xinwennr = xinwennr;
	}

	public String getFmtupian() {
		return this.fmtupian;
	}

	public void setFmtupian(String fmtupian) {
		this.fmtupian = fmtupian;
	}

	public String getXwlmbianhao() {
		return this.xwlmbianhao;
	}

	public void setXwlmbianhao(String xwlmbianhao) {
		this.xwlmbianhao = xwlmbianhao;
	}

	public Integer getLiulanshu() {
		return this.liulanshu;
	}

	public void setLiulanshu(Integer liulanshu) {
		this.liulanshu = liulanshu;
	}

	public Integer getDianzanzd() {
		return this.dianzanzd;
	}

	public void setDianzanzd(Integer dianzanzd) {
		this.dianzanzd = dianzanzd;
	}

	public Integer getPlziduan() {
		return this.plziduan;
	}

	public void setPlziduan(Integer plziduan) {
		this.plziduan = plziduan;
	}

}
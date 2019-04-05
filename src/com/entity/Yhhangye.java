package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseYhhangye")
public  class Yhhangye{

	// Fields
	private static final long serialVersionUID = 1L;
	private String id;
	private String mingcheng;
	private Integer zhuangtai;
	private String shangji;
	
	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMingcheng() {
		return this.mingcheng;
	}

	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}

	public Integer getZhuangtai() {
		return this.zhuangtai;
	}

	public void setZhuangtai(Integer zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public String getShangji() {
		return this.shangji;
	}

	public void setShangji(String shangji) {
		this.shangji = shangji;
	}

}
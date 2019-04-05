package com.entity;


import org.apache.ibatis.type.Alias;

@Alias("BaseFujian")
public  class Fujian{

	// Fields

	private String id;
	private String fjmc;
	private String fjwenjian;
	private String fjhouzhui;
	private String fjsize;
	private String fjurl;
	private String fjduourl;
	private String sctime;
	private Integer xiazaics;
	private Integer fjstatic;
	private String scren;//虚拟字段
	public void setScren(String scren) {
		this.scren = scren;
	}

	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getFjmc() {
		return this.fjmc;
	}

	public void setFjmc(String fjmc) {
		this.fjmc = fjmc;
	}

	
	public String getFjwenjian() {
		return this.fjwenjian;
	}

	public void setFjwenjian(String fjwenjian) {
		this.fjwenjian = fjwenjian;
	}

	
	public String getFjhouzhui() {
		return this.fjhouzhui;
	}

	public void setFjhouzhui(String fjhouzhui) {
		this.fjhouzhui = fjhouzhui;
	}


	public String getFjsize() {
		return this.fjsize;
	}

	public void setFjsize(String fjsize) {
		this.fjsize = fjsize;
	}


	public String getFjurl() {
		return this.fjurl;
	}

	public void setFjurl(String fjurl) {
		this.fjurl = fjurl;
	}


	public String getFjduourl() {
		return this.fjduourl;
	}

	public void setFjduourl(String fjduourl) {
		this.fjduourl = fjduourl;
	}


	public String getSctime() {
		return this.sctime;
	}

	public void setSctime(String sctime) {
		this.sctime = sctime;
	}


	public Integer getXiazaics() {
		return this.xiazaics;
	}

	public void setXiazaics(Integer xiazaics) {
		this.xiazaics = xiazaics;
	}


	public Integer getFjstatic() {
		return this.fjstatic;
	}

	public void setFjstatic(Integer fjstatic) {
		this.fjstatic = fjstatic;
	}

}
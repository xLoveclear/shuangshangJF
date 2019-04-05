package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseChanping")
public  class Chanping {

	// Fields

	private String id;
	private String tupian;
	private String title;
	private String shixian;
	private String jianjie;
	private String tiaojian;
	private String liucheng;
	private String lxwomen;
	private String cpfenlei;
	private Integer cpstatic;
	private Integer shcishu;
	private String shtime;
	private String bohuiyy;
	private String faburen;
	private String fabutime;
	private String aboutwomen;
	private String jine;
	public void setAboutwomen(String aboutwomen) {
		this.aboutwomen =aboutwomen;
	}
	public String getAboutwomen() {
		return aboutwomen;
	}
	public String getJine() {
		return jine;
	}
	public void setJine(String jine) {
		this.jine = jine;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTupian() {
		return tupian;
	}
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getShixian() {
		return shixian;
	}
	public void setShixian(String shixian) {
		this.shixian = shixian;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getTiaojian() {
		return tiaojian;
	}
	public void setTiaojian(String tiaojian) {
		this.tiaojian = tiaojian;
	}
	public String getLiucheng() {
		return liucheng;
	}
	public void setLiucheng(String liucheng) {
		this.liucheng = liucheng;
	}
	public String getLxwomen() {
		return lxwomen;
	}
	public void setLxwomen(String lxwomen) {
		this.lxwomen = lxwomen;
	}
	public String getCpfenlei() {
		return cpfenlei;
	}
	public void setCpfenlei(String cpfenlei) {
		this.cpfenlei = cpfenlei;
	}
	public Integer getCpstatic() {
		return cpstatic;
	}
	public void setCpstatic(Integer cpstatic) {
		this.cpstatic = cpstatic;
	}
	public Integer getShcishu() {
		return shcishu;
	}
	public void setShcishu(Integer shcishu) {
		this.shcishu = shcishu;
	}
	public String getShtime() {
		return shtime;
	}
	public void setShtime(String shtime) {
		this.shtime = shtime;
	}
	public String getBohuiyy() {
		return bohuiyy;
	}
	public void setBohuiyy(String bohuiyy) {
		this.bohuiyy = bohuiyy;
	}
	public String getFaburen() {
		return faburen;
	}
	public void setFaburen(String faburen) {
		this.faburen = faburen;
	}
	public String getFabutime() {
		return fabutime;
	}
	public void setFabutime(String fabutime) {
		this.fabutime = fabutime;
	}

	

}
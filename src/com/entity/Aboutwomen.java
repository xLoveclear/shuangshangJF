package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseAboutwomen")
public class Aboutwomen extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String jianjie;
	private String zhidu;
	private String tuandui;
	private String jiagou;
	private String lianxi;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getZhidu() {
		return zhidu;
	}
	public void setZhidu(String zhidu) {
		this.zhidu = zhidu;
	}
	public String getTuandui() {
		return tuandui;
	}
	public void setTuandui(String tuandui) {
		this.tuandui = tuandui;
	}
	public String getJiagou() {
		return jiagou;
	}
	public void setJiagou(String jiagou) {
		this.jiagou = jiagou;
	}
	public String getLianxi() {
		return lianxi;
	}
	public void setLianxi(String lianxi) {
		this.lianxi = lianxi;
	}
	
	
}

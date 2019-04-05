package com.entity;


import org.apache.ibatis.type.Alias;

@Alias("BaseFujiangx")
public class Fujiangx {

	// Fields

	private String id;
	private String fjid;
	private String fjnx;
	private String glid;
	private String gltable;
	private String scren;
	private String sctime;
	private String beizhu;
	private String url;

	
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getFjid() {
		return this.fjid;
	}

	public void setFjid(String fjid) {
		this.fjid = fjid;
	}


	public String getFjnx() {
		return this.fjnx;
	}

	public void setFjnx(String fjnx) {
		this.fjnx = fjnx;
	}


	public String getGlid() {
		return this.glid;
	}

	public void setGlid(String glid) {
		this.glid = glid;
	}


	public String getGltable() {
		return this.gltable;
	}

	public void setGltable(String gltable) {
		this.gltable = gltable;
	}


	public String getScren() {
		return this.scren;
	}

	public void setScren(String scren) {
		this.scren = scren;
	}


	public String getSctime() {
		return this.sctime;
	}

	public void setSctime(String sctime) {
		this.sctime = sctime;
	}


	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}


	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	

}
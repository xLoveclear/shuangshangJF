package com.entity;
import org.apache.ibatis.type.Alias;
@Alias("BaseXinwenlm")
public class Xinwenlm {

	// Fields

	private String id;
	private String lmname;
	private String cjtime;
	private String lmfm;
	private String url;


	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getLmname() {
		return this.lmname;
	}

	public void setLmname(String lmname) {
		this.lmname = lmname;
	}

	
	public String getCjtime() {
		return this.cjtime;
	}

	public void setCjtime(String cjtime) {
		this.cjtime = cjtime;
	}

	
	public String getLmfm() {
		return this.lmfm;
	}

	public void setLmfm(String lmfm) {
		this.lmfm = lmfm;
	}

	
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	

}
package com.entity;


import org.apache.ibatis.type.Alias;

/**
 * TousujianyiId entity. @author MyEclipse Persistence Tools
 */
@Alias("BaseTousujianyi")
public class Tousujianyi extends BaseEntity{

	// Fields

	private String id;
	private String tsren;
	private String tsneirong;
	private String beitsren;
	private Integer nimingok;
	private String tstime;
	private Integer tsstatic;

	// Constructors

	/** default constructor */
	public Tousujianyi() {
	}

	/** full constructor */
	public Tousujianyi(String id, String tsren, String tsneirong,
			String beitsren, Integer nimingok, String tstime, Integer tsstatic) {
		this.id = id;
		this.tsren = tsren;
		this.tsneirong = tsneirong;
		this.beitsren = beitsren;
		this.nimingok = nimingok;
		this.tstime = tstime;
		this.tsstatic = tsstatic;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTsren() {
		return this.tsren;
	}

	public void setTsren(String tsren) {
		this.tsren = tsren;
	}

	public String getTsneirong() {
		return this.tsneirong;
	}

	public void setTsneirong(String tsneirong) {
		this.tsneirong = tsneirong;
	}

	public String getBeitsren() {
		return this.beitsren;
	}

	public void setBeitsren(String beitsren) {
		this.beitsren = beitsren;
	}

	public Integer getNimingok() {
		return this.nimingok;
	}

	public void setNimingok(Integer nimingok) {
		this.nimingok = nimingok;
	}

	public String getTstime() {
		return this.tstime;
	}

	public void setTstime(String tstime) {
		this.tstime = tstime;
	}

	public Integer getTsstatic() {
		return this.tsstatic;
	}

	public void setTsstatic(Integer tsstatic) {
		this.tsstatic = tsstatic;
	}


}
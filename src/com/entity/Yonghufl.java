package com.entity;


import org.apache.ibatis.type.Alias;

/**
 * YonghuflId entity. @author MyEclipse Persistence Tools
 */
@Alias("BaseYonghufl")
public class Yonghufl extends BaseEntity {

	// Fields

	private String id;
	private String flmingcheng;
	private Integer flstatic;

	// Constructors

	/** default constructor */
	public Yonghufl() {
	}

	/** full constructor */
	public Yonghufl(String id, String flmingcheng, Integer flstatic) {
		this.id = id;
		this.flmingcheng = flmingcheng;
		this.flstatic = flstatic;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFlmingcheng() {
		return this.flmingcheng;
	}

	public void setFlmingcheng(String flmingcheng) {
		this.flmingcheng = flmingcheng;
	}

	public Integer getFlstatic() {
		return this.flstatic;
	}

	public void setFlstatic(Integer flstatic) {
		this.flstatic = flstatic;
	}

	
}
package com.service.base;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.common.mybatis.Page;
import com.repository.base.BaseDao;


public class BaseServiceImp<T> implements BaseService<T>{

	protected Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	protected BaseDao<T> baseDao;

	@Override
	public void insert(T o) {
		baseDao.insert(o);
	}

	@Override
	public void delete(T o) {
		baseDao.delete(o);
	}
	
	@Override
	public void deleteBatch(List<T> os){
		baseDao.deleteBatch(os);
	}

	@Override
	public void update(T o) {
		baseDao.update(o);
	}
	@Override
	public void updatefj(T o) {
		baseDao.updatefj(o);
	}

	@Override
	public List<T> find(T o) {
		return baseDao.find(o);
	}
	@Override
	public List<T> findALL(T o) {
		return baseDao.findALL(o);
	}

	@Override
	public List<T> findtouxiang(T o) {
		return baseDao.findtouxiang(o);
	}

	@Override
	public Page<T> findByPage(T o, Page<T> page) {
		page.setResults(baseDao.findByPage(o, page));
		return page;
	}

	@Override
	public int count(T o) {
		return baseDao.count(o);
	}

	@Override
	public Page<T> findPage(T o, Page<T> page) {
		page.setResults(baseDao.findPage(o, page));
		return page;
	}
}

package com.service;


import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Fujian;

import com.service.base.BaseServiceImp;

@Service("FujianService")
public class FujianServiceImp extends BaseServiceImp<Fujian> implements FujianService{
	@Override
	public void insert(Fujian f){
		f.setId(UuidUtil.get32UUID());
		super.insert(f);
	}
}

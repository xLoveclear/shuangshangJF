package com.service;


import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Aboutwomen;

import com.service.base.BaseServiceImp;

@Service("AboutwomenService")
public class AboutwomenServiceImp extends BaseServiceImp<Aboutwomen> implements AboutwomenService{
	@Override
	public void insert(Aboutwomen user){
		user.setId(UuidUtil.get32UUID());
		super.insert(user);
		
	}
}

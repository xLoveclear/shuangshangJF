package com.service;

import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Login;

import com.service.base.BaseServiceImp;

@Service("LoginService")
public class LoginServiceImp extends BaseServiceImp<Login> implements LoginService{
	@Override
	public void insert(Login o) {
		o.setId(UuidUtil.get32UUID());
		o.setJami("MD5");
		super.insert(o);
	}
}

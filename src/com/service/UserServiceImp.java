package com.service;


import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.User;

import com.service.base.BaseServiceImp;

@Service("UserService")
public class UserServiceImp extends BaseServiceImp<User> implements UserService{
	@Override
	public void insert(User user){
		user.setId(UuidUtil.get32UUID());
		super.insert(user);
		
	}
}

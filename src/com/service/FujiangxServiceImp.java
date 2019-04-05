package com.service;


import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Fujiangx;

import com.service.base.BaseServiceImp;

@Service("FujiangxService")
public class FujiangxServiceImp extends BaseServiceImp<Fujiangx> implements FujiangxService{
	@Override
	public void insert(Fujiangx o) {
		o.setId(UuidUtil.get32UUID());
		super.insert(o);
	}
}

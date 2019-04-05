package com.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.stereotype.Service;
import com.common.utils.base.UuidUtil;
import com.entity.Xinwencx;

import com.service.base.BaseServiceImp;

@Service("XinwencxService")
public class XinwencxServiceImp extends BaseServiceImp<Xinwencx> implements XinwencxService{
	@Override
	public void insert(Xinwencx o) {
		o.setId(UuidUtil.get32UUID());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		o.setFbtime(df.format(new Date()));
		super.insert(o);
	}
}

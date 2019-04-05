package com.service;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;

import com.common.utils.base.UuidUtil;
import com.entity.Chanping;

import com.service.base.BaseServiceImp;

@Service("ChanpingService")
public class ChanpingServiceImp extends BaseServiceImp<Chanping> implements ChanpingService{
	@Override
	public void insert(Chanping o) {
		o.setId(UuidUtil.get32UUID());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		o.setFabutime(df.format(new Date()));
		o.setCpstatic(0);
		o.setShcishu(0);
		super.insert(o);
	}
	
	@Override
	public void update(Chanping o) {
		
		super.update(o);
	}
	 
	
}

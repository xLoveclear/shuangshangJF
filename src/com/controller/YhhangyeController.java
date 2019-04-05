package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.controller.base.BaseController;
import com.entity.Yhhangye;
import com.service.yhhangyeService;

@Controller
public class YhhangyeController extends BaseController<Yhhangye>{
	@Autowired
	private yhhangyeService stu; 
	
	@RequestMapping("/testyhhangye")
	public String yhhangye(Model m,String id){
		Yhhangye yh=new Yhhangye();
		yh.setId(id);
		List<Yhhangye> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "pages/yhhyUpdate";
	}
	@RequestMapping("/wangye")
	public String wangye(Model m){
		return "table/table";
	}
	//添加数据功能（与修改数据同一页面）
	@RequestMapping("/insertwy")
	public String insertwy(Model m){
		return "pages/yhhangye";
	}
	
	@RequestMapping("/del")
	@ResponseBody
	public AjaxRes del(Yhhangye id){
		AjaxRes res=new AjaxRes();
		stu.delete(id);
		res.setResMsg("ok");
		return res;
	}
	
	@RequestMapping("/yhhangye")
	@ResponseBody
	public AjaxRes yhhangye(Yhhangye yh){
		AjaxRes res=new AjaxRes();
		stu.insert(yh);
		res.setResMsg("ok");
		return res;
	}
	@RequestMapping("/xiugai")
	@ResponseBody
	public AjaxRes xiugai(Yhhangye yh){
		AjaxRes res=new AjaxRes();
		stu.update(yh);
		res.setResMsg("ok");
		return res;
	}
	@RequestMapping("/findbypage")
	@ResponseBody
	public AjaxRes findbypage(Yhhangye yh,Page<Yhhangye> page){
		AjaxRes res=new AjaxRes();
		Page<Yhhangye> pages=stu.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/shanchuAllyh")
	@ResponseBody
	public AjaxRes shanchuAllyh(String item){//删除多行数据
		AjaxRes res=new AjaxRes();
		String[] strs = item.split(",");
		List<Yhhangye> list = new ArrayList<Yhhangye>();
		for (int i = 0; i < strs.length; i++) {
			Yhhangye user=new Yhhangye();
			String u= strs[i].replace("\"","").replace("\"","");
			user.setId(u);
			list.add(user);
		}
		stu.deleteBatch(list);
		res.setResMsg("多行删除成功");
		return res;
	}
}

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
import com.entity.Xinwencx;
import com.entity.Xinwenlm;
import com.service.XinwencxService;
import com.service.XinwenlmService;

@Controller
public class xinwenzxController extends BaseController<Xinwencx>{
	@Autowired
	private XinwencxService stu; 
	@Autowired
	private XinwenlmService stu2; 
	@RequestMapping("/testyXinwencx")
	public String Xinwencx(Model m,String id){//修改页面
		Xinwencx yh=new Xinwencx();
		yh.setId(id);
		List<Xinwencx> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "pages/xwzxinsert";
	}
	@RequestMapping("/Xinwencxwy")
	public String Xinwencxwy(Model m){
		return "table/xinwenzx";
	}
	//添加数据功能（与修改数据同一页面）
	@RequestMapping("/insertXinwencxwy")
	public String insertXinwencxwy(Model m){
		m.addAttribute("canshu", 0);
		return "pages/xwzxinsert";
	}
	
	@RequestMapping("/Xinwencxdel")
	@ResponseBody
	public AjaxRes Xinwencxdel(Xinwencx id){//删除
		AjaxRes res=new AjaxRes();
		stu.delete(id);
		res.setResMsg("删除成功");
		return res;
	}
	
	@RequestMapping("/Xinwencx")
	@ResponseBody
	public AjaxRes Xinwencx(Xinwencx yh){//添加
		AjaxRes res=new AjaxRes();
		stu.insert(yh);
		res.setResMsg("添加成功");
		return res;
	}
	@RequestMapping("/Xinwencxxiugai")
	@ResponseBody
	public AjaxRes Xinwencxxiugai(Xinwencx yh){//修改
		AjaxRes res=new AjaxRes();
		stu.update(yh);
		res.setResMsg("修改成功");
		return res;
	}
	@RequestMapping("/Xinwencxfindbypage")
	@ResponseBody
	public AjaxRes Xinwencxfindbypage(Xinwencx yh,Page<Xinwencx> page){//分页查询
		AjaxRes res=new AjaxRes();
		Page<Xinwencx> pages=stu.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/Xinwencxxialk")
	@ResponseBody
	public AjaxRes xialk(Xinwenlm s){//查询(显示在下拉框)新闻栏目
		AjaxRes res=new AjaxRes();
		List<Xinwenlm> pages=stu2.findALL(s);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/scxwAll")
	@ResponseBody
	public AjaxRes scAll(String item){//删除多行数据
		AjaxRes res=new AjaxRes();
		String[] strs = item.split(",");
		List<Xinwencx> list = new ArrayList<Xinwencx>();
		for (int i = 0; i < strs.length; i++) {
			Xinwencx user=new Xinwencx();
			String u= strs[i].replace("\"","").replace("\"","");
			user.setId(u);
			list.add(user);
		}
		stu.deleteBatch(list);
		res.setResMsg("多行删除成功");
		return res;
	}
}

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
public class xinwenlmController extends BaseController<Xinwenlm>{
	@Autowired
	private XinwenlmService stu2; 
	@RequestMapping("/testyXinwenlm")
	public String Xinwenlm(Model m,String id){//修改页面
		Xinwenlm yh=new Xinwenlm();
		yh.setId(id);
		List<Xinwenlm> list=stu2.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "pages/xwlminsert";
	}
	@RequestMapping("/xwlmwy")
	public String Xinwencxwy(Model m){
		return "table/xinwenlm";
	}
	//添加数据功能（与修改数据同一页面）
	@RequestMapping("/insertxwlmwy")
	public String insertxwlmwy(Model m){
		m.addAttribute("canshu", 0);
		return "pages/xwlminsert";
	}
	
	@RequestMapping("/xwlmdel")
	@ResponseBody
	public AjaxRes xwlmdel(Xinwenlm id){//删除
		AjaxRes res=new AjaxRes();
		stu2.delete(id);
		res.setResMsg("删除成功");
		return res;
	}
	
	@RequestMapping("/Xinwenlm")
	@ResponseBody
	public AjaxRes Xinwenlm(Xinwenlm yh){//添加
		AjaxRes res=new AjaxRes();
		stu2.insert(yh);
		res.setResMsg("添加成功");
		return res;
	}
	@RequestMapping("/xwlmxiugai")
	@ResponseBody
	public AjaxRes xwlmxiugai(Xinwenlm yh){//修改
		AjaxRes res=new AjaxRes();
		stu2.update(yh);
		res.setResMsg("修改成功");
		return res;
	}
	@RequestMapping("/xwlmfindbypage")
	@ResponseBody
	public AjaxRes xwlmfindbypage(Xinwenlm yh,Page<Xinwenlm> page){//分页查询
		AjaxRes res=new AjaxRes();
		Page<Xinwenlm> pages=stu2.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	@RequestMapping("/xwlmfindALL")
	@ResponseBody
	public AjaxRes xwlmfindALL(Xinwenlm yh){//全部查询
		AjaxRes res=new AjaxRes();
		List<Xinwenlm> pages=stu2.findALL(yh);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	
	@RequestMapping("/scxwlmAll")
	@ResponseBody
	public AjaxRes scxwlmAll(String item){//删除多行数据
		AjaxRes res=new AjaxRes();
		String[] strs = item.split(",");
		List<Xinwenlm> list = new ArrayList<Xinwenlm>();
		for (int i = 0; i < strs.length; i++) {
			Xinwenlm user=new Xinwenlm();
			String u= strs[i].replace("\"","").replace("\"","");
			user.setId(u);
			list.add(user);
		}
		stu2.deleteBatch(list);
		res.setResMsg("多行删除成功");
		return res;
	}
}

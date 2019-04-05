package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.controller.base.BaseController;
import com.entity.Fujian;
import com.entity.Fujiangx;
import com.entity.User;
import com.service.FujianService;
import com.service.FujiangxService;
import com.service.UserService;

@Controller
public class UserController extends BaseController<User>{
	@Autowired
	private UserService stu; 
	@Autowired
	private FujiangxService stu2; 
	@Autowired
	private FujianService stu3; 
	
	@RequestMapping("/findbypageuser")
	public ModelAndView findbypageuser(){
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("table/tableuser");
		return mv;
	}
	
	@RequestMapping("/testyUser")
	public String User(Model m,String id){//修改页面
		User yh=new User();
		yh.setId(id);
		List<User> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "pages/Userinsert";
	}
	@RequestMapping("/userwy")
	public String userwy(Model m){
		return "table/table";
	}
	//添加数据功能（与修改数据同一页面）
	@RequestMapping("/insertuserwy")
	public String insertuserwy(Model m){
		m.addAttribute("canshu", 0);
		return "pages/Userinsert";
	}
	
	@RequestMapping("/userdel")
	@ResponseBody
	public AjaxRes userdel(User id){//删除
		AjaxRes res=new AjaxRes();
		stu.delete(id);
		res.setResMsg("删除成功");
		return res;
	}
	
	@RequestMapping("/userfjdel")
	@ResponseBody
	public AjaxRes userfjdel(Fujiangx id){//删除附件
		AjaxRes res=new AjaxRes();
		stu2.delete(id);
		Fujian fj=new Fujian();
		fj.setScren(id.getScren());
		stu3.delete(fj);
		User user=new User();
		user.setId(id.getScren());
		stu.updatefj(user);
		res.setResMsg("删除成功");
		return res;
	}
	
	
	@RequestMapping("/user")
	@ResponseBody
	public AjaxRes user(User yh,Fujiangx o){//添加
		AjaxRes res=new AjaxRes();
		stu.insert(yh);
		stu2.insert(o);
		res.setResMsg("添加成功");
		return res;
	}
	@RequestMapping("/userxiugai")
	@ResponseBody
	public AjaxRes userxiugai(User yh,Fujiangx o){//修改
		AjaxRes res=new AjaxRes();
		stu.update(yh);
		stu2.insert(o);
		res.setResMsg("修改成功");
		return res;
	}
	@RequestMapping("/userfindbypage")
	@ResponseBody
	public AjaxRes userfindbypage(User yh,Page<User> page){//分页查询
		AjaxRes res=new AjaxRes();
		Page<User> pages=stu.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/xialk")
	@ResponseBody
	public AjaxRes xialk(User s){//查询(显示在下拉框)
		AjaxRes res=new AjaxRes();
		List<User> pages=stu.findALL(s);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/shanchuAll")
	@ResponseBody
	public AjaxRes shanchuAll(String item){//删除多行数据
		AjaxRes res=new AjaxRes();
		String[] strs = item.split(",");
		List<User> list = new ArrayList<User>();
		for (int i = 0; i < strs.length; i++) {
			User user=new User();
			String u= strs[i].replace("\"","").replace("\"","");
			user.setId(u);
			list.add(user);
		}
		stu.deleteBatch(list);
		res.setResMsg("多行删除成功");
		return res;
	}
}

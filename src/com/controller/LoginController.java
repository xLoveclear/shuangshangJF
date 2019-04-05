package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.controller.base.BaseController;
import com.entity.Login;
import com.entity.User;
import com.md5.Mdpass;
import com.service.LoginService;
import com.service.UserService;


@Controller
public class LoginController extends BaseController<Login>{ 
	@Autowired
	private LoginService stu; 
	@Autowired
	private UserService user; 
	@RequestMapping("/login")
	public String lowy(Model m){
		
		return "login";
	}
	
	
	@RequestMapping("/loginsss")
	@ResponseBody
	public AjaxRes login(HttpServletRequest session,Login id){//登录验证
		AjaxRes res=new AjaxRes();
		String s=id.getPass();
		
		String ss=Mdpass.string2MD5(s);//生成mn5字符串
		String jiami = Mdpass.convertMD5(ss);//将字符串加密
		id.setPass(jiami);
		List<Login> i=stu.find(id);
		if(i.size()>0){
			session.getSession().setAttribute("name",i.get(0));
			res.setResMsg("验证成功");
		}else{
			res.setResMsg("验证失败");
		}
		return res;
	}
	
	@RequestMapping("/loginout") 
	 public String logout(HttpServletRequest session) throws Exception{ 
	  //清除Session 
	 // session.invalidate(); 
	  session.getSession().invalidate();
	  return "redirect:login"; 
	 } 
	
	
	@RequestMapping("/loginzhuce")
	@ResponseBody
	public AjaxRes loginzhuce(Login can){//注册（需要md5加密）
		AjaxRes res=new AjaxRes();
		String s=can.getPass();
		try {
			if(s==""){
				res.setResMsg("请输入吗密码");
				return res;
			}
			if(can.getLoginid()==""){
				res.setResMsg("请输入吗用户名");
				return res;
			}
			List<Login> list=stu.find(can);
			if(list.size()>0){
				res.setResMsg("用户名重复");
			}else{
			String ss=Mdpass.string2MD5(s);
			can.setPass(Mdpass.convertMD5(ss));
			stu.insert(can);
			//注册成功后同时添加一个用户(信息不全面,需要用户登录后去完善资料)
			User us=new User();
			String usid=can.getLoginid();
			us.setName(usid);
			us.setLoginid(usid);
			user.insert(us);
			res.setResMsg("注册成功");
			}
		} catch (Exception e) {
			res.setResMsg("意外的错误");
		}
		return res;
	}

}

package com.controller.qd;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.entity.Aboutwomen;
import com.entity.Chanping;
import com.entity.Login;
import com.entity.User;
import com.entity.Xinwencx;
import com.md5.Mdpass;
import com.service.AboutwomenService;
import com.service.ChanpingService;
import com.service.LoginService;
import com.service.UserService;
import com.service.XinwencxService;
import com.service.XinwenlmService;
/*
 * 前端网页的控制器(用于处理网页的操作、比如登录注册查询........)
 */
@Controller
public class qdxwController{
	@Autowired
	private LoginService login; //登录
	@Autowired
	private XinwencxService stu;// 新闻资讯
	@Autowired
	private XinwenlmService stu1;// 新闻栏目
	@Autowired
	private UserService user; //用户
	@Autowired
	private ChanpingService cp; //产品
	@Autowired
	private AboutwomenService about; //关于我们
	/*
	 * 新闻资讯的查询
	 */
	@RequestMapping("/qdxwfindbypage")
	@ResponseBody
	public AjaxRes qdxwfindbypage(Xinwencx yh,Page<Xinwencx> page){
		AjaxRes res=new AjaxRes();
		Page<Xinwencx> pages=stu.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	/*
	 * 前端登录
	 */
	@RequestMapping("/qdlogin")
	@ResponseBody
	public AjaxRes qdlogin(HttpServletRequest session,Login id){
		AjaxRes res=new AjaxRes();
		String s=id.getPass();
		String ss=Mdpass.string2MD5(s);//生成mn5字符串
		String jiami = Mdpass.convertMD5(ss);//将字符串加密
		id.setPass(jiami);
		List<Login> i=login.find(id);
		if(i.size()>0){
			session.getSession().setAttribute("qdname",i.get(0));
			res.setResMsg("验证成功");
		}else{
			res.setResMsg("验证失败");
		}
		return res;
	}
	/*
	 * (前端)产品添加
	 */
	@RequestMapping("/qdChanping")
	@ResponseBody
	public AjaxRes Chanping(Chanping yh){
		AjaxRes res=new AjaxRes();
		cp.insert(yh);
		res.setResMsg("添加成功");
		return res;
	}
	/*
	 * (前端)产品查询（状态为1的）
	 */
	@RequestMapping("/qdfindbypage")
	@ResponseBody
	public AjaxRes qdfindbypage(Chanping yh,Page<Chanping> page){//分页查询(状态为1的产品)
		AjaxRes res=new AjaxRes();
		Page<Chanping> pages=cp.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	/*
	 * (前端)关于我们页面
	 */
	@RequestMapping("qdwangye/qdaboutwomen")
	public String qdaboutwomen(Model m,Aboutwomen yh){//查询(关于我们页面)
		List<Aboutwomen> list=about.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "qdwangye/about";
	}
	/*
	 * (前端)新闻详情
	 */
	@RequestMapping("/xiangqingqd")
	public String Xinwencx(Model m,String id){
		Xinwencx yh=new Xinwencx();
		yh.setId(id);
		List<Xinwencx> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "qdwangye/xinwenxq1";
	}
	/*
	 * (前端)产品详情
	 */
	@RequestMapping("/cpxqd")
	public String cpxqd(Model m,String id){//修改页面
		Chanping yh=new Chanping();
		yh.setId(id);
		List<Chanping> list=cp.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		if(yh.getCpfenlei()==null || yh.getCpfenlei()==""){
			yh.setCpfenlei("null");
		}
		m.addAttribute("yhh",yh);
		return "qdwangye/xinwenxq2";
	}
	/*
	 * (前端)企业注册状态详情
	 */
	@RequestMapping("qdwangye/qyztxq")
	public String qyztxq(Model m,String id){
		Xinwencx yh=new Xinwencx();
		yh.setId(id);
		List<Xinwencx> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "qdwangye/qyztxq";
	}
	/*
	 * (前端)最新政策
	 */
	@RequestMapping("qdwangye/zxzcall")
	public String zxzcall(Model m,String id){
		int a=Integer.parseInt(id); 
		if(0==a){
			m.addAttribute("a", "国家政策");
			return "qdwangye/zhengceqd";
		}
		if(1==a){
			m.addAttribute("a", "本地政策");
			return "qdwangye/zhengceqd";
		}
		if(2==a){
			return "qdwangye/remenxiangmu";
		}
		if(3==a){
			m.addAttribute("a", "金融政策");
			return "qdwangye/zhengceqd";
		}
		if(4==a){
			m.addAttribute("a", "金融知识");
			return "qdwangye/zhengceqd";
		}
		return id;
	}
	/*
	 * (前端)融资统计（最新政策选项旁边）
	 */
	@RequestMapping("qdwangye/rztjall")
	@ResponseBody
	public AjaxRes rztjall(){
		AjaxRes res=new AjaxRes();
		String pages="10";
		res.setSucceed(pages, "获取成功");
		return res;
	}
	/*
	 * (前端)诉求建议
	 */
	@RequestMapping("qdwangye/sqjyxq")
	public String sqjyxq(Model m,String id){
		Xinwencx yh=new Xinwencx();
		yh.setId(id);
		List<Xinwencx> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "qdwangye/suqiujianyi";
	}
	/*
	 * (前端)金融机构
	 */
	@RequestMapping("qdwangye/jrjgoverride")
	public String jrjgoverride(Model m,String id){
		m.addAttribute("yhh","jrjg");
		return "qdwangye/zhuceztqy";
	}
	/*
	 * (前端)金融机构
	 */
	@RequestMapping("qdwangye/jrjgoverride1")
	@ResponseBody
	public AjaxRes jrjgoverride1(User us,Page<User> page){
		AjaxRes res=new AjaxRes();
		Page<User> pages=user.findByPage(us, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
}

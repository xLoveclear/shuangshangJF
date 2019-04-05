package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.ajax.AjaxRes;
import com.common.mybatis.Page;
import com.controller.base.BaseController;
import com.entity.Chanping;
import com.service.ChanpingService;
import com.service.XinwenlmService;

@Controller
public class ChanpinController extends BaseController<Chanping>{
	@Autowired
	private ChanpingService stu; 

	@RequestMapping("/testChanping")
	public String testChanping(Model m,String id){//修改页面
		Chanping yh=new Chanping();
		yh.setId(id);
		List<Chanping> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		return "pages/Chanpininsert";
	}
	@RequestMapping("/testCp")
	public String testCp(Model m,String id){//修改页面(状态为0的产品)
		Chanping yh=new Chanping();
		yh.setId(id);
		List<Chanping> list=stu.find(yh);
		if(list.size()>0){
			yh=list.get(0);
		}
		m.addAttribute("yhh",yh);
		m.addAttribute("cs",0);
		return "pages/Chanpininsert";
	}
	
	@RequestMapping("/shenhecp")
	public String shenhecp(Model m){
		return "table/shenhecp";
	}
	
	@RequestMapping("/Chanpingwy")
	public String Chanpingwy(Model m){
		return "table/Chanping";
	}
	//添加数据功能（与修改数据同一页面）
	@RequestMapping("/insertChanping")
	public String insertChanping(Model m){
		m.addAttribute("canshu", 0);
		return "pages/Chanpininsert";
	}
	
	@RequestMapping("/Chanpingdel")
	@ResponseBody
	public AjaxRes Chanpingdel(Chanping id){//删除
		AjaxRes res=new AjaxRes();
		stu.delete(id);
		res.setResMsg("删除成功");
		return res;
	}
	
	@RequestMapping("/Chanping")
	@ResponseBody
	public AjaxRes Chanping(Chanping yh){//添加
		AjaxRes res=new AjaxRes();
		stu.insert(yh);
		res.setResMsg("添加成功");
		return res;
	}
	@RequestMapping("/Chanpingxiugai")
	@ResponseBody
	public AjaxRes Chanpingxiugai(Chanping yh){//修改
		AjaxRes res=new AjaxRes();
		Integer a=yh.getShcishu();
		if(a==null){
			yh.setShcishu(1);
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式			
			yh.setShtime(df.format(new Date()));
		}
		stu.update(yh);
		res.setResMsg("修改成功");
		return res;
	}
	@RequestMapping("/Chanpingfindbypage")
	@ResponseBody
	public AjaxRes Chanpingfindbypage(Chanping yh,Page<Chanping> page){//分页查询((状态为1的产品))
		AjaxRes res=new AjaxRes();
		Page<Chanping> pages=stu.findByPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/Chanpingfindpage")
	@ResponseBody
	public AjaxRes Chanpingfindpage(Chanping yh,Page<Chanping> page){//分页查询(状态为0的产品)
		AjaxRes res=new AjaxRes();
		Page<Chanping> pages=stu.findPage(yh, page);
		res.setSucceed(pages, "获取成功");
		return res;
	}
	
	@RequestMapping("/ChanpingAll")
	@ResponseBody
	public AjaxRes Chanpingfindbypage(String item){//删除多行数据
		AjaxRes res=new AjaxRes();
		String[] strs = item.split(",");
		List<Chanping> list = new ArrayList<Chanping>();
		for (int i = 0; i < strs.length; i++) {
			Chanping user=new Chanping();
			String u= strs[i].replace("\"","").replace("\"","");
			user.setId(u);
			list.add(user);
		}
		stu.deleteBatch(list);
		res.setResMsg("多行删除成功");
		return res;
	}
}

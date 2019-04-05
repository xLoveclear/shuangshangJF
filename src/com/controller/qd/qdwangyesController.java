package com.controller.qd;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.controller.base.BaseController;
import com.entity.Login;
/*
 * 
 * 用于打开前端网页的控制器（不允许做其他操作）
 */
@Controller
public class qdwangyesController extends BaseController<Login>{ 
	/*
	 * 首页
	 */
	@RequestMapping("qdwangye/shouye")
	public String shouye(Model m){
		return "qdwangye/shouye";
	}
	/*
	 *关于我们
	 */
	@RequestMapping("qdwangye/about")
	public String about(Model m){
		return "qdwangye/about";
	}
	
	/*
	 *帮助中心
	 */
	@RequestMapping("qdwangye/bzzx")
	public String bzzx(Model m){
		return "qdwangye/bangzhuzhongxin";
	}
	/*
	 *产品上传
	 */
	@RequestMapping("qdwangye/cpsc")
	public String cpsc(Model m){
		return "qdwangye/chanpinsc";
	}
	/*
	 *登录
	 */
	@RequestMapping("qdwangye/denglu")
	public String denglu(Model m){
		return "qdwangye/denglu";
	}
	/*
	 *对接结果企业
	 */
	@RequestMapping("qdwangye/djokqy")
	public String djokqy(Model m){
		return "qdwangye/duijiejgqiye";
	}
	/*
	 *对接企业银行
	 */
	@RequestMapping("qdwangye/djqyyh")
	public String djqyyh(Model m){
		return "qdwangye/djqyyh";
	}
	/*
	 *对接结果银行
	 */
	@RequestMapping("qdwangye/djjgyh")
	public String djjgyh(Model m){
		return "qdwangye/djjgyh";
	}
	/*
	 *对接成功项目
	 */
	@RequestMapping("qdwangye/djokxm")
	public String djokxm(Model m){
		return "qdwangye/duijieokxm";
	}
	/*
	 *服务评级
	 */
	@RequestMapping("qdwangye/fwpj")
	public String fwpj(Model m){
		return "qdwangye/fuwupingjia";
	}
	/*
	 *角色选择
	 */
	@RequestMapping("qdwangye/jsxz")
	public String jsxz(Model m){
		return "qdwangye/jiaosexuanze";
	}
	/*
	 *热门项目
	 */
	@RequestMapping("qdwangye/rmxm")
	public String rmxm(Model m){
		return "qdwangye/remenxiangmu";
	}
	/*
	 *最新政策
	 */
	@RequestMapping("qdwangye/zxzc")
	public String zxzc(Model m){
		return "qdwangye/zhengceqd";
	}
	/*
	 *融资产品
	 */
	@RequestMapping("qdwangye/rzcp")
	public String rzcp(Model m){
		return "qdwangye/rongzichanpin";
	}
	/*
	 *融资需求
	 */
	@RequestMapping("qdwangye/rzxq")
	public String rzxq(Model m){
		return "qdwangye/rongzixuqiu";
	}
	/*
	 *推荐产品
	 */
	@RequestMapping("qdwangye/tjcp")
	public String tjcp(Model m){
		return "qdwangye/tjchanpin";
	}
	/*
	 *审核状态（企业）
	 */
	@RequestMapping("qdwangye/qyshzt")
	public String qyshzt(Model m){
		return "qdwangye/qiyeshzt";
	}
	/*
	 *审核状态（银行）
	 */
	@RequestMapping("qdwangye/shztyh")
	public String shztyh(Model m){
		return "qdwangye/shztyh";
	}
	/*
	 *融资产品状态
	 */
	@RequestMapping("qdwangye/rzcpzt")
	public String tjcpzt(Model m){
		return "qdwangye/rongzichanpinzt";
	}
	/*
	 *诉求建议(第一个页面)
	 */
	@RequestMapping("qdwangye/sqjydyg")
	public String sqjydyg(Model m){
		return "qdwangye/sqjydiyige";
	}
	/*
	 *诉求建议（第二个页面）
	 */
	@RequestMapping("qdwangye/sqjy")
	public String sqjy(Model m){
		return "qdwangye/suqiujianyi";
	}
	/*
	 *新闻资讯
	 */
	@RequestMapping("qdwangye/xwzx")
	public String xwzx(Model m){
		return "qdwangye/xinwenzxqd";
	}
	/*
	 *新闻详情
	 */
	@RequestMapping("qdwangye/xwxq")
	public String xwxq(Model m){
		return "qdwangye/xinwenxq1";
	}
	/*
	 *产品对接详情
	 */
	@RequestMapping("qdwangye/cpdjxq")
	public String cpdjxq(Model m){
		return "qdwangye/xinwenxq2";
	}
	/*
	 *注册状态银行
	 */
	@RequestMapping("qdwangye/zcztyh")
	public String zcztyh(Model m){
		return "qdwangye/zhuceztyh";
	}
	/*
	 *注册状态企业
	 */
	@RequestMapping("qdwangye/zcztqy")
	public String zcztqy(Model m){
		return "qdwangye/zhuceztqy";
	}
	/*
	 *金融机构
	 */
	@RequestMapping("qdwangye/jrjg")
	public String jrjg(Model m){
		return "qdwangye/jingrongjg";
	}
	/*
	 *辖区动态
	 */
	@RequestMapping("qdwangye/xqdt")
	public String xqdt(Model m){
		return "qdwangye/xqdt";
	}
	/*
	 *信用评级
	 */
	@RequestMapping("qdwangye/xypj")
	public String xypj(Model m){
		return "qdwangye/xypingjia";
	}
	/*
	 *服务评级
	 */
	@RequestMapping("qdwangye/qdfwpj")
	public String qdfwpj(Model m){
		return "qdwangye/fuwupingjia";
	}

}

package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.ajax.AjaxRes;
import com.controller.base.BaseController;
import com.entity.Student;
import com.service.StudentService;

@Controller
public class StudentController  extends BaseController<Student>{
	@Autowired
	private StudentService stu; 
	@RequestMapping("/findStudent")
	public ModelAndView findStudent(){
		ModelAndView mv =  new ModelAndView();
		Student  s=new Student();
		List<Student> list=stu.find(s);
		mv.addObject("stud",list);
		mv.setViewName("pages/student");
		return mv;	
	}
	@RequestMapping("/adds")
	public void insert(Student student){
		//同步添加（用户）
		stu.insert(student);
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public AjaxRes add(Student student){
//		stu.insert(student);
		
		//ajax异步
		AjaxRes res=new AjaxRes();
		stu.insert(student);
		res.setResMsg("ok");
		return res;
	}
	
	
	
}

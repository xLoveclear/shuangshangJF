package com.controller;


import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.controller.base.BaseController;



@Controller
public class InsexpageController extends BaseController<Object>{

	//跳转主页
	@RequestMapping("/indexpage")
	public ModelAndView index()throws Exception{
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	//跳转主页
	@RequestMapping("/Loginpage")
	public ModelAndView Logins()throws Exception{
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}
	
	@RequestMapping("/testcontent")
	public ModelAndView testcontent(){
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("pages/content");
		return mv;
	}
	@RequestMapping("/testcontent1")
	public ModelAndView testcontent1(){
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("pages/content1");
		return mv;
	}
	
	@RequestMapping("/uploadfile")
	public ModelAndView uploadTest(@RequestParam("file")MultipartFile file ) throws IllegalStateException, IOException{
		
		file.transferTo(new File(""));
		return null;
	}
	
}

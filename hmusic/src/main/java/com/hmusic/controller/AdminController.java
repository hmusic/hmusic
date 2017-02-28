package com.hmusic.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.Admin;
import com.hmusic.entity.Music;
import com.hmusic.service.AdminService;
import com.hmusic.service.MusicService;

@Controller
@RequestMapping(value="/home")
public class AdminController {	

	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/")
	public ModelAndView index(){		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/login");		
		return mv;
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView login(Admin admin){	
		Admin a = adminService.login(admin.getAdminname(), admin.getAdminpassword());
		String message = "";
		String url = "";
		ModelAndView mv = new ModelAndView();
		if (a == null) {
			message = "用户名或密码错误，请重新登陆！";
			url = "";
		}else{
			message = "登陆成功！";
			url = "homepage";
		}
		mv.addObject("message",message);
		mv.addObject("url",url);
		mv.setViewName("admin/tips");		
		return mv;
	}
	
	@RequestMapping(value = "/homepage")
	public ModelAndView homepage(){		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");		
		return mv;
	}
	
	
}

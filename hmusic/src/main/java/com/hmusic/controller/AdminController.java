package com.hmusic.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.Admin;
import com.hmusic.entity.Music;
import com.hmusic.entity.User;
import com.hmusic.service.AdminService;
import com.hmusic.service.MusicService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {	

	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/")
	public ModelAndView index(){		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/login");		
		return mv;
	}
	
	@RequestMapping(value = "/adminLogin")
	public ModelAndView login(Admin admin,HttpSession session){	
		Admin a = adminService.login(admin.getAdminname(), admin.getAdminpassword());
		String message = "";
		String url = "";
		ModelAndView mv = new ModelAndView();
		if (a == null) {
			message = "用户名或密码错误，请重新登陆！";
			url = "login.jsp";
		}else{
			message = "登陆成功！";
			url = "index.jsp";
			session.setAttribute("admin",a);
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
	
	//退出
		@RequestMapping(value="/logout")
	     public String logout(HttpServletRequest request)
	     {
	         HttpSession session=request.getSession();
	         session.removeAttribute("admin");
	         return "redirect:login.jsp";
	     }
				
		//修改密码
			@RequestMapping(value="/updatePassword",method = RequestMethod.POST)
			public ModelAndView resetpassword(@RequestParam(value="oldpassword") String oldpassword,@RequestParam(value="newpassword") String newpassword,HttpSession session)
			{		
				String message = "";
				String url = "";
				ModelAndView mv = new ModelAndView();	
				
				//获取当前登录的用户信息
				Admin admin = (Admin)session.getAttribute("admin");
				//如果原密码输入正确，把新密码赋值给user对象。
			
				if(oldpassword.equals(admin.getAdminpassword()))
				{
					admin.setAdminpassword(newpassword);
					adminService.updatepassword(admin);
					session.removeAttribute("admin");
					session.setAttribute("admin", admin);
					
					message = "修改密码成功";
				    url = "admininfo.jsp";
				}
				else
				{
					message = "旧密码不正确";
				    url = "updatepassword.jsp";
				}
				
				mv.addObject("message",message);
				mv.addObject("url",url);
				mv.setViewName("admin/tips");		
				return mv;	
				
			}
	
}

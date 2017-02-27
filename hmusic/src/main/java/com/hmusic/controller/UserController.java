package com.hmusic.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hmusic.entity.User;
import com.hmusic.service.UserService;

import constants.Config;

@Controller //用于标示本类为web层控制组件
@Scope("prototype")
public class UserController {

	@Autowired
	private UserService userService;
	private ServletContext servletContext;
	
	//注册动作
	@RequestMapping(value="/register",method = RequestMethod.POST)
	public String register(User user, HttpServletRequest request){
		User user2=userService.findByUsername(user.getUsername());
		if (user2 == null)
		{
			userService.add(user);
			System.out.println("成功");
			//重新回到登陆界面
			return login(user, request);
		//	return "redirect:index.jsp";
			
		} 
		else 
		{
			System.out.println("注册失败");
			request.getSession().setAttribute("error", "用户名重复");
			return "redirect:index.jsp";

		}
	}  
	
	
	//实现登陆操作
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(User user, HttpServletRequest request){
		HttpSession session=request.getSession();
        session.removeAttribute("error");
		User user2=userService.login(user.getUsername(), user.getUserpassword());
		if (user2 == null)
		{
			System.out.println("登陆失败");
			session.setAttribute("error", "用户名或密码错误");
			return "redirect:index.jsp";
			
		} 
		else 
		{
			System.out.println(user2.getUserphoto());
			System.out.println("登陆成功");
			session.setAttribute("user",user2);
			System.out.println(request.getServletContext());
			return "redirect:index.jsp";

		}
	} 
	
	
	//退出
	@RequestMapping(value="/logout")
     public String logout(HttpServletRequest request)
     {
         HttpSession session=request.getSession();
         session.removeAttribute("user");
         return "redirect:index.jsp";
     }
	
	
	//修改个人信息
	
   @RequestMapping(value="/edituserinfo",method = RequestMethod.POST)
	public String edituserinfo(User user,HttpServletRequest request,
			@RequestParam(value = "userphotofile", required = false) MultipartFile userphotofile)
	{
		HttpSession session=request.getSession();
		//获取当前登录的用户信息
		User user1 = (User)session.getAttribute("user"); 
		user1.setSex(user.getSex());
		user1.setEmail(user.getEmail());
		user1.setTelephone(user.getTelephone());
		//设置头像
		String userphotopath = userphotofile.getOriginalFilename(); 
	    System.out.println(userphotopath);  
	    String path=Config.userphotopath+"//"+userphotopath;
	    System.out.println("***********"+path); 
	    //要存储的文件名，File(目标文件名，当前文件名)
	    File userphototargetFile = new File(Config.userphotopath, userphotopath); 
	    if(!userphototargetFile.exists()){  
	    	userphototargetFile.mkdirs();  
        } 
	    try {  
	    	userphotofile.transferTo(userphototargetFile); 
	    	user1.setUserphoto(path);
        } catch (Exception e) {  
            e.printStackTrace();  
        }
	    
		userService.update(user1);
		return"redirect:userinfo.jsp";
		
	}
	
	
	//修改密码
		@RequestMapping(value="/resetpassword",method = RequestMethod.POST)
		public String resetpassword(@RequestParam(value="oldpassword") String oldpassword,@RequestParam(value="newpassword") String newpassword,HttpServletRequest request)
		{
			HttpSession session=request.getSession();
			//获取当前登录的用户信息
			User user = (User)session.getAttribute("user");
			//如果原密码输入正确，把新密码赋值给user对象。
			if(oldpassword.equals(user.getUserpassword()))
			{
				user.setUserpassword(newpassword);
				userService.updatepassword(user);
				session.setAttribute("passwordsuccess", "修改成功");
				return"redirect:reset_password.jsp";
			}
			else
			{
				session.setAttribute("passworderror", "旧密码不正确");
			    return"redirect:reset_password.jsp";
			}
			
		}
	
}
       
       
	 
	
	
	


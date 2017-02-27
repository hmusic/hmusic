package com.hmusic.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.User;
import com.hmusic.service.UserService;

@Controller //用于标示本类为web层控制组件
@RequestMapping(value="/user") //用于标定访问时URL的位置
public class UserController {

	@Autowired
	private UserService userService;
	
	
	/**
     * 用户信息列表
     * @return
     * 如果采用JSON传值，那么需要注释掉下方方法中的代码
     * List<User> userList = userService.findAll();
     * mv.addObject("userList", userList);
     * 直接返回一个空视图名称
     * 页面异步加载数据，请查看下方注释方法
     */
	@RequestMapping(value = "/userList")
	public ModelAndView userList(){
		List<User> userList = userService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);
		mv.setViewName("userList");
		return mv;
	}
	/**
     * 用户信息列表   页面异步加载
     * @return
     * @ResponseBody 注解的作用是将目标类型数据转换成json格式
     * 另外页面需要加入jquery js
     */
	/*@RequestMapping(value = "/list")
	public @ResponseBody List<User> list(){
		List<User> userList = userService.findAll();
		return userList;
	}
	*/
	
	/**
     * 跳转到注册视图
     * @return
     */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add");
		return mv;
	}
	/**
     * 添加注册信息
     * @param user
     * @return
     */
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String add(User user){
		User user2=userService.findByUsername(user.getUsername());
		if(user2==null)
		{
			userService.add(user);
		}
		return "redirect:/user/userList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param id
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "userid") Integer userid){
		User user = userService.findByID(userid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", user);
		mv.setViewName("edit");
		return mv;
	}
	/**
     * 修改信息
     * @param user
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String edit(User user){
		userService.update(user);
		return "redirect:/user/userList";
	}
	
	/**
     * 删除用户
     * @param id
     * @return
     */
	@RequestMapping(value = "/delete")
	public String  delete(@RequestParam(value = "userid") Integer userid){
		userService.delete(userid);
		
		return "redirect:/user/userList";
	}

	//点击登录按钮时，创造一个登陆视图
	@RequestMapping(value="/loginLoad")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	//实现登陆操作
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(User user){
		User user2=userService.login(user.getUsername(), user.getUserpassword());
		if (user2 == null)
		{
			System.out.println("登陆失败");
			//重新回到登陆界面
			return "redirect:/user/loginLoad";
			
		} 
		else 
		{
			System.out.println("登陆成功");
			return "redirect:/user/success";

		}
	}
	
}
       
       
	 
	
	
	


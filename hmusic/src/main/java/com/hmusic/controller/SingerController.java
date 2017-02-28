package com.hmusic.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.Music;
import com.hmusic.entity.MusicFull;
import com.hmusic.entity.MusicType;
import com.hmusic.entity.Singer;
import com.hmusic.entity.SingerType;
import com.hmusic.service.MusicFullService;
import com.hmusic.service.SingerService;
import com.hmusic.service.SingerSingerTypeService;
import com.hmusic.service.SingerTypeService;

import constants.Config;

@Controller
@RequestMapping("/singer")
public class SingerController {
	
	@Autowired
	private SingerService singerService;
	
	@Autowired
	private SingerTypeService singerTypeService;
	
	@Autowired
	private SingerSingerTypeService singerSingerTypeService;
	
	@RequestMapping(value = "/singerList")
	public ModelAndView musicList() {
		List<Singer> singerList = singerService.findAllSinger();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("singerList", singerList);
		mv.setViewName("admin/singerList");
		return mv;
	}
	
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		List<SingerType> singerTypeList = singerTypeService.findAllSingerType();
		
		ModelAndView mv = new ModelAndView();	
		mv.addObject("singerTypeList",singerTypeList);
		mv.setViewName("admin/addSinger");
		return mv;
	}
	/**
     * 
     * @param 
     * @return
     */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "singerphoto", required = false) MultipartFile singerphotofile,			
			HttpServletRequest request) {
		System.out.println(request.getParameter("singername") + ", "
			+ request.getParameter("sex") + ", "
				+ request.getParameter("introduction"));
		String singername = request.getParameter("singername");
		String sex = request.getParameter("sex");
		String introduction = request.getParameter("introduction");
		String singertypename = request.getParameter("singertypename");
		// 
		String singerphotopath = singerphotofile.getOriginalFilename();
		
		System.out.println(singerphotopath);
		// tomcat下项目路径
		String basePath=request.getSession().getServletContext().getRealPath("/");
		System.out.println(basePath);
		// 要存储的文件名，File(目标文件名，当前文件名)		
		File targetFile = new File(basePath+Config.singerphotopath, singerphotopath);
		
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		
		// 保存
		try {
			singerphotofile.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		singerService.upload(singername,sex,introduction, singerphotopath);
		
		singerSingerTypeService.addSingerAndType(singername, singertypename);
		
		return "redirect:/singer/singerList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param musictypeid
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "singerid") Integer singerid){
		List<SingerType> singertypeList = singerTypeService.findAllSingerType();
		Singer singer = singerService.findSingerById(singerid);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("singer",singer);
		mv.addObject("singertypeList",singertypeList);
		mv.setViewName("admin/editSinger");
		return mv;
	}
	/**
     * 修改类别信息
     * @param music
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String edit(HttpServletRequest request){
		String singername = request.getParameter("singername");				
		String sex = request.getParameter("sex");		
		String introduction = request.getParameter("introduction");
		String singertypename = request.getParameter("singertypename");
		
//		singerService.up
		return "redirect:/musictype/musictypeList";
	}
	/**
     * 删除歌曲类别
     * @param musicid
     * @return
     */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "singerid") Integer singerid){
		singerService.deleteSinger(singerid);
		
		return "redirect:/singer/singerList";
	}
}

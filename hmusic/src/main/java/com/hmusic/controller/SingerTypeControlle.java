package com.hmusic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.SingerType;
import com.hmusic.service.SingerTypeService;
import com.hmusic.service.SingerTypeService;

@Controller
@RequestMapping(value="/singertype")
public class SingerTypeControlle {
	@Autowired
	private SingerTypeService singerTypeService;
	
	@RequestMapping(value = "/singertypeList")
	public ModelAndView musicList(){
		List<SingerType> singerTypeList = singerTypeService.findAllSingerType();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("singerTypeList", singerTypeList);
		mv.setViewName("admin/singerTypeList");
		
		return mv;
	}
	
	
	/**
     * 跳转到添加信息视图
     * @return
     */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
	
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("admin/addSingerType");
		return mv;
	}
	/**
     * 
     * @param SingerType
     * @return
     */
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String add(SingerType singerType){		
		
		singerTypeService.addSingerType(singerType);        
       
		return "redirect:/singertype/singertypeList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param SingerTypeid
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "singertypeid") Integer singertypeid){
		SingerType singertype = singerTypeService.findSingerTypeById(singertypeid);
				
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("singertype",singertype);
		mv.setViewName("admin/editSingerType");
		return mv;
	}
	/**
     * 修改类别信息
     * @param music
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String edit(SingerType singertype){				
		System.out.println(singertype.getSingertypeid()+singertype.getSingertypename());
		singerTypeService.updateSingerType(singertype);
		
		return "redirect:/singertype/singertypeList";
	}
	/**
     * 删除歌曲类别
     * @param musicid
     * @return
     */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "singertypeid") Integer singertypeid){
		singerTypeService.deleteSingerType(singertypeid);
		
		return "redirect:/singertype/singertypeList";
	}
}

package com.hmusic.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.hmusic.entity.MusicType;
import com.hmusic.service.MusicTypeService;


@Controller
@RequestMapping(value="/musictype")
public class MusicTypeController {

	@Autowired
	private MusicTypeService musicTypeService;
	
	@RequestMapping(value = "/musictypeList")
	public ModelAndView musicList(){
		List<MusicType> musicTypeList = musicTypeService.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("musicTypeList", musicTypeList);
		mv.setViewName("admin/musicTypeList");
		
		return mv;
	}
	
	
	/**
     * 跳转到添加信息视图
     * @return
     */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
	
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("admin/addMusicType");
		return mv;
	}
	/**
     * 
     * @param musictype
     * @return
     */
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String add(MusicType musictype){		
		
		musicTypeService.addType(musictype);        
       
		return "redirect:/musictype/musictypeList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param musictypeid
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "musictypeid") Integer musictypeid){
		MusicType musictype = musicTypeService.findById(musictypeid);
				
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("musictype",musictype);
		mv.setViewName("admin/editMusicType");
		return mv;
	}
	/**
     * 修改类别信息
     * @param music
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String edit(MusicType musictype){				
		System.out.println(musictype.getMusictypeid()+musictype.getMusictypename());
		musicTypeService.update(musictype);
		
		return "redirect:/musictype/musictypeList";
	}
	/**
     * 删除歌曲类别
     * @param musicid
     * @return
     */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "musictypeid") Integer musictypeid){
		musicTypeService.deleteById(musictypeid);
		
		return "redirect:/musictype/musictypeList";
	}
}

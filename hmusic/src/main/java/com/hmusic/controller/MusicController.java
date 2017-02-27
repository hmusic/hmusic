package com.hmusic.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.Music;
import com.hmusic.entity.MusicType;
import com.hmusic.service.MusicService;
import com.hmusic.service.MusicTypeService;

import constants.Config;

@Controller
@RequestMapping(value="/music")
public class MusicController {

	@Autowired
	private MusicService musicService;
	
	@Autowired
	private MusicTypeService musicTypeService;
	
	/**
     * 歌曲信息列表
     * @return
     */
	@RequestMapping(value = "/musicList")
	public ModelAndView musicList(){
		List<Music> musicList = musicService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("musicList", musicList);
		mv.setViewName("admin/musicList");
		
		return mv;
	}
	/**
     * 歌曲信息列表   页面异步加载
     * @return
     * @ResponseBody 注解的作用是将目标类型数据转换成json格式
     * 另外页面需要加入jquery js
     */
	/*@RequestMapping(value = "/list")
	public @ResponseBody List<music> list(){
		List<music> musicList = musicService.findAll();
		return musicList;
	}
	*/
	
	/**
     * 跳转到添加信息视图
     * @return
     */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad(){
		List<MusicType> musicTypeList = new ArrayList<MusicType>();
		musicTypeList = musicTypeService.findAll();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("musictypelist",musicTypeList);
		
		mv.setViewName("admin/addMusic");
		return mv;
	}
	/**
     * 添加歌曲信息
     * 包括，歌曲-歌手，歌曲-歌曲类型，
     * 歌曲上传，歌曲头像上传，歌词上传
     * @param music
     * @return
     */
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String add(@RequestParam(value = "musicpath", required = false) MultipartFile musicfile,
			@RequestParam(value = "musicphoto", required = false) MultipartFile musicphotofile,
			@RequestParam(value = "lyricspath", required = false) MultipartFile lyricsfile,
			HttpServletRequest request){
//		@RequestParam(value = "musicname") String musicname,
//		@RequestParam(value = "singername") String singername,
//		@RequestParam(value = "musictypename") String musictypename,
		System.out.println(request.getParameter("musicname")+", "
				+request.getParameter("singername")+", "+request.getParameter("musictypename"));  
//		System.out.println(musicname+", "+singername+", "+musictypename);  
        String musicpath = musicfile.getOriginalFilename(); 
        System.out.println(musicpath);  
        File musictargetFile = new File(Config.musicpath, musicpath);  
        if(!musictargetFile.exists()){  
        	musictargetFile.mkdirs();  
        }  
  
        //保存  
        try {  
        	musicfile.transferTo(musictargetFile);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
		return "redirect:/music/musicList";
	}
	/**
     * 修改信息获取，跳转到修改信息视图
     * @param musicid
     * @return
     */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "musicid") Integer musicid){
		Music music = musicService.findById(musicid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("music", music);
		mv.setViewName("admin/editMusic");
		return mv;
	}
	/**
     * 修改信息
     * @param music
     * @return
     */
	@RequestMapping(value = "/edit",method = RequestMethod.POST)
	public String edit(Music music){
		System.out.println("musicId:"+music.getMusicid());
		System.out.println("musicDownloadrate:"+music.getDownloadrate());
		music.setUploadtime(new Date(System.currentTimeMillis()));
		musicService.update(music);
		return "redirect:/music/musicList";
	}
	/**
     * 删除歌曲
     * @param musicid
     * @return
     */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "musicid") Integer musicid){
		musicService.deleteById(musicid);
		
		return "redirect:/music/musicList";
	}
	
}

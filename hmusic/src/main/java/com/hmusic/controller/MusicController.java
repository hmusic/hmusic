package com.hmusic.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.hmusic.entity.Music;
import com.hmusic.entity.MusicFull;
import com.hmusic.entity.MusicType;
import com.hmusic.service.MusicFullService;
import com.hmusic.service.MusicMusicTypeService;
import com.hmusic.service.MusicService;
import com.hmusic.service.MusicTypeService;
import com.hmusic.service.SingerMusicService;
import com.hmusic.service.SingerService;
import constants.Config;

@Controller
@RequestMapping(value = "/music")
public class MusicController {
	@Autowired
	private MusicService musicService;
	@Autowired
	private SingerService singerService;
	@Autowired
	private MusicTypeService musicTypeService;
	@Autowired
	private MusicMusicTypeService musicMusicTypeService;
	@Autowired
	private SingerMusicService singerMusicService;
	@Autowired
	private MusicFullService musicFullService;

	/**
	 * 歌曲信息列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/musicList")
	public ModelAndView musicList() {
		List<Music> musicList = musicService.findAll();
		List<MusicFull> musicFullList = new ArrayList<MusicFull>();
		for (Music music : musicList) {
			musicFullList.add(musicFullService.getMusicFullByMusic(music));
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("musicFullList", musicFullList);
		mv.setViewName("admin/musicList");
		return mv;
	}

	/**
	 * 跳转到添加信息视图
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addLoad")
	public ModelAndView addLoad() {
		List<MusicType> musicTypeList = new ArrayList<MusicType>();
		musicTypeList = musicTypeService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("musictypelist", musicTypeList);
		mv.setViewName("admin/addMusic");
		return mv;
	}

	/**
	 * 添加歌曲信息 包括，歌曲-歌手，歌曲-歌曲类型， 歌曲上传，歌曲头像上传，歌词上传
	 * 
	 * @param music
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@RequestParam(value = "musicpath", required = false) MultipartFile musicfile,
			@RequestParam(value = "musicphoto", required = false) MultipartFile musicphotofile,
			@RequestParam(value = "lyricspath", required = false) MultipartFile lyricsfile,
			HttpServletRequest request) {
		System.out.println(request.getParameter("musicname") + ", " + request.getParameter("singername") + ", "
				+ request.getParameter("musictypename"));
		String musicname = request.getParameter("musicname");
		String singername = request.getParameter("singername");
		String musictypename = request.getParameter("musictypename");
		// 歌曲文件名 歌曲头像名 歌词文件名
		String musicpath = musicfile.getOriginalFilename();
		String musicphotopath = musicphotofile.getOriginalFilename();
		String lyricspath = lyricsfile.getOriginalFilename();
		System.out.println(musicpath);
		// 要存储的文件名，File(目标文件名，当前文件名)
		File musictargetFile = new File(Config.musicpath, musicpath);
		File phototargetFile = new File(Config.musicphotopath, musicphotopath);
		File lyricstargetFile = new File(Config.lyricspath, lyricspath);
		if (!musictargetFile.exists()) {
			musictargetFile.mkdirs();
		}
		if (!phototargetFile.exists()) {
			phototargetFile.mkdirs();
		}
		if (!lyricstargetFile.exists()) {
			lyricstargetFile.mkdirs();
		}
		// 保存
		try {
			musicfile.transferTo(musictargetFile);
			musicphotofile.transferTo(phototargetFile);
			lyricsfile.transferTo(lyricstargetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		musicService.upload(musicname, musicpath, musicphotopath, lyricspath);
		singerMusicService.addSingerMusic(singername, musicname);
		musicMusicTypeService.addMusicAndType(musicname, musictypename);
		return "redirect:/music/musicList";
	}

	/**
	 * 修改信息获取，跳转到修改信息视图
	 * 
	 * @param musicid
	 * @return
	 */
	@RequestMapping(value = "/editLoad")
	public ModelAndView editLoad(@RequestParam(value = "musicid") Integer musicid) {
		MusicFull musicfull = musicFullService.getMusicFullByMusicid(musicid);
		List<MusicType> musicTypeList = new ArrayList<MusicType>();
		musicTypeList = musicTypeService.findAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("musicfull", musicfull);
		mv.addObject("musictypelist", musicTypeList);
		mv.setViewName("admin/editMusic");
		return mv;
	}

	/**
	 * 修改信息
	 * 
	 * @param music
	 * @return
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(HttpServletRequest request) {
		String musicname = request.getParameter("musicname");
		String singername = request.getParameter("singername");
		String musictypename = request.getParameter("musictypename");
		singerMusicService.updateSingerMusic(singername, musicname);
		musicMusicTypeService.updateMusicAndType(musicname, musictypename);
		return "redirect:/music/musicList";
	}

	/**
	 * 删除歌曲
	 * 
	 * @param musicid
	 * @return
	 */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam(value = "musicid") Integer musicid) {
		musicService.deleteById(musicid);
		return "redirect:/music/musicList";
	}
}
package com.hmusic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hmusic.entity.MusicFull;
import com.hmusic.service.MusicFullService;

@Controller
@RequestMapping
public class TestController {
	@Autowired
	private MusicFullService musicFullService;
	@RequestMapping("/test")
	public String Test(String name){
		System.out.println("test:"+name);
		List<MusicFull> musicFullList = musicFullService.getMusicFullByMusicName(name);
		/*MusicFull musicFull = musicFullService.getMusicFullByMusicid(id);*/
		for (MusicFull musicFull : musicFullList) {
		//	System.out.println("MusicFull"+musicFull.getMusic().getMusicname()+musicFull.getSinger().getSingerName()+musicFull.getMusic().getDuration());
		}
	//	System.out.println("MusicFull"+musicFull.getMusic().getMusicname()+musicFull.getSinger().getSingerName()+musicFull.getMusic().getDuration());
		return "";
	}
}

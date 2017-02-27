package com.hmusic.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hmusic.entity.MusicFull;
import com.hmusic.service.MusicFullService;

@Controller
@RequestMapping
public class SingerController {
	@Autowired
	private MusicFullService musicFullService;
	
	@RequestMapping("/singer")
	public String SingerInfo(Integer singerid,Model model){
		
		List<MusicFull> musicFullList = musicFullService.getMusicFullBySingerId(singerid,1);
		System.out.println("singer  success!"+musicFullList.get(0).getSinger().getSingerphoto());
		model.addAttribute("singer",musicFullList.get(0).getSinger());
		model.addAttribute("musics", musicFullList);
		return "singer";
	}
}

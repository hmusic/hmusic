package com.hmusic.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hmusic.entity.Music;
import com.hmusic.service.MusicService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {	

	
	@RequestMapping(value = "/")
	public ModelAndView musicList(){		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");		
		return mv;
	}
	
	
}

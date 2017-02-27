package com.hmusic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.MusicDao;
import com.hmusic.dao.SingerDao;
import com.hmusic.dao.SingerMusicDao;
import com.hmusic.entity.Music;
import com.hmusic.entity.Singer;
import com.hmusic.entity.SingerMusic;
import com.hmusic.service.SingerMusicService;

@Service(value = "singerMusicService")
@Transactional
public class SingerMusicServiceImpl implements SingerMusicService {

	@Autowired
	private MusicDao musicDao;
	
	@Autowired
	private SingerDao singerDao;
	
	@Autowired
	private SingerMusicDao singerMusicDao;
	
	@Override
	public void addSingerMusic(String singername, String musicname) {
		// TODO Auto-generated method stub
		Singer singer = singerDao.findSingerByName(singername);
		Music music = musicDao.findByMusicName(musicname);
		
		SingerMusic singermusic = new SingerMusic();
		if(music.getMusicid() != null)
			singermusic.setMusicid(music.getMusicid());
		if(singer.getSingerid() != null)
			singermusic.setSingerid(singer.getSingerid());
		singerMusicDao.add(singermusic);
	}



}

package com.hmusic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.MusicDao;
import com.hmusic.dao.MusicMusicTypeDao;
import com.hmusic.dao.MusicTypeDao;
import com.hmusic.dao.SingerDao;
import com.hmusic.dao.SingerMusicDao;
import com.hmusic.entity.Music;
import com.hmusic.entity.MusicMusicType;
import com.hmusic.entity.MusicType;
import com.hmusic.service.MusicMusicTypeService;

@Service(value = "musicMusicTypeService")
@Transactional
public class MusicMusicTypeServiceImpl implements MusicMusicTypeService{

	@Autowired
	private MusicDao musicDao;
	
	@Autowired
	private MusicTypeDao musicTypeDao;
	
	@Autowired
	private MusicMusicTypeDao musicMusicTypeDao;	
	
	@Override
	public void addMusicAndType(String musicname, String musictypename) {
		// TODO Auto-generated method stub
		Music music = musicDao.findByMusicName(musicname);
		
		MusicType musicType = musicTypeDao.findByTypeName(musictypename);
		
		MusicMusicType musicMusicType = new MusicMusicType();
		
		if (music.getMusicid() != null) {
			musicMusicType.setMusicid(music.getMusicid());
		}
		if (musicType.getMusictypeid() != null) {
			musicMusicType.setMusictypeid(musicType.getMusictypeid());
		}
		
		musicMusicTypeDao.add(musicMusicType);
	}

	@Override
	public void updateMusicAndType(String musicname, String musictypename) {
		// TODO Auto-generated method stub
		Music music = musicDao.findByMusicName(musicname);
		
		MusicType musicType = musicTypeDao.findByTypeName(musictypename);
		
		if (music.getMusicid() != null && musicType.getMusictypeid() != null) {
			musicMusicTypeDao.update(music.getMusicid(), musicType.getMusictypeid());
		}
	}

	
	
	

}

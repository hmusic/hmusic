package com.hmusic.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.MusicDao;
import com.hmusic.entity.Music;
import com.hmusic.service.MusicService;

import constants.Config;
import util.MP3Info;

@Service(value = "musicService")
@Transactional
public class MusicServiceImpl implements MusicService {

	@Autowired
	private MusicDao musicDao;
	
	
	public void add(Music music) {
		// TODO Auto-generated method stub
		musicDao.add(music);
	}

	public void upload(String musicname, String musicpath, String musicphotopath, String lyricspath) {
		// TODO Auto-generated method stub
		Music music = new Music();
		music.setMusicname(musicname);
		
		MP3Info mp3tool = new MP3Info(Config.musicpath+"//"+musicpath);
		
		music.setDuration(mp3tool.getDuration());
		music.setMusicphoto(Config.musicphotopath+"//"+musicphotopath);
		music.setMusicpath(Config.musicpath+"//"+musicpath);
		music.setLyricspath(Config.lyricspath+"//"+lyricspath);
		music.setClickrate(1);
		music.setDownloadrate(1);
		music.setUploadtime(new Date(System.currentTimeMillis()));
		add(music);
	}
	
	public void update(Music music) {
		// TODO Auto-generated method stub
		musicDao.update(music);
	}

	
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		musicDao.deleteById(id);
	}

	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public Music findById(Integer id) {
		// TODO Auto-generated method stub
		return musicDao.findById(id);
	}

	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<Music> findAll() {
		// TODO Auto-generated method stub
		return musicDao.findAll();
	}

}

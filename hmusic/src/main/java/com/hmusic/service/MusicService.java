package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.Music;

public interface MusicService {
	
	void add(Music music);
	 
	void update(Music music);
	 
	void deleteById(Integer id);
	
	Music findById(Integer id);
	
	List<Music> findAll();
}

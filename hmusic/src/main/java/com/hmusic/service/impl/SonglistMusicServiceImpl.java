package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.SonglistMusicDao;
import com.hmusic.entity.SonglistMusic;
import com.hmusic.service.SonglistMusicService;
@Service("songlistMusicService")
@Transactional
public class SonglistMusicServiceImpl implements SonglistMusicService{

	@Autowired
	private SonglistMusicDao songlistMusicDao;
	
	
	public void addOne(SonglistMusic songlistMusic) {
		// TODO Auto-generated method stub
		songlistMusicDao.addOne(songlistMusic);
	}

	
	public void addMany(Integer songlistid, List<Integer> musicidList) {
		// TODO Auto-generated method stub
		songlistMusicDao.addMany(songlistid, musicidList);
	}

	
	public void deleteBySonglistid(Integer songlistid) {
		// TODO Auto-generated method stub
		songlistMusicDao.deleteBySonglistid(songlistid);
	}

	
	public void deleteSonglistMusic(String songlistid, List<Integer> musicidList) {
		// TODO Auto-generated method stub
		songlistMusicDao.deleteSonglistMusic(songlistid, musicidList);
	}

	
	public List<SonglistMusic> findBySonglistid(Integer songlistid) {
		// TODO Auto-generated method stub
		return songlistMusicDao.findBySonglistid(songlistid);
	}
	
	

}

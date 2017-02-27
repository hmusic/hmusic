package com.hmusic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.SonglistDao;
import com.hmusic.entity.Songlist;
import com.hmusic.service.SonglistService;
@Service("songlistService")
@Transactional
public class SonglistServiceImpl implements SonglistService {
	
	@Autowired
	private SonglistDao songlistDao;
	
	
	public void add(Songlist songlist) {
		// TODO Auto-generated method stub
		songlistDao.add(songlist);
	}

	
	public void delete(Integer songlistid) {
		// TODO Auto-generated method stub
		songlistDao.delete(songlistid);
	}

	
	public void update(Songlist songlist) {
		// TODO Auto-generated method stub
		songlistDao.update(songlist);
	}

	
	public Songlist findByID(Integer songlistid) {
		// TODO Auto-generated method stub
		return songlistDao.findByID(songlistid);
	}

}

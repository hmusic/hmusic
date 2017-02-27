package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.MusicDao;
import com.hmusic.dao.MusicTypeDao;
import com.hmusic.entity.MusicType;
import com.hmusic.service.MusicTypeService;

@Service(value = "musicTypeService")
@Transactional
public class MusicTypeServiceImpl implements MusicTypeService {

	@Autowired
	private MusicTypeDao musicTypeDao;
	
	
	public void addType(MusicType musictype) {
		// TODO Auto-generated method stub
		musicTypeDao.addType(musictype);
	}

	
	public void deleteById(Integer musictypeid) {
		// TODO Auto-generated method stub
		musicTypeDao.deleteById(musictypeid);
	}

	
	public void update(MusicType musictype) {
		// TODO Auto-generated method stub
		musicTypeDao.update(musictype);
	}

	
	public List<MusicType> findAll() {
		// TODO Auto-generated method stub
		return musicTypeDao.findAll();
	}

	
	public MusicType findById(Integer musictypeid) {
		// TODO Auto-generated method stub
		return musicTypeDao.findById(musictypeid);
	}

}

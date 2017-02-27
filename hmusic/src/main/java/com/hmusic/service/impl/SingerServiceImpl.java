package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.SingerDao;
import com.hmusic.entity.Singer;
import com.hmusic.service.SingerService;

@Service(value = "singerService")
@Transactional
public class SingerServiceImpl implements SingerService {

	@Autowired
	private SingerDao singerDao;
	
	public void addSinger(Singer singer) {
		// TODO Auto-generated method stub
		singerDao.addSinger(singer);
	}

	
	public void deleteSinger(Integer id) {
		// TODO Auto-generated method stub
		singerDao.deleteSinger(id);
	}

	
	public void updateSinger(Singer singer) {
		// TODO Auto-generated method stub
		singerDao.updateSinger(singer);
	}
     
	
	public Singer findSingerById(Integer singerid) {
		// TODO Auto-generated method stub
		return singerDao.findSingerByID(singerid);
	}

	
	
	public List<Singer> findAllSinger() {
		// TODO Auto-generated method stub
		return singerDao.findAllSinger();
	}
	
	
	public Singer findSingerByName(String singername){
		// TODO Auto-generated method stub
		return singerDao.findSingerByName(singername);
	}

}

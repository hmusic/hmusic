package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.SingerTypeDao;
import com.hmusic.entity.SingerType;
import com.hmusic.service.SingerTypeService;

@Service(value = "singerTypeService")
@Transactional
public class SingerTypeServiceImpl implements SingerTypeService {
	
	@Autowired
	private SingerTypeDao singerTypeDao;
	
	public void addSingerType(SingerType singerType) {
		// TODO Auto-generated method stub
		singerTypeDao.addSingerType(singerType);
	}

	
	public void deleteSingerType(Integer singertypeid) {
		// TODO Auto-generated method stub
		singerTypeDao.deleteSingerType(singertypeid);
	}

	
	public void updateSingerType(SingerType singertype) {
		// TODO Auto-generated method stub
		singerTypeDao.updateSingerType(singertype);
	}

	
	public SingerType findSingerTypeById(Integer singertypeid) {
		// TODO Auto-generated method stub
		return singerTypeDao.findSingerTypeByID(singertypeid);
	}

	
	public List<SingerType> findAllSingerType() {
		// TODO Auto-generated method stub
		return singerTypeDao.findAllSingerType();
	}
	
	
	public SingerType findSingerTypeByName(String singertypename){
		return singerTypeDao.findSingerTypeByName(singertypename);
	}



}

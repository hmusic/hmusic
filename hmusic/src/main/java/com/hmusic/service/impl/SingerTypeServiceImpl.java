package com.hmusic.service.impl;

import java.util.List;

import com.hmusic.dao.SingerTypeDao;
import com.hmusic.entity.SingerType;
import com.hmusic.service.SingerTypeService;

public class SingerTypeServiceImpl implements SingerTypeService {

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

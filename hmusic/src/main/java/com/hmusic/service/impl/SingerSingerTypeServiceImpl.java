package com.hmusic.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.SingerDao;
import com.hmusic.dao.SingerSingerTypeDao;
import com.hmusic.dao.SingerTypeDao;
import com.hmusic.entity.Singer;
import com.hmusic.entity.SingerSingerType;
import com.hmusic.entity.SingerType;
import com.hmusic.service.SingerSingerTypeService;



@Service(value = "singerSingerTypeService")
@Transactional
public class SingerSingerTypeServiceImpl implements SingerSingerTypeService{

	@Autowired
	private SingerDao singerDao;
	
	@Autowired
	private SingerTypeDao singerTypeDao;
	
	@Autowired
	private SingerSingerTypeDao singerSingerTypeDao;
	
	@Override
	public void addSingerAndType(String singername, String singertypename) {
		// TODO Auto-generated method stub
		Singer singer = singerDao.findSingerByName(singername);
		
		SingerType singerType = singerTypeDao.findSingerTypeByName(singertypename);
		
		SingerSingerType singerSingerType = new SingerSingerType();
		
		if (singer.getSingerid() != null) {
			singerSingerType.setSingerid(singer.getSingerid());
			System.out.println(singer.getSingerid());
		}
		if (singerType.getSingertypeid() != null) {
			singerSingerType.setSingertypeid(singerType.getSingertypeid());
			System.out.println(singerType.getSingertypeid());
		}
		
		singerSingerTypeDao.add(singerSingerType);
	}

	@Override
	public void updateSingerAndType(String singername, String singertypename) {
		// TODO Auto-generated method stub
		Singer singer = singerDao.findSingerByName(singername);
		
		SingerType singerType = singerTypeDao.findSingerTypeByName(singertypename);
		
		if(singer.getSingerid() != null && singerType.getSingertypeid() != null){
			singerSingerTypeDao.update(singer.getSingerid(), singerType.getSingertypeid());
		}
	}

	@Override
	public SingerSingerType findTypebySingerid(Integer singerid) {
		// TODO Auto-generated method stub
		return singerSingerTypeDao.findBySingerid(singerid);
	}

}

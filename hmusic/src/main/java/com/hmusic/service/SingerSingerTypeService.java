package com.hmusic.service;

import com.hmusic.entity.SingerSingerType;

public interface SingerSingerTypeService {

	void addSingerAndType(String singername, String singertypename);
	
	void updateSingerAndType(String singername, String singertypename);

	SingerSingerType findTypebySingerid(Integer singerid);
	
}

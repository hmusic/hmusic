package com.hmusic.service;

import java.util.List;


import com.hmusic.entity.SingerType;

public interface SingerTypeService {
	/**
	 * 基本插入
	 */
	public void addSingerType(SingerType singertype);
	
	/**
	 * 根据主键删除
	 */
	public void deleteSingerType(Integer singertypeid);
	
	/**
	 * 根据主键更新
	 */
	public void updateSingerType(SingerType singertype);
	
	/**
	 * 根据主键查询
	 */
	public SingerType findSingerTypeById(Integer singertypeid);
	
	public List<SingerType> findAllSingerType();
	
	public SingerType findSingerTypeByName(String singertpyename);

}

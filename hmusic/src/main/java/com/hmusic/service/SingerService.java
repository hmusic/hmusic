package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.Singer;


public interface SingerService {

	/**
	 * 基本插入
	 */
	public void addSinger(Singer singer);
	
	/**
	 * 根据主键删除
	 */
	public void deleteSinger(Integer singerid);
	
	/**
	 * 根据主键更新
	 */
	public void updateSinger(Singer singer);
	
	/**
	 * 根据主键查询
	 */
	public Singer findSingerById(Integer singerid);
	
	public List<Singer> findAllSinger();
	
	public Singer findSingerByName(String singername);

	public void upload(String singername, String sex, String introduction, String singerphotopath);
	
}

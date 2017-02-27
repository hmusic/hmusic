package com.hmusic.service;

import com.hmusic.entity.Songlist;

public interface SonglistService {
	/**
	 * 根据给定对象信息增加歌单，id自增
	 * @param songlist对象
	 * */
	public void add(Songlist songlist)throws Exception;
	
	
	/**
	 * 根据id删除歌单
	 * @param songlistId
	 * */
	public void delete(Integer songlistid)throws Exception;
	
	
	/**
	 * 根据给定对象的id更新歌单
	 * @param songlist对象
	 * */
	public void update(Songlist songlist)throws Exception;
	
	
	/**
	 * 根据id找歌单
	 * @param songlistId
	 * */
	public Songlist findByID(Integer songlistid)throws Exception;
}

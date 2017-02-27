package com.hmusic.dao;

import org.springframework.stereotype.Repository;

import com.hmusic.entity.Songlist;
@Repository("songlistDao")
public interface SonglistDao {
	/**
	 * 根据给定对象信息增加歌单，id自增
	 * @param songlist对象
	 * */
	void add(Songlist songlist);
	
	
	/**
	 * 根据id删除歌单
	 * @param songlistId
	 * */
	void delete(Integer songlistid);
	
	
	/**
	 * 根据给定对象的id更新歌单
	 * @param songlist对象
	 * */
	void update(Songlist songlist);
	
	
	/**
	 * 根据id找歌单
	 * @param songlistId
	 * */
	Songlist findByID(Integer songlistid);
}

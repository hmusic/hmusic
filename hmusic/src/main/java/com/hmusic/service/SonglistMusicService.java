package com.hmusic.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hmusic.entity.SonglistMusic;

public interface SonglistMusicService {
	/**
	 * 根据给定对象添加一首歌曲到歌单
	 * @param songlistMusic
	 */
	public void addOne(SonglistMusic songlistMusic)throws Exception;
	/**
	 * 根据给定歌单id和歌曲id集合批量添加歌曲到歌单
	 * @param songlistid  
	 * @param musicidList 集合
	 */
	public void addMany(@Param("songlistid") Integer songlistid,@Param("list") List<Integer> musicidList)throws Exception;
	/**
	 * 根据给定歌单id批量删除歌单里面的歌曲记录
	 * @param songlistid
	 */
	public void deleteBySonglistid(Integer songlistid)throws Exception;
	/**
	 * 根据给定歌单id和歌曲id集合批量删除歌单里面的歌曲
	 * @param songlistid
	 * @patam musicidList 集合
	 */
	public void deleteSonglistMusic(@Param("songlistid") String songlistid,@Param("list") List<Integer> musicidList)throws Exception;
	
	/**
	 * 根据给定歌单id获取SonglistMusic集合
	 * @param songlistid
	 * @return
	 */
	public List<SonglistMusic> findBySonglistid(Integer songlistid)throws Exception;
}

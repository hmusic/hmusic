package com.hmusic.dao;

import com.hmusic.entity.SonglistMusic;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository; 
@Repository("songlistMusicDao")
public interface SonglistMusicDao {
	/**
	 * 根据给定对象添加一首歌曲到歌单
	 * @param songlistMusic
	 */
	void addOne(SonglistMusic songlistMusic);
	/**
	 * 根据给定歌单id和歌曲id集合批量添加歌曲到歌单
	 * @param songlistid  
	 * @param musicidList 集合
	 */
	void addMany(@Param("songlistid") Integer songlistid,@Param("list") List<Integer> musicidList);
	/**
	 * 根据给定歌单id批量删除歌单里面的歌曲记录
	 * @param songlistid
	 */
	void deleteBySonglistid(Integer songlistid);
	/**
	 * 根据给定歌单id和歌曲id集合批量删除歌单里面的歌曲
	 * @param songlistid
	 * @patam musicidList 集合
	 */
	void deleteSonglistMusic(@Param("songlistid") String songlistid,@Param("list") List<Integer> musicidList);
	
	/**
	 * 根据给定歌单id获取SonglistMusic集合
	 * @param songlistid
	 * @return
	 */
	List<SonglistMusic> findBySonglistid(Integer songlistid);
}

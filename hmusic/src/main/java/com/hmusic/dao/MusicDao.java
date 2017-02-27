package com.hmusic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hmusic.entity.Music;

@Repository(value="MusicDao")
public interface MusicDao {
   
    /**
     * 此方法对应于数据库中的表 ,music
     * 新写入数据库记录
     *
     * @param record
     */
	void add(Music music);
	 /**
     * 此方法对应于数据库中的表 ,music
     * 根据主键来更新符合条件的数据库记录
     *
     * @param record
     */
	void update(Music music);
	 /**
     * 此方法对应于数据库中的表 ,music
     * 根据主键删除数据库的记录
     *
     * @param id
     */
	void deleteById(Integer id);
	
	 /**
     * 此方法对应于数据库中的表 ,music
     * 根据指定主键获取一条数据库记录
     *
     * @param id
     */
	Music findById(Integer id);
	/**
     * 此方法对应于数据库中的表 ,music
     * 查询所有数据库记录
     */		
	List<Music> findAll();
	/**
	 * 根据歌曲名模糊查询歌曲
	 * @param name
	 * @return
	 */
	List<Music> findByMusicname(String name);
	
	Music findByMusicName(String name);
	
}
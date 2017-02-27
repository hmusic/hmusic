package com.hmusic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hmusic.entity.Singer;
@Repository("singerDao")
public interface SingerDao {
	 /**
     * 此方法对应于数据库中的表 ,Singer
     * 新写入数据库记录
     *
     * @param record
     */
	public void addSinger(Singer singer);
	 /**
     * 此方法对应于数据库中的表 ,Singer
     * 根据主键来更新符合条件的数据库记录
     *
     * @param record
     */
	public void updateSinger(Singer singer);
	 /**
     * 此方法对应于数据库中的表 ,Singer
     * 根据主键删除数据库的记录
     *
     * @param id
     */
	public void deleteSinger(Integer singerid);
	
	 /**
     * 此方法对应于数据库中的表 ,Singer
     * 根据指定主键获取一条数据库记录
     *
     * @param id
     */
	public Singer findSingerByID(Integer singerid);
	/**
     * 此方法对应于数据库中的表 ,Singer
     * 查询所有数据库记录
     */
	List<Singer> findAllSinger();
	/**
	 * 根据歌手名找到歌手对象
	 * @param singername
	 * @return
	 */
	public Singer findSingerByName(String singername);
}

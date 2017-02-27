package com.hmusic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hmusic.entity.SingerMusic;
@Repository("singerMusicDao")
public interface SingerMusicDao {
	/**
	 * 根据给定对象添加数据
	 * @param singermusic
	 */
	public void add(SingerMusic singermusic);
	/**
	 * 根据给定歌曲id删除数据
	 * @param musicid
	 */
	public void deleteByMusicid(Integer musicid);
	/**
	 * 根据给定歌手id删除数据
	 * @param singerid
	 */
	public void deleteBySingerid(Integer singerid);
	/**
	 * 根据给定歌曲id获取 对象
	 * @param musicid
	 * @return
	 */
	public SingerMusic findByMusicid(Integer musicid);
	/**
	 * 根据给定歌手id获取 对象集合
	 * @param singerid
	 * @return
	 */
	public List<SingerMusic> findBySingerid(Integer singerid);
	
	public void update(SingerMusic singermusic);
}

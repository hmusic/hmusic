package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.MusicType;

public interface MusicTypeService {
	/**
	 * 增加歌曲类别
	 * @param musictype
	 */
	public void addType(MusicType musictype);
	/**
	 * 删除歌曲类别
	 * @param musictypeid
	 */
	public void deleteById(Integer musictypeid);
	/**
	 * 更新歌曲类别名字
	 * @param musictype
	 */
	public void update(MusicType musictype);
	/**
	 * 获得所有歌曲类别
	 * @return
	 */
	public List<MusicType> findAll();
	/**
	 * 根据歌曲类别id获取对象
	 * @param musictypeid
	 * @return
	 */
	public MusicType findById(Integer musictypeid);
}

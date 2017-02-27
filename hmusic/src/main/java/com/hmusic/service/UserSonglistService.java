package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.UserSonglist;

public interface UserSonglistService {
	/**
	 * 根据所给对象添加数据
	 * @param userSonglist
	 */
	public void add(UserSonglist userSonglist)throws Exception;
	/**
	 * 根据所给歌单id删除歌单
	 * @param songlistid
	 */
	public void delete(Integer songlistid)throws Exception;
	/**
	 * 根据所给歌单id查找歌单
	 * @param songlistid
	 * @return
	 */
	public UserSonglist findBySonglistid(Integer songlistid)throws Exception;
	/**
	 * 根据所给用户id查找用户所有歌单
	 * @param userid
	 * @return
	 */
	public List<UserSonglist> findByUserid(Integer userid)throws Exception;
}

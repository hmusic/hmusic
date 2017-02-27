package com.hmusic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hmusic.entity.UserSonglist;
@Repository("userSonglistDao")
public interface UserSonglistDao {
	/**
	 * 根据所给对象添加数据
	 * @param userSonglist
	 */
	void add(UserSonglist userSonglist);
	/**
	 * 根据所给歌单id删除歌单
	 * @param songlistid
	 */
	void delete(Integer songlistid);
	/**
	 * 根据所给歌单id查找歌单
	 * @param songlistid
	 * @return
	 */
	UserSonglist findBySonglistid(Integer songlistid);
	/**
	 * 根据所给用户id查找用户所有歌单
	 * @param userid
	 * @return
	 */
	List<UserSonglist> findByUserid(Integer userid);
}

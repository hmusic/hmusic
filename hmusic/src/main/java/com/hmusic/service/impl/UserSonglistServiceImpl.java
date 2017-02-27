package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.UserSonglistDao;
import com.hmusic.entity.UserSonglist;
import com.hmusic.service.UserSonglistService;
@Service("userSonglistService")
@Transactional
public class UserSonglistServiceImpl implements UserSonglistService{

	@Autowired
	private UserSonglistDao userSonglistDao;
	
	
	public void add(UserSonglist userSonglist) {
		// TODO Auto-generated method stub
		userSonglistDao.add(userSonglist);
	}

	
	public void delete(Integer songlistid) {
		// TODO Auto-generated method stub
		userSonglistDao.delete(songlistid);
	}

	
	public UserSonglist findBySonglistid(Integer songlistid) {
		// TODO Auto-generated method stub
		return userSonglistDao.findBySonglistid(songlistid);
	}

	
	public List<UserSonglist> findByUserid(Integer userid) {
		// TODO Auto-generated method stub
		return userSonglistDao.findByUserid(userid);
	}

}

package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.UserDao;
import com.hmusic.entity.User;
import com.hmusic.service.UserService;

@Service(value = "userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public void add(User user) {	
	    userDao.add(user);	
	}

	public void update(User user) {
		userDao.update(user);
	}

	public void delete(Integer userid) {
		userDao.delete(userid);
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public User findByID(Integer userid) {
		return userDao.findByID(userid);
	}
	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}
	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<User> findAll() {
		return userDao.findAll();
	}


	public User login(String username, String userpassword) {
		// 输入的账号，输入的密码
		//对输入的账号进行查询，取出数据库中保存的信息
		User user=userDao.findByUsername(username);
		if(user!=null && user.getUserpassword().equals(userpassword))
		{
			return user;
		}
		
		return null;

	}
	
	

}

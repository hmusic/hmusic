package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.User;

public interface UserService {

	public void add(User user);
	
	public void update(User user);
	
	public void delete(Integer userid);
	
	public User findByID(Integer userid);
	
	public User findByUsername(String username);
	
	public User login(String username, String password);
	
	public List<User> findAll();
}

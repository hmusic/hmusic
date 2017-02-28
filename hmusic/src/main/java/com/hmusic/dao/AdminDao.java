package com.hmusic.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hmusic.entity.Admin;

@Repository(value="adminDao")
public interface AdminDao {
	 
	void add(Admin admin);
	
	void update(Admin admin);
	
	void updatepassword(Admin admin);
	 
	void delete(Integer adminid);
	
	
	Admin findByID(Integer adminid);
	
	
	Admin findByAdminname(String adminname);
	
	
	List<Admin> findAll();
}

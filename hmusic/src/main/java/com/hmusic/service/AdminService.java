package com.hmusic.service;

import java.util.List;

import com.hmusic.entity.Admin;

public interface AdminService {

	public void add(Admin admin);
	
	public void update(Admin admin);
	
	public void updatepassword(Admin admin);
	
	public void delete(Integer adminid);
	
	public Admin findByID(Integer adminid);
	
	public Admin findByAdminname(String adminname);
	
	public Admin login(String adminname, String password);
	
	public List<Admin> findAll();
}

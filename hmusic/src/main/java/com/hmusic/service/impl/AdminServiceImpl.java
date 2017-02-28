package com.hmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hmusic.dao.AdminDao;
import com.hmusic.entity.Admin;
import com.hmusic.service.AdminService;

@Service(value = "adminService")
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	public void add(Admin admin) {	
	    adminDao.add(admin);	
	}

	public void update(Admin admin) {
		System.out.println("DAO层："+admin.getAdminname());
		adminDao.update(admin);
	}
	
	public void updatepassword(Admin admin)
	{
		adminDao.updatepassword(admin);
	}

	public void delete(Integer adminid) {
		adminDao.delete(adminid);
	}
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public Admin findByID(Integer adminid) {
		return adminDao.findByID(adminid);
	}
	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public Admin findByAdminname(String adminname) {
		return adminDao.findByAdminname(adminname);
	}
	
	@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
	public List<Admin> findAll() {
		return adminDao.findAll();
	}

	public Admin login(String adminname, String adminpassword) {
		// 输入的账号，输入的密码
		//对输入的账号进行查询，取出数据库中保存的信息
		Admin admin=adminDao.findByAdminname(adminname);
		if(admin!=null && admin.getAdminpassword().equals(adminpassword))
		{
			return admin;
		}
		
		return null;

	}
	
	

}

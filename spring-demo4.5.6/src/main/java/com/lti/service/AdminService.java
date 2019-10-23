package com.lti.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lti.dao.AdminDao;
import com.lti.dao.CustomerDao;
import com.lti.entity.Admin;

@Service
public class AdminService 
{
	@Autowired
	private AdminDao adminDao;
	
	public List<Admin> fetchDataForAdmin( )
	{
		return adminDao.fetchDataForAdmin();
	}
	
}

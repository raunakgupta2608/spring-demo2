package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.dao.RegisterDao;
import com.lti.entity.Customer;
import com.lti.entity.Registerib;

@Service
public class RegisterService 
{
	@Autowired
	private RegisterDao registerDao; 
	
	public void saveAccountNumberFromRegisterIBPage(Registerib registerib)
	{
		System.out.println("INside register service");
		registerDao.saveAccountNumberFromRegisterIBPage(registerib);
	}
	
	/*
	 * public void checkAccountNumber(Registerib registerib) { int accno =
	 * getAccountNumber(registerib); } public int getAccountNumber(Registerib
	 * registerib) { int accno = registerDao.getAccountNumber(registerib); return
	 * accno; }
	 */
}

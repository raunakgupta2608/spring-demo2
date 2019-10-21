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
		registerDao.saveAccountNumberFromRegisterIBPage(registerib);
	}
	public String checkAccountNumber(Registerib registerib) 
	{ 
		System.out.println("enterred register service checkAccountNumber");
		int flag = registerDao.checkAccountNumber(registerib); 
		String ret="";
		if(flag == 1)
			ret = "setpassword.jsp";
		else if(flag == -1)
			ret = "error.jsp";
		System.out.println("leaving register service checkAccountNumber");
		
		return ret;
	}
	
	
	
	
	
	
	/*
	 * public String checkAccountNumber(Registerib registerib) {
	 * System.out.println("enterred register service checkAccountNumber"); int flag
	 * = getAccountNumber(registerib); String ret=""; if(flag == 1) ret =
	 * "setpassword.jsp"; else if(flag == -1) ret = "error.jsp";
	 * System.out.println("leaving register service checkAccountNumber");
	 * 
	 * return ret; } public int getAccountNumber(Registerib registerib) {
	 * System.out.println("enterred register service getAccountNumber"); int
	 * statuscode = registerDao.getAccountNumber(registerib);
	 * System.out.println("leaving register service getAccountNumber"); return
	 * statuscode; }
	 */
	 
}

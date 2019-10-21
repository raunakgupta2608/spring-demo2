package com.lti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lti.entity.Registerib;
import com.lti.service.RegisterService;

@Controller
public class RegisterController 
{
	@Autowired
	private RegisterService registerService;

	public void saveAccountNumberFromRegisterIBPage(Registerib registerib)
	{
		registerService.saveAccountNumberFromRegisterIBPage(registerib);
	}
	
	public String checkAccountNumber(Registerib registerib) 
	{
		System.out.println("enterred register contoller");
		String ret = registerService.checkAccountNumber(registerib);
		System.out.println(ret);
		System.out.println("leaving register contoller");
		return ret;
	}
	 
	
}

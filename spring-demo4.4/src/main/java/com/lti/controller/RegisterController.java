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
		System.out.println("INside register controller");
		registerService.saveAccountNumberFromRegisterIBPage(registerib);
	}
	/*
	 * public void checkAccountNumber(Registerib registerib) {
	 * registerService.checkAccountNumber(registerib); }
	 */
	
}

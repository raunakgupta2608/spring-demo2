package com.lti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.entity.Admin;
import com.lti.entity.Customer;
import com.lti.entity.Registerib;

@Controller
public class FrontController
{
	@Autowired
	private CustomerContoller customerContoller;
	
	@RequestMapping(path="/opensavingaccount.lti")
	//public String register(HttpServletRequest request){
	//public String register(@RequestParam("name") String name , @RequestParam("email") String email){
	public String openSavingAccount(Customer customer, Admin admin) 
	{
		customerContoller.openSavingAccount(customer,admin);
		return "confirmation.jsp";
	}

	@Autowired 
	private RegisterController registerController;
	
	@RequestMapping(path="/setpassword.lti", method=RequestMethod.POST)
	public void saveAccountNumberFromRegisterIBPage(Registerib registerib)
	{
		System.out.println("INside front controller");
		registerController.saveAccountNumberFromRegisterIBPage(registerib);
//		checkAccountNumber
	}
	
	/*
	 * public String checkAccountNumber(Registerib registerib) {
	 * registerController.checkAccountNumber(registerib); return "setpassword.jsp";
	 * }
	 */
	
}

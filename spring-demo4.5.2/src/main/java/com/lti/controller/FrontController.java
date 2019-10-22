package com.lti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	String ret ="";
	@RequestMapping(path="/setpassword.lti", method=RequestMethod.POST)
	public String fetchAccountNumberFromRegisterIBPage(@RequestParam("accno") int accno )
	{
		System.out.println("entering front controller fetchAccountNumberFromRegisterIBPage");
		
		ret = registerController.fetchAccountNumberFromRegisterIBPage(accno);
		
		System.out.println("leaving front controller fetchAccountNumberFromRegisterIBPage");
		return ret;
	}

	 
	@RequestMapping(path="/enterotp.lti", method=RequestMethod.POST)
	public String fetchPasswordFromSetPasswordPage(Registerib secondreqobj, @RequestParam("loginpass") String loginpass , @RequestParam("transpass") String transpass )
	{
		System.out.println("entering front controller fetchPasswordFromSetPasswordPage");
		
		registerController.fetchPasswordFromSetPasswordPage(secondreqobj, loginpass, transpass);
		
		System.out.println("leaving front controller fetchPasswordFromSetPasswordPage");
		return "enterotp.jsp";
	}
	
	
	
	
	
	
	
}

package com.lti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lti.entity.Admin;
import com.lti.entity.Customer;
import com.lti.service.CustomerService;

@Controller
public class CustomerController
{
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(path="/opensavingaccount.lti")

	//public String register(HttpServletRequest request){
	//public String register(@RequestParam("name") String name , @RequestParam("email") String email){
	public String register(Customer customer, Admin admin) 
	{
		customerService.register(customer,admin);
		return "confirmation.jsp";
	}
}

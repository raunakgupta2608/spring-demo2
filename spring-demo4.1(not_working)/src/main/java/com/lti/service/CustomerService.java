package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.entity.Admin;
import com.lti.dao.CustomerDao;
import com.lti.entity.Customer;

@Service
//business logic
public class CustomerService 
{
	
	@Autowired
	private CustomerDao customerDao;
			
			
	public void openSavingAccount(Customer customer, Admin admin) 
	{
		customerDao.saveCustomerDetails(customer,admin); //ask the dao to save it in the db
		//sending emailcode here
	}
			
	public Customer get(String email)	
	{
		return customerDao.fetch(email);				
	}
}

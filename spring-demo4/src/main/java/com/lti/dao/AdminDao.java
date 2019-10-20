package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.entity.Admin;
import com.lti.entity.Customer;

@Repository
public class AdminDao 
{
	@PersistenceContext
	private EntityManager entityManager;

	
	@Transactional
	public void save(Customer customer,Admin admin) 
	{
		fetchDataFromCustomerObject(customer,admin);
		entityManager.merge(admin); // both insert and update
	}
	public Admin fetchDataFromCustomerObject(Customer customer,Admin admin)
	{
		admin.setAccno(customer.getAccno());
		admin.setEmailid(customer.getEmailid());
		return admin;
	}
}

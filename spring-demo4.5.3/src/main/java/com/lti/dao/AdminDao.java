package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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
	public void saveCustomerDataIntoAdminDatabase(Customer customer,Admin admin) 
	{
		fetchDataFromCustomerObject(customer,admin);
		entityManager.merge(admin); // both insert and update
	}
	public void fetchDataFromCustomerObject(Customer customer,Admin admin)
	{
		int aadhar = customer.getAadharno();
		Query q = entityManager.createQuery("select accno from Customer c  where c.aadharno = :aadhar");
		q.setParameter("aadhar", aadhar);
		int accno = (Integer) q.getSingleResult();
		admin.setAccno(accno);
		admin.setEmailid(customer.getEmailid());
	}
}

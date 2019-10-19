package com.lti.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.entity.Customer;

@Repository
public class CustomerDao
{
	@PersistenceContext
	private EntityManager entityManager;
	
	
	@Transactional
	public void save(Customer customer) 
	{
		entityManager.merge(customer); // both insert and update 
	}

	public Customer fetch(String email) 
	{
		String q1= "select c from Customer c where c.email = :em";
		Query q =entityManager.createQuery(q1);
		q.setParameter("em", email);
		return (Customer) q.getSingleResult();
	}
	
	public List<Customer> fetchAll()
	{
		String q1= "select c from Customer c";
		Query q =entityManager.createQuery(q1);
		return q.getResultList();
	
	}
}

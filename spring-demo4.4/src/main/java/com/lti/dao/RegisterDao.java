package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.entity.Registerib;

@Repository
public class RegisterDao 
{
	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	public void saveAccountNumberFromRegisterIBPage(Registerib registerib)
	{
		System.out.println("INside register dao");
		entityManager.merge(registerib);
	}
	
	
	/*
	 * public Customer fetch(String email) { String q1 =
	 * "select c from Customer c where c.email = :em"; Query q =
	 * entityManager.createQuery(q1); q.setParameter("em", email); return (Customer)
	 * q.getSingleResult(); }
	 */
}

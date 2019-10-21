package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.entity.Admin;
import com.lti.entity.Customer;
import com.lti.entity.Registerib;

@Repository
public class RegisterDao 
{
	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	public void saveAccountNumberFromRegisterIBPage(Registerib registerib)
	{
		entityManager.merge(registerib);
	}
	public int checkAccountNumber(Registerib registerib) throws NoResultException
	{
		System.out.println("enterred dao");
		int accno = registerib.getAccno();
		Query q = entityManager.createQuery("select aadharno from Customer c  where c.accno = :accnno"); 
		q.setParameter("accnno", accno);
		try 
		{
			int aadhar = (Integer) q.getSingleResult();
			System.out.println(aadhar);
			System.out.println("leaving dao");
			return 1;
		}
		catch(NoResultException nre)
		{
			System.out.println("leaving catch dao");
			return -1;
		}
	}
	
	
	
	/*
	 * public int getAccountNumber(Registerib registerib) throws NoResultException {
	 * System.out.println("enterred dao"); int accno = registerib.getAccno(); Query
	 * q = entityManager.
	 * createQuery("select aadharno from Customer c  where c.accno = :accnno");
	 * q.setParameter("accnno", accno); try { int aadhar = (Integer)
	 * q.getSingleResult(); System.out.println(aadhar);
	 * System.out.println("leaving dao"); return 1; } catch(NoResultException nre) {
	 * System.out.println("leaving catch dao"); return -1; } }
	 */
}

package com.lti.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="registerib")
public class Registerib 
{
	@Id
	@SequenceGenerator( name ="useridsequence", initialValue=1000000, sequenceName="userid")
	@GeneratedValue ( strategy = GenerationType.SEQUENCE, generator ="useridsequence")
	@Column(name="userid")
	private int userid;
	@Column(name="accno")
	private int accno;
	@Column(name="loginpass")
	private String loginpass;
	@Column(name="transpass")
	private String transpass;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public String getLoginpass() {
		return loginpass;
	}
	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
	}
	public String getTranspass() {
		return transpass;
	}
	public void setTranspass(String transpass) {
		this.transpass = transpass;
	}
	
	
}

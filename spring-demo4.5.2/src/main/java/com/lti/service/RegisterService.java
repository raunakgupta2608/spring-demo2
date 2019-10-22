package com.lti.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lti.dao.RegisterDao;
import com.lti.entity.Registerib;

@Service
public class RegisterService 
{
	@Autowired
	private RegisterDao registerDao; 
	
	
	int accnofromfirstrequest;
	String loginpassfromsecondrequest;
	String transpassfromsecondrequest;
	int statuscode;
	String ret="";
	public String fetchAccountNumberFromRegisterIBPage(int accno)
	{
		System.out.println("entering registerService controller fetchAccountNumberFromRegisterIBPage");
		accnofromfirstrequest = accno;

		statuscode = registerDao.checkAccountNumber( accnofromfirstrequest );
		if ( statuscode == 1 )
		{
			ret = "setpassword.jsp";
		}
		else if ( statuscode == -1 )
		{
			ret = "error.jsp";
		}
		
		System.out.println( accnofromfirstrequest );
		System.out.println("leaving register controller fetchAccountNumberFromRegisterIBPage");
		return ret;
	}
	/*public String checkAccountNumber(Registerib registerib) 
	{ 
		System.out.println("enterred register service checkAccountNumber");
		int flag = registerDao.checkAccountNumber(registerib); 
		String ret="";
		if(flag == 1)
			ret = "setpassword.jsp";
		else if(flag == -1)
			ret = "error.jsp";
		System.out.println("leaving register service checkAccountNumber");
		
		return ret;
	}*/
	
	
	public void fetchPasswordFromSetPasswordPage( Registerib secondreqobj, String loginpass , String transpass )
	{
		System.out.println("entering register service fetchPasswordFromSetPasswordPage"); 
		
		loginpassfromsecondrequest = loginpass;
		System.out.println( loginpass );
		transpassfromsecondrequest = transpass;
		System.out.println( transpass );
		saveDataFromFirstAndSecondRequest( secondreqobj );
		
		System.out.println("leaving register service fetchPasswordFromSetPasswordPage");
	}
	
	public String saveDataFromFirstAndSecondRequest( Registerib secondreqobj )
	{
		System.out.println("entering register service saveDataFromFirstAndSecondRequest"); 
		
		String ret="";
		
		secondreqobj.setAccno(accnofromfirstrequest);
		secondreqobj.setLoginpass(loginpassfromsecondrequest);
		secondreqobj.setTranspass(transpassfromsecondrequest);
		
		/*
		 * int statuscode = registerDao.checkAccountNumber( accnofromfirstrequest ); if
		 * ( statuscode == 1 ) { registerDao.saveDataFromFirstAndSecondRequest(
		 * secondreqobj ); } else if ( statuscode == -1 ) { ret = "error.jsp"; }
		 */
		System.out.println("leaving register service saveDataFromFirstAndSecondRequest");
		return ret;
	}
	
	
	
	
	/*
	 * public String checkAccountNumber(Registerib registerib) {
	 * System.out.println("enterred register service checkAccountNumber"); int flag
	 * = getAccountNumber(registerib); String ret=""; if(flag == 1) ret =
	 * "setpassword.jsp"; else if(flag == -1) ret = "error.jsp";
	 * System.out.println("leaving register service checkAccountNumber");
	 * 
	 * return ret; } public int getAccountNumber(Registerib registerib) {
	 * System.out.println("enterred register service getAccountNumber"); int
	 * statuscode = registerDao.getAccountNumber(registerib);
	 * System.out.println("leaving register service getAccountNumber"); return
	 * statuscode; }
	 */
	 
}

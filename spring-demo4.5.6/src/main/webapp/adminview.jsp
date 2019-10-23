<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Admin View</title>
			<style>
				#img
				{
					width="150px";
					height="190px";
					font-size:125%; 
					margin-left:10;
					/* border:1px solid black; */
				}
				#container {
				  border-radius: 20px;
				  background-color:#FFA500;
				  width:50%;
				  height:30vh; 
				  margin-left:25%;
				  margin-top:3%;
				  border:1px solid black;
				}
				#upperdiv
				{
				  margin-top:5%;
				  margin-left:10%;
				  width:80%;
				  height:40%;
				  //border:1px solid red;
				}
				#buttondiv
				{
				  width:80%;
				  height:20%;
				  margin-left:10%;
				  /* border: 1px solid green; */
				  align-items: center;
				}
			.button {
			  background-color: #333; 
			  border: none;
			  color: white;
			  margin-top:8%;
			  margin-left:80%;
			  padding: 15px 32px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 16px;
			  cursor: pointer;
			}
			.left {
			float: left;
			margin-top:2px;
			margin-right:10px;
			}
			.right{
			float: left;
			margin-left: 10px;
			margin-top:0px;
			padding-left:3px;
			}
			.one {
			margin-top:2px;
			margin-left:120px;
			padding-left:3px;
			}
			
			ul{
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color:#333;
			}
			li {
			float: left;
			}
			li a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			}
			li a:hover:not(.active) {
			background-color:#ff8c1a;
			}
			.active {
			background-color:#ff8c1a;
			}
			label{
			    margin-left: 20px; 
			}
</style>
	</head>

    <body>
    <form action="adminapprovednowsendmail.lti" method="post">
    		<div id="img">
	                    <img src="Auroralogo.png" width="150px"height="100px"; >
	                    
	                    <marquee behavior="alternate" direction="left" alt="Natural">Let's make banking simpler!!</marquee>
	                    <table>
		                    <ul>
				                      <li><a href="#home">Home</a></li>
				                      <li style="float:right"><a class="active" href="#logout">Logout</a></li>
		                    </ul>
	                    </table>
	          </div>
		         <div id= "container">
		                <div id="upperdiv">
		                    <table>
		                        <div class="one"> 
		                                <label for="Request ID">Request ID</label>
		                                <label for="Acc No">Acc No</label>
		                                <label for="Email">Email</label>
		                                <br>
		                                <div>
		                                		<c:forEach items="${ alladmindata }" var="ayush">${ ayush.requestid }<br>
		                                						
	       		 								</c:forEach>
		                                </div>
		                                <div>
		                                		<c:forEach items="${ alladmindata }" var="ayush">${ ayush.accno }<br>
	       		 								</c:forEach>
		                                </div>
			                            <div>
		                                		<c:forEach items="${ alladmindata }" var="ayush">${ ayush.emailid }<br>
	       		 								</c:forEach>
		                                </div>  	    
		                                
		                        </div>
		                    </table> 
		           </div>
	                   
		            <div id="buttondiv">
		                    <div class="left"> 
		                    <input type="submit" class="button" value="Approve" required>
		                    </div>
		                    <div class="right"> 
		                    <input type="submit" class="button" value="Disapprove" required>
		                    </div>
		            </div>
       		 </div>
    </form>         
    </body>
</html>


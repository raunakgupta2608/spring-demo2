<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
      	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      	<link  rel ="stylesheet" type="text/css" href="register.css">
</head>

<body>
    <div id="imgtab">
    <div id="img">
    <img src="Auroralogo.png" width="150px" height="100px"; >
    </div>
    	<marquee behavior="alternate" direction="left" alt="Natural">Let's make banking simpler!!</marquee>
    </div>
    <ul>
      <li><a href="#home">Home</a></li>
      <li><a href="#news">About</a></li>
      <li><a href="#contact">Contact</a></li>
      <li style="float:right"><a class="active" href="#about">Logout</a></li>
    </ul>
    <div id="container">
      <div id="upperdiv">
          <div id="solid">OPEN A SAVINGS ACCOUNT</div><br><br>
      </div>
    <div id="lowerdiv1">
  
  <!-- form starts from here -->
  
        	<form method="post" action="register.lti">
              <table id="tab">
                  <tr>
                       <td><h3>Personal Details</h3></td>
                  </tr>
        		      <tr>
                			<td class="one">Enter Title</td>
                			<td class="two">-</td>
                			<td class="third">
        			            <select name="title">
              		          <option selected="selected" value="Mr.">Mr.</option>
              		          <option value="Mrs.">Mrs.</option>
              		          <option value="Ms">Ms</option>
          			            <option value="Ms">Mr</option> 
        		              </select>
        		          </td>
        		      </tr>
                  <tr>
                      <td class="one">Enter your First Name</td>
                      <td class="two">-</td>
                      <td class="third"><input type="text" name ="fname" required></td>
                  </tr>
                  <tr>
                      <td class="one">Enter your Middle Name</td>
                      <td class="two">-</td>
                      <td class="third"><input type="text" name ="mname" required></td>
                  </tr>
                  <tr>
                      <td class="one">Enter your Last Name</td>
                      <td class="two">-</td>
                      <td class="third"><input type="text" name ="lname" required></td>
                  </tr>
                  <tr>
                      <td class="one">Enter your Father's Name</td>
                      <td class="two">-</td>
                      <td class="third"><input type="text" name ="fathername" required></td>
                  </tr>
                  <tr>
                      <td class="one">Enter Date of Birth</td>
                      <td class="two">-</td>
                      <td class="third"><input type="date" name ="dob" id="d" required></td>
                  </tr> 
                  <tr>
                      <td class="one">Enter your Mobile number</td>
                      <td class="two">-</td>
                      <td class="third"><input type="number" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" name ="mobileno" required></td>
                  </tr>
                  <tr>
                      <td class="one">Enter your Email ID</td>
                      <td class="two">-</td>
                      <td class="third"><input type="email"  name ="emailid" required></td>
                  </tr>
                  <tr>
                      <td class="one">Enter your Aadhar Card Number</td>
                      <td class="two">-</td>
                      <td class="third"><input type="number" name ="aadharno" required></td>
                  </tr>
                  <tr>
                        <td><h3>Residential Address</h3></td>
                  </tr>
                  <tr>
                        <td class="one">Address Line 1</td>
                        <td class="two">-</td>
                        <td class="third"><input type="text" name ="raddressln1" required></td>
                  </tr>
                  <tr>
                        <td class="one">Address Line 2</td>
                        <td class="two">-</td>
                        <td class="third"><input type="text" name="raddressln2" required></td>
                  </tr>
                  <tr>
                        <td class="one">Landmark</td>
                        <td class="two">-</td>
                        <td class="third"><input type="text" name="landmark" required></td>
                  </tr>
                  <tr>
                        <td class="one">State</td>
                        <td class="two">-</td>
                        <td class="third"><input type="text" name="state" required></td>
                  </tr>
                  <tr>
                        <td class="one">City</td>
                        <td class="two">-</td>
                        <td class="third"><input type="text" name = "city" required></td>
                  </tr>
                  <tr>
                        <td class="one">Pincode</td>
                        <td class="two">-</td>
                        <td class="third"><input type="number" name="pincode" required></td>
                  </tr>
               </table>    
               <div id="checkbox">
                  <input type="checkbox">Permanent Address same as Mailing Address<br>
               </div>
               <div id="lowerdiv2">
                  <table id="tab">
                        <tr>
                            <td class="one">Address Line 1</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="praddressln1" required></td>
                      </tr>
                      <tr>
                            <td class="one">Address Line 2</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="praddressln2" required></td>
                      </tr>
                      <tr>
                            <td class="one">Landmark</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="plandmark" required></td>
                      </tr>
                      <tr>
                            <td class="one">State</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="pstate" required></td>
                      </tr>
                      <tr>
                            <td class="one">City</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="pcity" required></td>
                      </tr>
                      <tr>
                            <td class="one">Pincode</td>
                            <td class="two">-</td>
                            <td class="third"><input type="number" name="ppincode" required></td>
                      </tr>
                      <tr>
                            <td><h3>Occupation Details</h3></td>
                      </tr>
                      <tr>
                            <td class="one">Occupation Type</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="occtype" required></td>
                      </tr>
                      <tr>
                            <td class="one">Source of Income</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="sourceincome" required></td>
                      </tr>
                      <tr>
                            <td class="one">Gross Annual Income</td>
                            <td class="two">-</td>
                            <td class="third"><input type="text" name="annualincome" required></td>
                      </tr>
                  </table>
                  <div id="buttondiv">
                        <button type="submit" class="button" required>Submit</button>
                  </div> 
              </div>  
          </form>
      </div>  
      </div>
</body>
</html>


          <!-- <script>
          function f1()
          {
            var x = document.getElementById('d').value;
              alert(x);
          }
          </script> -->
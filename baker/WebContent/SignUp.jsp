<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
	
		function validate1() {
			var x=document.f1.FirstName.value;
			if(x==""||x==null)
				{
				alert("enter first name");
				document.f1.FirstName.focus();
				return false;
				}
			 var y = document.f1.LastName.value;
			 if(y==""||y==null)
				{
				alert("enter last name");
				document.f1.LastName.focus();
				return false;
				}
			 
			 
			 var z = document.f1.UserName.value;
			 if(z==""||z==null)
				{
				alert("enter user name");
				document.f1.UserName.focus();
				return false;
				}
			 
			 var z1 = document.f1.password.value;
			 
			 if(z1==""||z1==null)
				{
				alert("enter password");
				document.f1.password.focus();
				return false;
				}
			 if(z1.length<6)
				{
				alert("password should be of min 6 characters!");
				document.f1.password.focus();
				return false;
				}
			 
			 var z2 = document.f1.confPassword.value;
			 if(z2==""||z2==null)
				{
				alert("enter Confirm  password");
				document.f1.confPassword.focus();
				return false;
				}
			 
			 var z3 = document.f1.emailId.value;
			 if(z3==""||z3==null)
				{
				alert("enter email Id");
				document.f1.emailId.focus();
				return false;
				}
			 
			 var z4 = document.f1.confEmailId.value;
			 if(z4==""||z4==null)
				{
				alert(" Confirm email Id");
				document.f1.confEmailId.focus();
				return false;
				}
			 
			 var z5 = document.f1.phoneNumber.value;
			 if(z5==""||z5==null || z5.length!=10)
				{
				alert(" enter valid phone number");
				document.f1.phoneNumber.focus();
				return false;
				}
			 
			 var z6 = document.f1.address.value;
			 if(z6==""||z6==null)
				{
				alert(" enter address");
				document.f1.address.focus();
				return false;
				}
			 var z7 = document.f1.pincode.value;
			 if(z7==""||z7==null || z7.length!=6)
				{
				alert(" enter valid pincode");
				document.f1.pincode.focus();
				return false;
				}
			 
			 if( z4 !=z3)
				 {
				 alert(" Email Ids do not match");
				 return false;
				 }
			 
			 if( z2 !=z1)
			 {
			 alert(" Passwords do not match");
			 return false;
			 }
		}
	

</script>

<style>
h2
{
  color:#003366;
  text-align:center;
  margin-left:350px;
  font-family:lucida Handwriting;
  font-size:40px;
}
a:link, a:visited { 
    color: inherit;
    text-decoration: none;
    cursor: auto;
}

a:link:active, a:visited:active { 
    color:inherit;
}
#styling
 { 
  color:#000000;
  text-align:center;
  font-family:lucida Handwriting;
  
  }
  #footer{
background-color:#003366;
color:white; 
clear:both;
height:20px;
width:1360px;
text-align:center;
padding:5px;
}



.button {
background-color:grey ;
font-size: 24px;
border-radius: 12px;
width: 200px;
}
</style>


</head>
<body background="images/images (14).jpg" style="height:100%; width:100%;">
<div  style="height:5%; width:100%;">
<div  style="height:100%; width:20%;float:left;">
<img src="images/chef-giving-thumbs-up-clipart-picture-cartoon-character-37363570.jpg" >
</div>
<div  style="height:100%;width:60%; float:left;">
<h1 style=" font-size:500%;color:#003366;float:left;font-family:Brush Script MT;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bihar Bakery</b></h1>

<br/><br/><br/><br/>
<div style=" float: right; MARGIN:-25PX">
<a href="bakeryindex.jsp"><button class="button" name="LogOut" >Back</button>
</a>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br>
<table height=4% style="width:100%;  background-color :#003366;">
<tr >
<td  align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="bakery1.html">HOME</a></font></td>
<td  align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="AboutUs.html">ABOUT US</a></font></td>
<td  align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="product2.html">PRODUCTS</a></font></td>
<td  align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="contactbakery.html">CONTACT US</a></font></td> 
</tr>
</table>

<table>
<tr>
<td style="width:30%;">

</td>
<td style="width=30%; height:100%;">

<form name="f1" action="RegisterCustomerController" method = "post"  onsubmit="return validate1()">
<h1  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sign Up</h1>


<div style=" float: CENTER">
<table align=center >
<tr>
<td id="styling"><font size ="4" > ID :</font></td>

<td> <input type="text" placeholder ="1" name="Id" pattern="[0-9]{1,4}" title="size should be between 1 and 4" required/><br></td>
</tr>
<tr>
<td id="styling"><font size ="4" > First Name :</font></td>

<td> <input type="text" placeholder ="First Name" name="FirstName"  title="enter letters only" required/><br></td>
</tr>
<tr>
<td id ="styling"><font size ="4"> Last Name :</td>

<td> </font> <input type="text" placeholder="Last Name" name ="LastName"  title="enter letters only" required/><br></td>
</tr>

<tr>
<td id ="styling"><font size = "4"> User Name :</td>

<td>  </font><input type="text" placeholder="User Name" name="UserName" pattern="[a-zA-z0-9]{3,10}" title=" must be alphanumeric and size should be between 3 and 10" required><br></td>
</tr>
<tr>
<td id ="styling"><font size = "4"> Password :</td>

<td> </font><input type="password" placeholder="Password"  name ="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required><br></td>
</tr>
<tr>
<td id ="styling"><font size = "4"> Confirm Password :</td>

<td></font><input type="password" placeholder="Password" name="confPassword" ><br></td>
</tr>

<tr>
<td id ="styling"><font size = "4"> Email Id :</td> 

<td></font><input type="email" placeholder="Email ID" name ="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"title="size should not exceed 15 characters" required><br> </td>
</tr>
<tr>
<td id ="styling"><font size = "4"> Confirm Email Id :</td>

<td> </font><input type="email" placeholder="user123@gmail.com" name="confEmailId" ><br> </td>
</tr>
<tr>
<td id ="styling"><font size = "4"> Phone Number :</td>
<td>  </font><input type="text" placeholder="987654321.." name="phoneNumber" pattern="[789][0-9]{9}" title="10 numeric characters only" required><br></td>
</tr>
<tr>
<td id ="styling"><font size = "4"> Address :</td>  

<td></font><textarea  name ="address" title="maximum 35 characters only" ></textarea><br> </td>
</tr>
<tr>
<td id ="styling"><font size = "4"> Pin code :</font></td>

<td>  <input type="text" placeholder="123456" name="pincode" pattern="[0-9]{6}" title="pincode should be of 6 characters only" required><br></td>
</tr>
<tr>
<td colspan=3 align="center"><input type="submit" value ="Confirm" class="button"></td>
</tr>

</table>
</div>
</form>
</td>
</tr>
</table>

<div id="footer">
Copyright © BiharBakery.com
</div>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bihar bakery..</title>


<style>
#textbox{
display:block;
width:180px;
height:40px;
border-radius:10px;
}
div.transbox {
 height:150px; 
  width:310px;
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}
a:link, a:visited { 
    color: inherit;
    text-decoration: none;
    cursor: auto;
}

a:link:active, a:visited:active { 
    color:inherit;
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
#login{
position:absolute;
top:270px;
left:520px;}


.button {
background-color:grey ;
font-size: 24px;
border-radius: 8px;
width: 100px;
}
button:hover {
    background-color:grey; 
    color: #bfff00;
}

</style>

<script>
function validate1() {
	
	    var username = document.forms["form1"]["username"].value;
	       
	    if (username == null || username == "" )
	    		{
	        alert("Please enter the username in letters only.");
	        document.form1.username.focus() ;

	        return false;
	    }
	    var password = document.forms["form1"]["password"].value;
	   
			if (password == null || password == ""||(password.length<6))
			{
	        alert("Please enter the Password of min 6 length.");
	        return false;
	    }
	   
}	
</script>

</head>
<body background="images/images (14).jpg" style="height:100%; width:100%;">
<div  style="height:5%; width:100%;">
<div  style="height:100%; width:20%;float:left;">
<img src="images/chef-giving-thumbs-up-clipart-picture-cartoon-character-37363570.jpg" >
</div>
<div  style="height:100%;width:60%; float:left;">
<h1 style=" font-size:600%;color:#003366;float:MIDDLE;font-family:Brush Script MT;margin:3%"><b>BIHAR BAKERY</b></h1>
</div>


<div>
<p style=" font-size:150%;color:#5e0231;float:right; margin:1.5%", font-family:Brush Script MT;"><b>New User ??? &nbsp;</b>
<br>
<br>
<br>
<a href="SignUp.jsp">
<br><div id="hello" style="left:950px"><span> &nbsp;&nbsp;&nbsp;&nbsp;Sign Up</span></div></a>
<style>
#hello{
	margin-top: 60px;
	position: absolute;
	margin-left: 220px;
	color: BLACK;
	font-size: 24px;
	background-color: grey;
	width: 150px;
	height: 35px;
	border: 10px;
	border-radius: 8px;
	
}
span{
	margin-left: 10px;
	margin-top: 20px !important;
}
</style>
</div>

</div>
</div>
<br/>
<br/>
 <br/>
 <br/>
 <br/>
 <br/>
 <br/>
 


 <div >
 
 <p>
 <center>
 
 <br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
 <div id="login">
 <form action="LoginController.java" name="form1" method ="post" onsubmit="return validate1()">
 <table >
<tr>
<td><FONT COLOR=#000000 FACE=" Cooper Black" SIZE=5>Login ID:</FONT></td>
<td><input id="textbox"  type="text" name="username" placeholder="username"/></td>
</tr>
<tr>
<td><FONT COLOR="#000000" FACE="Cooper Black" SIZE=5>Password:</FONT></td>
<td><input id="textbox" type="password" name="password" placeholder="password"/></td>
</tr>
<tr>
<td>
<FONT COLOR="#000000" FACE="Cooper Black" SIZE=5>Role:</FONT>
<td ><select name="role" style="font-size=12px;">
<option value="user"  style="font-size=12px;">USER</option>
<option value="admin" >ADMIN</option></select>
</td>

</div>
</td>
</tr>
<tr >
<td colspan=2>
<input type ="submit" value="submit" class="button">
</td>
</tr>
</table>
</form>
<br><br>
</center>
</p>
 </div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div id="footer">
Copyright © BiharBakery.com
</div>


</body>
</html>
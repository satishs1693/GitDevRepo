<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
h2
{
  color:#6F3662;
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
border-radius: 8px;
width: 150px;
}
#styling
 { 
  color:#000000;
  text-align:center;
  font-family:lucida Handwriting;
  
  }
  td
  {
  padding:10px;
  }
</style>
<script>
function fn()
{
	
	return true;
	}
</script>

</head>

<body background="images/images (14).jpg">
<div  style="height:5%; width:100%;">
<div  style="height:100%; width:20%;float:left;">
<img src="images/chef-giving-thumbs-up-clipart-picture-cartoon-character-37363570.jpg" >
</div>

<div  style="height:100%;width:60%; float:left;">
<h1 style=" font-size:500%;color:#003366;float:left;font-family:Brush Script MT;margin-top:10px;margin-left:10px;"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete Items</b></h1>
</div>
<br><br><br><br><br><br><br>
<div style=" float: right;">
<a href="AdminHome.jsp"><button class="button" name="LogOut">Log Out</button></a>
</div>
<form name="DeleteItem" action="AdminOperationController" method="post" onsubmit="return fn()">
<div style="float: center; margin-left:34%">

<table align="left" >
<tr>
<td id="styling"><font size ="4"> Item Id :</font></td>

<td> <input type="text" placeholder ="Item Id" name="ItemId" required/><br></td>
</tr>
<tr>
<td id ="styling"><font size ="4"> Item Name :</font> </td>

<td> <input type="text" placeholder="Item Name" name ="ItemName" required/><br></td>
</tr>
<tr>
<td>
<input type="submit" class="button"  value="Delete" name="Operation">
</td>
<td>
<input type="reset" class="button"  value="Clear" >
</td>
</tr>

</table>

</form>
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
<br/>
<div id="footer">
Copyright © BiharBakery.com
</div>




</body>
</html>
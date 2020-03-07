<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<style>
h2
{
  color:#003366;
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
background-color:grey;
font-size: 20px;
border-radius: 12px;
width: 200px;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body background="images/images (14).jpg" style="height:100%; width:100%;">

<div  style="height:5%; width:100%;">
<div  style="height:100%; width:20%;float:left;">
<img src="images/chef-giving-thumbs-up-clipart-picture-cartoon-character-37363570.jpg" >
</div>

<div  style="height:100%;width:60%; float:left;">
<h1 style=" font-size:600%;color:#003366;float:left;font-family:Brush Script MT;margin-top:10px;"><b>&nbsp;Admin</b></h1>
</div>

<br/><br/><br/><br/>
<div style=" float: right;">
<a href="AdminOperationController"><button class="button" name="LogOut" margin="1%">Log Out</button></a>
</div>




<table >
<tr>
<td style="width="30%;">
</td>
<td style="width=30%; height:100%;">

<table style="margin-left:400px">
<td>
<a href="AdminAddItem.jsp"><button class="button" name="AddItem" >ADD ITEM</button></a>
<br><br>
<a href="AdminModifyItem.jsp"><button class="button" name="ModifyItem">MODIFY ITEM</button></a>
<br><br>
<a href="AdminDeleteItem.jsp"><button class="button" name="DeleteItem">DELETE ITEM</button></a>
<br><br>
<a href="PendingRequest.jsp"><button class="button" name="PendingRequest"> SEE PENDING REQUESTS</button></a>
<br><br>
</td>
</table>
</td>
</tr>
</table>

<br/>
<div id="footer">
Copyright © BiharBakery.com
</div>




</body>
</html>
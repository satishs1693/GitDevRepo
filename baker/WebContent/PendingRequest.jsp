
<%@page import="connection.DataBaseConnection"%>
  <%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<head>
<style>
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
border-radius: 12px;
width: 200px;
pointer:cursor;
}

</style>
</head>
<body background="images/images (14).jpg">
<div  style="height:5%; width:100%;">
<div  style="height:100%; width:20%;float:left;">
<img src="images/chef-giving-thumbs-up-clipart-picture-cartoon-character-37363570.jpg" >
</div>

<h1 style=" font-size:400%;color:#003366;float:left;font-family:Brush Script MT;margin-top:10px"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pending Requests</b></h1>
</div>


<br><br><br><br><br><br><br>
<div style=" float: right;">
<a href="AdminHome.jsp"><button class="button" name="LogOut">Log Out</button></a>
</div>



<table style=" font-size:100%;color:#5e0231;font-family:Brush Script MT;margin-top:70px"  BORDER="2" CELLPADDING="2" CELLSPACING="2" align="center">

<tr>
<th style="font-size:200%;float:Center;">
&nbsp;&nbsp;&nbsp;<em><u>Order Id</u>
</em>&nbsp;&nbsp;&nbsp;	
</th>
<th style=" font-size:200%; float:Center;">
&nbsp;&nbsp;&nbsp;&nbsp;<em><u>Confirm </u> 
</em>&nbsp;&nbsp;&nbsp;
</th>

<% Connection con =  new DataBaseConnection().createConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select ORDERID from bakeryOrder1 where STATUS=0");
    while(rs.next())
    {
    %> <tr>
    <td style=" font-size:200%; float:Center;"><b><%= rs.getLong("ORDERID") %></b></td>
    <td style=" font-size:200%; float:Center;"><a href="AdminConfirmOrderService?order_id=<%=rs.getLong("ORDERID")  %>">confirm</td>
       </tr>
    	
    <%
    }
    %>

</table>




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
<style>
#footer{
margin:0;
position:fixed;
}
</style>
</div>
</body>
</html>
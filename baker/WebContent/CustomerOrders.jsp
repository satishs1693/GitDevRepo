<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="connection.DataBaseConnection"%>
  <%@page import="java.sql.*"%>
  <%@ page import=" javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
a:link, a:visited { 
    color: inherit;
    text-decoration: none;
    cursor: auto;
}

a:link:active, a:visited:active { 
    color:inherit;
}
th,td
{
padding:2px;}

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
<h1 style=" font-size:400%;color:#003366;float:left;font-family:Brush Script MT;"><b>&nbsp;Bihar Bakery</b></h1>

</div>
<div  style=" height:80%;width:20%;float:left; ">
<div style=" float: right;">
<br><br><br><br>
<a href="CustomerHome.jsp"><button class="button" name="LogOut" >Back</button></a>
</div>



</div>
</div>
<table height=4% style="width:100%;  background-color :#003366;">
<tr >
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="CustomerHome.jsp">HOME</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="AboutUs.jsp">ABOUT US</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ProductDisplayService">PRODUCTS</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ContactUs.jsp">CONTACT US</a></font></td> 
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="#">My Orders</a></font></td> 

</tr>

</table>
<br>
<br>
<br>
<br>
<br>
<table  width="50%" style=" font-size:150%;color:#003366;font-family:Brush Script MT;"  BORDER="2"  align="center">

<tr>
<th style="font-size:150%;float:Center;" colspan="2">
&nbsp;&nbsp;&nbsp;<em><u>Order Id</u>
</em>&nbsp;&nbsp;&nbsp;	
</th>


<% Connection con =  new DataBaseConnection().createConnection();
    PreparedStatement st= null;
    HttpSession session1 =request.getSession();
	String name =(String)session1.getAttribute("NAME");
    st= con.prepareStatement("select * from bakeryOrder1 where CUSTOMERID IN( SELECT ID FROM BAKERYCUSTOMER2 WHERE FIRSTNAME=? ) ") ;
    st.setString(1,name);
    ResultSet rs = st.executeQuery();
    while(rs.next())
    {
    %> <tr>
    <td style=" font-size:100%; float:Center;"><b><%= rs.getLong("ORDERID") %></b></td>
    <td><% int status= rs.getInt("STATUS");
    	if( status==0 )
    	{
    		%> <b>Pending</b>
    	<% 
    	} 
    	else
    	{
    		%><b>Approved</b>
    		<br>
    		It will be delivered to <%=rs.getString("ADDRESS") %> IN 2 HOURS</b>
         <% 
    	}
    %>
    </td>
       </tr>
    	
    <%
    }
    %>

</table>

</br>
</br>
</br>
</br>
</br>
<div id="footer">
Copyright © BiharBakery.com
</div>
</body>
</html>
<%@page import="connection.DataBaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*"%>
 <%@ page import ="connection.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<a href="CustomerLogoutService"><button class="button" name="LogOut" >Log Out</button></a>
</div>



</div>
</div>
<table height=4% style="width:100%;  background-color :#003366;">
<tr >
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="CustomerHome.jsp">HOME</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="AboutUs.jsp">ABOUT US</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ProductDisplayService">PRODUCTS</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ContactUs.jsp">CONTACT US</a></font></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="CustomerOrders.jsp">MY ORDERS</a></font></td>  
</tr>
</table>

<%  Connection con = new DataBaseConnection().createConnection(); 
    long OrderId =Long.parseLong( request.getParameter("id"));
    System.out.println(OrderId);
    PreparedStatement ps = con.prepareStatement(" select * from bakeryOrder1 where ORDERID=?");
    ps.setLong(1,OrderId);
    ResultSet rs = ps.executeQuery();
    
    if(rs.next())
    {
    	
    	int status= rs.getInt("STATUS");
    	if( status==0 )
    	{
    		%><h6 style=" font-size:100%;color:#5e0231;float:absolute;font-family:Brush Script MT;"><b>YOUR ORDER ID <%=rs.getLong("ORDERID")%> IS STILL PENDING</b>
    	<% 
    	} 
    	else
    	{
    		%><h6 style=" font-size:100%;color:#5e0231;float:absolute;font-family:Brush Script MT;"><b>YOUR ORDER ID <%=rs.getLong("ORDERID")%> IS APPROVED
    		<br>
    		<br>
    		<br>
    		<br>
    		It will be delivered to <%=rs.getString("ADDRESS") %> IN TWO HOURS</b></h6>
         <% 
    	}
    }
    	
   
    else
    {
    	System.out.println(" Error while placing order");
    }
    
    
    ps.close();
    con.close();
    %>
    
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
    <br/>
    <br/>
    <br/>
    <br/>
    
<div id="footer">
Copyright © BiharBakery.com
</div>
</body>
</html>
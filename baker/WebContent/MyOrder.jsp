<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>
 <%@ page import ="connection.*"  %>
 <%@ page import ="javaBeans.Order" %>
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
<h1 style=" font-size:400%;color:#003366;float:left;font-family:Lucida Handwriting;"><b>&nbsp;Order Items</b></h1>

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

<table style=" font-size:100%;color:#5e0231;float:center;font-family:Lucida Handwriting;"  BORDER="2" CELLPADDING="2" CELLSPACING="2" align="center">
<tr>
<th style="font-size:150%;float:Center;">
&nbsp;&nbsp;&nbsp;<em><br><u>Product Name</u>
</em>&nbsp;&nbsp;&nbsp;	
</th>
<th style=" font-size:150%; float:Center;">
&nbsp;&nbsp;&nbsp;&nbsp;<em><br><u>Price </u> 
</em>&nbsp;&nbsp;&nbsp;
</th>
</tr>
<% 
 

Connection con = new DataBaseConnection().createConnection();
    PreparedStatement ps = con.prepareStatement(" select * FROM BAKERYITEM1 WHERE ADDEDINCART=1");
    ResultSet rs= ps.executeQuery();
    while(rs.next())
    {
    	%>
    		<tr>
    		<td><%=rs.getString("ITEMNAME") %></td>
    		<td><%=rs.getFloat("PRICE") %></td>
    		
    		</tr>
    	<%
    	}
    	%>
<tr> <td style="font-size:150%;float:Center;">&nbsp;&nbsp;&nbsp;<em>Total Bill
</em>&nbsp;&nbsp;&nbsp;	</td>
<td> <% ps=con.prepareStatement(" select sum(PRICE) Bill from BAKERYITEM1 where ADDEDINCART=1");
                                          rs = ps.executeQuery();
                                          if(rs.next())
                                          {
                                        	  out.print( rs.getFloat("Bill"));
                                          }
                                          %></td> </tr>

<tr> <td colspan ="2" align ="center"><a href= "Status.jsp?id=<%=request.getAttribute("OrderID") %> "><input type="button" value ="Confirm Order" class="button"></a> </td></tr>

</table>


</form>
</div>
</div>
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
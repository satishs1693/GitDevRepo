<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*"  %>
    <%@ page import ="javaBeans.*"  %>
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
<a href="CustomerHome.jsp"><button class="button" name="LogOut" >Back</button></a>
</div>

</div>
</div>
<form name="RequestForm" action="AddToCartServices" method="post">
<table height=4% style="width:100%;  background-color :#003366;">
<tr >
<td align="center" style="color: #f6f1ed ;"><font face="verdana" siz><a href="CustomerHome.jsp">HOME</td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="AboutUs.jsp">ABOUT US</td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ProductDisplayService">PRODUCTS</td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ContactUs.jsp">CONTACT US</td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="CustomerOrders.jsp">MY ORDERS</td>    
</tr>
</table>


<div style="float:center; margin-left:24%;">
<h2 style=" font-size:200%;color:#003366;margin-left:24%;float:center;font-family:Brush Script MT;"> <b>

Our Products&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2> 
<table style=" font-size:100%;color:#003366;float:left;font-family:Brush Script MT;"  BORDER="2" CELLPADDING="2" CELLSPACING="2">
<tr>
<th style="font-size:150%;float:Center;">
&nbsp;&nbsp;&nbsp;<em><br><u>Product Name</u>
</em>&nbsp;&nbsp;&nbsp;	
</th>
<th style=" font-size:150%; float:Center;">
&nbsp;&nbsp;&nbsp;&nbsp;<em><br><u>Price </u> 
</em>&nbsp;&nbsp;&nbsp;
</th>

<th style=" font-size:150%; float:Center;">
&nbsp;&nbsp;&nbsp;&nbsp;<em><br><u>Quantity </u> 
</em>&nbsp;&nbsp;&nbsp;
</th>

<th style=" font-size:150%; float:Center;">
&nbsp;&nbsp;&nbsp;&nbsp;<em> <br><u>Home Delivery</u> 
</em>&nbsp;&nbsp;&nbsp;
</th>

<th style=" font-size:150%; float:Center;">
&nbsp;&nbsp;&nbsp;&nbsp;<em><br><u>Cart</u>
</em>&nbsp;&nbsp;&nbsp;
</th>
</tr>

<% 

ArrayList<Items> item_list = new ArrayList<Items>();
item_list = (ArrayList) request.getAttribute("itemList");;
 Iterator itr = item_list.iterator();
 while( itr.hasNext())
 {
	 Items item = (Items) itr.next();
	 int i =item.gethomeDelivery();
	 String str=null;
     if(i==0)
     {
    	str="No";
   	 }
     else 
    	 str="Yes";

	 %>
	 <tr>
	 <td style=" font-size:200%" align="center"><%  out.print(item.getItemName()); %></td>
	 <td style=" font-size:100%" align="center"><%  out.print(item.getPrice()); %></td>
	 <td style=" font-size:100%" align="center"><%  out.print(item.getQuantity()); %></td>
	 <td style=" font-size:100%" align="center"><%  out.print(str); %></td>
	 <td style=" font-size:100%" align="center"> <%  if(i==1)
		 {   %> <input type="checkbox" name="ItemList" value="<%=item.getItemId() %>"> Add to cart
		      
		<% }
	         else
	         { out.print(" Cannot be added to Cart");}
		 
		 %></td>
		 </tr>
 <%
 }
 %>
<tr>
<td colspan="5" align="center"><input type="submit" value=" Place Order"  class="button"  ></td>
</tr>

</table>
</div>
</form>

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
<br/>
<br/>
<br/>
<br/>
<br/>
<div id="footer">
Copyright © BiharBakery.com
</div>


</div>
</body>
</html>
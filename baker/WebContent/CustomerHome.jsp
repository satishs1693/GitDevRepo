<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

.button {
background-color:grey;
font-size: 24px;
border-radius: 12px;
width: 200px;
}


nav ul{
    margin: 0;
    padding: 0;
text-align:center;
}
nav ul li {
   display: inline-block;
    list-style-type: none;padding:30px ;margin:0;
}
/* Create a style for the first level items */
nav > ul > li > a {
    color:#262626;
	margin:0;
	padding:10px
    background-color:none;
    display: block;
    text-decoration: none;
}
@-webkit-keyframes cf4FadeInOut {
 0% {
   opacity:1;
 }
 17% {
   opacity:1;
 }
 25% {
   opacity:0;
 }
 92% {
   opacity:0;
 }
 100% {
   opacity:1;
 }
}
@-moz-keyframes cf4FadeInOut {
 0% {
   opacity:1;
 }
 17% {
   opacity:1;
 }
 25% {
   opacity:0;
 }
 92% {
   opacity:0;
 }
 100% {
   opacity:1;
 }
}
@-o-keyframes cf4FadeInOut {
 0% {
   opacity:1;
 }
 17% {
   opacity:1;
 }
 25% {
   opacity:0;
 }
 92% {
   opacity:0;
 }
 100% {
   opacity:1;
 }
}
@keyframes cf4FadeInOut {
 0% {
   opacity:1;
 }
 17% {
   opacity:1;
 }
 25% {
   opacity:0;
 }
 92% {
   opacity:0;
 }
 100% {
   opacity:1;
 }
}
#ritu {
  position:relative;
   margin:0 auto;
}
#ritu img {
  position:absolute;
  left:0;
}
#ritu img {
  -webkit-animation-name: cf4FadeInOut;
  -webkit-animation-timing-function: ease-in-out;
  -webkit-animation-iteration-count: infinite;
  -webkit-animation-duration: 8s;
-moz-animation-name: cf4FadeInOut;
  -moz-animation-timing-function: ease-in-out;
  -moz-animation-iteration-count: infinite;
  -moz-animation-duration: 8s;
  -o-animation-name: cf4FadeInOut;
  -o-animation-timing-function: ease-in-out;
  -o-animation-iteration-count: infinite;
  -o-animation-duration: 8s;
  animation-name: cf4FadeInOut;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;
  animation-duration: 8s;
}
#ritu img:nth-of-type(1) {
  -webkit-animation-delay: 6s;
  -moz-animation-delay: 6s;
  -o-animation-delay: 6s;
  animation-delay: 6s;
}
#ritu img:nth-of-type(2) {
  -webkit-animation-delay: 4s;
  -moz-animation-delay: 4s;
  -o-animation-delay: 4s;
  animation-delay: 4s;
}
#ritu img:nth-of-type(3) {
  -webkit-animation-delay: 2s;
  -moz-animation-delay: 2s;
  -o-animation-delay: 2s;
  animation-delay: 2s;
}
#ritu img:nth-of-type(4) {
  -webkit-animation-delay: 0;
  -moz-animation-delay: 0;
  -o-animation-delay: 0;
  animation-delay: 0;
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


<br><br><br><br><br><br>

<div style=" float: right;">
<a href="CustomerLogoutService"><button class="button" name="LogOut" >Log Out</button></a>
</div>

</div>
<table height=4% style="width:100%;  background-color :#003366;">
<tr >
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="#">HOME</a></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="AboutUs.jsp">ABOUT US</a></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ProductDisplayService">PRODUCTS</a></td>
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="ContactUs.jsp">CONTACT US</a></td> 
<td align="center" style="color: #f6f1ed ;"><font face="verdana" size =4><a href="CustomerOrders.jsp">MY ORDERS</a></td>
</tr>
</table>

<div id="ritu" class="shadow">
  <img src="images/header-raves.jpg" width=1345 height=200 >
 <img src="images/muffins.jpg" width=1345  height=200>
  <img src="images/pizza.jpg"  width=1345  height=200  >
  <img src="images/cookies.jpg" width=1345 height=200>
 <img src="images/cake.jpg" width=1345 height=200>
</div>
<br><br><br><br><br><br><br><br><br><br><br>
<table style="height:20%; width:100%;float:left;">
<tr >
<td >

<p style=" font-size:200%;color:#003366;float:center;font-family:Brush Script MT;"> <b>
Bihar Bakery</b></p> <pre>
<p style=" font-size:100%;color:#5e0231;float:left;font-family:Lucida Handwriting;  margin-left:10px;">
This Bihar Bakery was developed by Adiba and Abhishek in 2000 
which is being expanding all over India. We Provide services 
for special occasions such as wedding,birthday parties,
anniversaries or even business events and also for people 
who have allergies or sensitivities to certain foods such as 
nuts,peanuts or gluten.We provide wide range of cakes designs.
We also specialize in traditional/hand made types of bread made 
with locally milled flour,without flour blending agents or treatment
agents,baking what is sometimes referred to as artisan bread.
</pre></p>
</td>
<td>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


Timings</h2>

<table style="height:20%; width:100%;float:right; margin-right:100px;"  BORDER="3" CELLPADDING="3" CELLSPACING="3">

<tr>
<th>Day</th>
<th>Opening Time </th>
<th>Closing Time </th>
</tr>
<tr>
<td> Monday </td>
<td> 7:00 am</td>
<td> 8:00 pm</td>
</tr>
<tr>
<td> Tuesday </td>
<td> 7:00 am</td>
<td> 8:00 pm</td>
</tr>
<tr>
<td> Wednesday</td>
<td> 7:00 am</td>
<td> 8:00 pm</td>
</tr>
<tr>
<td> Thursday </td>
<td> 7:00 am</td>
<td> 8:00 pm</td>
</tr>
<tr>
<td> Friday </td>
<td> 7:00 am</td>
<td> 9:00 pm</td>
</tr>
<tr>
<td> Saturday </td>
<td> 7:00 am</td>
<td> 10:00 pm</td>
</tr>
<tr>
<td> Sunday </td>
<td> 7:00 am</td>
<td> 10:00 pm</td>
</tr>
</table>
</td>
</tr>
</table>
<div id="footer">
Copyright © BiharBakery.com
</div>
</body>
</html>
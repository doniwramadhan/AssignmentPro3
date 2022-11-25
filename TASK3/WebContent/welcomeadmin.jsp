<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<style>
body {
  font-family: Arial;
  margin: 0;
}

.header {
  padding: 20px;
  text-align: center;
  background: yellow;
  color: Black;
  font-size: 30px;
  
}
.nav {
  padding: 10px;
  text-align: center;
  background: white;
  color: black;
  font-size: 20px;
}
.sec{
padding: 100px;
  text-align: center;
  background: white;
  color: Black;
  font-size: 30px;
}
.foot{
padding: 20px;
  text-align: ;
  background: black	;
  color: White;
  font-size: 10px;
}
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}


li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: #111;
}
.social-media-icon {
    padding: 5px;
    background: #222;
    color: #fff;
    border-radius: 4px;
}

a.social-media-icon:hover{
    background: #fff!important;
    color: #222!important;
}

la{
float: right;
}

la a {
  display: block;
  color: yellow;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
la a:hover {
  background-color: #111;
}
.social-media-icon {
    padding: 5px;
    background: #222;
    color: #fff;
    border-radius: 4px;
}

a.social-media-icon:hover{
    background: #fff!important;
    color: #222!important;
}

.button1 {
background-color: #4CAF50;

} /* Green */

.button2 {
background-color: #008CBA;
float: left
} /* Blue */
</style>
</head>
<body>

<div class="header">
	<img src="http://logo-logos.com/2016/12/Amazon_logo.png" width=80px height=50px align="right"><br>
	<h1>Amajon</h1>
	<p>Your lovely marketplace</p>		
</div>

<div class="nav">
	<ul>
  <li><a href="welcome.jsp">AboutUs</a></li>
  <li><a href="news.asp">Contact</a></li>
  <li><a href="contact.asp">Detail</a></li>
  <li><a href="about.asp">Service</a></li>
  <la><a href="logout.jsp">Logout</a></la>
  
</ul>
</div>
<div class="sec">
	<h1>Welcome "Admin"</h1>
	<form method="post" action=""><button class="button button1"> Add Electronic Product</button></form>
	
	<form method="post" action="formfoodproduct.jsp"><button class="button button1">Add Food Product</button></form>
	
	<form method="post" action=""><button class="button button1">Add Education Product</button></form>
	
	<form method="post" action=""><button class="button button1">Add Medical Product</button></form>
	
	<form method="post" action="<%=request.getContextPath()%>/list"><button class="button button2">View Food Product</button></form>
	
	
</div>

<div class="foot">
	<h1></h1>
	<p>doniwramadhan@gmail.com</p>
	<p>phone: 0821696969</p>
	<p>Kuningan, Jakarta Selatan, Indonesia </p>
	
	
	<a class="social-media-icon" href="https://www.facebook.com/"><span class="fab fa-facebook"></span></a>
    
    <a class="social-media-icon" href="https://twitter.com/"><span class="fab fa-twitter"></span></a>
	
	<a class="social-media-icon" href="https://instagram.com/"><span class="fab fa-instagram"></span></a>
</div>
</body>
</html>
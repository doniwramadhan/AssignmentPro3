<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
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
  text-align: ;
  background: white;
  color: Black;
  font-size: 15px;
}
.foot{
padding: 20px;
  text-align: ;
  background: black	;
  color: White;
  font-size: 10px;
}
.button {
  float: right;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
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
table {
	border-collapse: collapse;
  width: 100%;
}
th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #04AA6D;
  color: white;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
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
</ul>
</div>
<div class="sec">
        <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
       Your Shopping Cart

        <table width="100%" border="">
            <tr>
                <th>Kode Produk</th>
                <th>Nama Produk</th>               
                <th>Quantity</th>
                <th>Harga</th>
                <th>Total</th>                
            </tr>
            <jsp:useBean id="cart" scope="session" class="model.CartBean" />
            <c:if test="${cart.lineItemCount==0}">
                <tr>
                    <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
                </tr>
            </c:if>
            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                <form name="item" method="POST" action="CartController">
                    <tr>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.kd_produk}"/></b><br/></td>
                        <td>  <c:out value="${cartItem.nm_produk}"/></font></td>
                        <td>
                            <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                            <input type='text' name="qty" value='<c:out value="${cartItem.qty}"/>' size='2'> 
                            <input type="submit" name="action" value="Update">
                            <input type="submit" name="action" value="Delete">
                        </td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.harga}"/></font></td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.totalHarga}"/></font></td>
                    </tr>
                </form>
            </c:forEach>
            <tr>
                <td colspan="2"> </td>
                <td> </td>
                <td></td>
                <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: Rp. <c:out value="${cart.orderTotal}"/></font></td>
        </table>
           
        <form method="post" action="list.jsp"><button class="button button1">Invoice</button></form>
            <form method="post" action="foodproduct.jsp"><button class="button button2">Add another item</button></form>  
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
    </body>
</html>
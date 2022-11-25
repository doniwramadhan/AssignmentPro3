<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	href="list.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food List</title>
</head>
<body>


	<br><br><br>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/index.jsp"
					class="nav-link">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/cart.jsp"
					class="nav-link">Cart</a></li>
			</ul>
			</nav>
	</header>
	<br>

	<div class="row">
	<div class="container">
			<h3 class="text-center">List of Data</h3>
			<hr>
			<table class="table table-bordered">
				<thead>
					<tr>
				<td>Kode Produk</td>
                <td>Nama Produk</td>               
                <td>Quantity</td>
                <td>Harga</td>
                <td>Total</td>  
					</tr>
				</thead>
				<tbody>
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
                        <td> <c:out value="${cartItem.qty}"/> </td>
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
			
		</div>
	</div>
	<input type="submit" value="Download PDF" name="download" onclick="window.print()" /> 
</body>
</html>
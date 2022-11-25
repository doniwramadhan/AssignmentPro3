<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	href="list.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Food List</title>
</head>
<body>

<form method="post" action="welcomeadmin.jsp"><button class="button button1">Back</button></form>
	<br>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<ul class="navbar-nav">
				<li><a href="welcomeadmin.jsp"
					class="nav-link">Admin</a></li>
			</ul>
			</nav>
	</header>
	<br>

	<div class="row">
	<div class="container">
			<h3 class="text-center">List of Data</h3>
			<hr>
			
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Id Produk</th>
						<th>Kode Produk</th>
						<th>Nama Produk</th>
						<th>Harga Produk</th>
						<th>Quantity</th>
						<th>Operation</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="pm" items="${listTask}">

						<tr>
							<td><c:out value="${pm.id_produk}" /></td>
							<td><c:out value="${pm.kd_produk}" /></td>
							<td><c:out value="${pm.nm_produk}" /></td>
							<td><c:out value="${pm.harga_produk}" /></td>
							<td><c:out value="${pm.qty }" /></td>
							<td><a href="edit?id=<c:out value="" />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value="" />">Delete</a></td>
								
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
			<div class="container text-left">

				<a href="formfoodproduct.jsp" class="btn btn-success">Add
					New Product</a>
			</div>
		</div>
	</div>
	
</body>
</html>
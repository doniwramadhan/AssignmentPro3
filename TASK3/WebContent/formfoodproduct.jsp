<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Form Food Product</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>	
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
.button1 {background-color: crimson;}	
</style>
</head>
<body>
<form method="post" action="welcomeadmin.jsp"><button class="button button1">Back</button></form>
<br><br><br>
<header>

</header>
<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${pm == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
				<h2>
				
						<c:if test="${pm == null}">
            			Add New Product
            		</c:if>
					</h2>
				</caption>
								<c:if test="${pm != null}">
					<input type="hidden" name="id" value="<c:out value='${pm.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Product Code</label> <input type="text"
						value="<c:out value='${pm.kd_produk}' />" class="form-control"
						name="kd_produk" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Product Name</label> <input type="text"
						value="<c:out value='${pm.nm_produk}' />" class="form-control"
						name="nm_produk">
				</fieldset>

				<fieldset class="form-group">
					<label>Cost</label> <input type="text"
						value="<c:out value='${pm.harga_produk}' />" class="form-control"
						name="harga_produk">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Quantity</label> <input type="text"
						value="<c:out value='${pm.qty}' />" class="form-control"
						name="qty">
				</fieldset>
							
				<button type="submit" class="btn btn-success">Add</button>
				</form>
			</div>
		</div>
	</div>
	
	
</body>
</html>
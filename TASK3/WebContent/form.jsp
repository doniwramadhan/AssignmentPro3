<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Formpage</title>
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
<form method="post" action="./index.jsp"><button class="button button1">Home</button></form>
<br><br><br>
<header>
<nav class="navbar navbar-expand-md navbar-dark" style="background-color: blue">
<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Context</a></li>
			</ul>
		</nav>

</header>
<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${task != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${task == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
				<h2>
						<c:if test="${task != null}">
            			Edit 
            		</c:if>
						<c:if test="${task == null}">
            			Add New 
            		</c:if>
					</h2>
				</caption>
								<c:if test="${task != null}">
					<input type="hidden" name="id" value="<c:out value='${task.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Username</label> <input type="text"
						value="<c:out value='${task.username}' />" class="form-control"
						name="username" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						value="<c:out value='${task.password}' />" class="form-control"
						name="password">
				</fieldset>

				<fieldset class="form-group">
					<label>Firstname</label> <input type="text"
						value="<c:out value='${task.firstname}' />" class="form-control"
						name="firstname">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Lastname</label> <input type="text"
						value="<c:out value='${task.lastname}' />" class="form-control"
						name="lastname">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${task.address}' />" class="form-control"
						name="address">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Phone</label> <input type="text"
						value="<c:out value='${task.phone}' />" class="form-control"
						name="phone">
				</fieldset>
		
				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${task.email}' />" class="form-control"
						name="email">
				</fieldset>
				
				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
	
	
</body>
</html>
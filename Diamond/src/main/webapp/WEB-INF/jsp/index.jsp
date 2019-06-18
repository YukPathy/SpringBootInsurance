<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--index.html-->
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="<c:url value='/css/main.css' />" />
<link rel="stylesheet" href="<c:url value='/css/style.css' />" />
</head>
<body>
<h2>Diamond | Admin Login</h2>
<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">Diamond NSure
				<!-- <a class="navbar-brand" href="#">Spring Boot</a> -->
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
				</ul>
			</div>
		</div>
	</nav>

<div class="col-sm-12 col-sm-offset-0">
<div data-ng-view></div>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.angularjs.org/1.6.0/angular.min.js"></script>
<script src="https://code.angularjs.org/1.6.0/angular-route.min.js"></script>
<script src="https://code.angularjs.org/1.6.0/angular-cookies.min.js"></script>
<script src="<c:url value='/js/app.js' />"></script>
<script src="<c:url value='/js/service/user_service.js' />"></script>
<script src="<c:url value='/js/controller/user_controller.js' />"></script>
</body>
</html>
<!-- 
<html lang="en">
<body>
	<div>
		<div>
			<h1>Hello ${message}</h1>
			
			Click on this <strong><a href="client">link</a></strong> to visit Quotation page.
			
			response.sendRedirect(request.getContextPath()+"/adminLogin");	
		</div>
	</div>
</body>
</html> -->

<!-- page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Diamond | Admin Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='/css/main.css' />" rel="stylesheet"></link>
<link href="<c:url value='/css/style.css' />" rel="stylesheet"></link>
</head>
<body data-spy="scroll" data-target="#navbar-scroll" data-ng-app="myApp"  data-novalidate>
-->
<!-- /.container -->
<form name="userForm" data-ng-submit="vm.login()" role="form">
	<div class="container">
		<div class="starter-template">
		    <div class="form-group">
		        <label for="username">Username</label>
		        <input type="text" data-ng-model="vm.userForm.userName" name="userName" required />        
		        <span style="color:red" data-ng-show="userForm.userName.$dirty && userForm.userName.$invalid">
					<span data-ng-show="userForm.userName.$error.required">UserName is required.</span>
				</span>
		    </div>
		    <div class="form-group">
		        <label for="password">Password</label>
		        <input type="password" data-ng-model="vm.userForm.password" name="password" required />        
		        <span style="color:red" data-ng-show="userForm.password.$dirty && userForm.password.$invalid">
					<span data-ng-show="userForm.password.$error.required">Password is required.</span>
				</span>        
		    </div>
		    <div class="form-group">
		        <button type="submit" data-ng-disabled="form.$invalid || vm.dataLoading" class="btn btn-primary btn-sm">Login</button>
		    </div>
    </div>

	</div>
    
</form>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script> 

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.angularjs.org/1.6.0/angular.min.js"></script>
    <script src="https://code.angularjs.org/1.6.0/angular-route.min.js"></script>
    <script src="https://code.angularjs.org/1.6.0/angular-cookies.min.js"></script>
      <script src="<c:url value='/js/app.js' />"></script>
      <script src="<c:url value='/js/service/user_service.js' />"></script>
      <script src="<c:url value='/js/controller/user_controller.js' />"></script>
</body>-->
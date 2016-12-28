<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<style>
body {
		background-color: lightblue;
	}
</style>

<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<a class = "navbar-brand" href="#">Test.com</a>
</div>
<ul class="nav navbar-nav">
<li class= "active"><a href="#">Home</a></li>
<li><a href="#">Page 1</a></li>
<li><a href="#">Page 2</a></li>
<li><a href="#">Page 3</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="Register.jsp"><span class ="glyphicon glyphicon-user"></span>Register</a></li>
<li><a href="home.jsp"><span class ="glyphicon glyphicon-user"></span>Login</a></li>
</ul>
</div> 
</nav>

<div class = "container">
<h3>Welcome to the Test Site!</h3>
<p>You can Register/Login to proceed.</p>
</div>
</body>
</html>
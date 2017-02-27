<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="F"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Register</title>
<style>
body
{
    background: url('http://cdn.wallpapersafari.com/51/46/T52QBm.jpg')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
}

.form-control
	{
		width:500px;
	}
	
h2
{
	color:maroon;
	font-family:Comic Sans MS;
	margin: 30;
}

</style>
</head>
<body>
${msg}
<div class="container-wrapper">
	<div class="container" align="center">
	
	<F:form action="register" method="post">
	
                <h2>SIGN-UP</h2>
                
                <div class="form-group">
				<label>Name</label>
                 <F:input path="name" id="name" placeholder="Name" class="form-control" />
                 </div>
                 
                 <div class="form-group">
				<label>Username</label>
                <F:input path="username" placeholder="Username" class="form-control" />
                </div> 
                
                <div class="form-group">
				<label>Email-ID</label>
                <F:input path="email" placeholder="Email" class="form-control" />
                </div>
                 
                <div class="form-group">
				<label>Gender</label>
                <F:radiobutton path="gender" value="Male"/>Male&nbsp;
                <F:radiobutton path="gender" value="Female"/>Female<br>
                </div>
                
                <div class="form-group">
				<label>Contact Num</label>
                <F:input path="contact" placeholder="Contact Num" class="form-control"/>
                </div>
                
                <div class="form-group">
				<label>Password</label>
                <F:input path="password" placeholder="Password" class="form-control" />
                </div>
                
                <div class="form-group">
				<label>Address</label>
                <F:input path="address" placeholder="Address" class="form-control" />
                </div>
                
                <input type="submit" value="Register" class="btn btn-success btn-sm" />
            </F:form>
            </div>
            </div>
</body>
</html>
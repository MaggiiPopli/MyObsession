<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ include file="/WEB-INF/jsp/Header.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address</title>
<style>
body
{
    background: url('https://static1.squarespace.com/static/55a79fd9e4b0f140392f0238/t/55aab813e4b01f51ac6f429c/1437251606775/artistic-watercolor-background-pink-cool-wallpapers-2560x1600.jpg?format=1500w')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
}

label {
color:white;
}

.form-control
	{
		width:500px;
		}
h2{
	color:maroon;
	font-family:Comic Sans MS;
		margin: 30;
}
</style>
</head>
<body>
<div class="container-wrapper">
	<div class="container" align="center">
	
	<sf:form modelAttribute="shippingAddress">
	<h2>Shipping Address</h2>
	
	<div class="form-group">
	<label>Pincode</label>
	<sf:input path="pincode" id="pincode" class="form-Control"/>
	</div>
	
	<div class="form-group">
	<label>Name</label>
	<sf:input path="name" id="name" class="form-Control"/>
	</div>
	
	<div class="form-group">
	<label>Address</label>
	<sf:input path="address" id="address" class="form-Control"/>
	</div>
	
	<div class="form-group">
	<label>Locality</label>
	<sf:input path="locality" id="locality" class="form-Control"/>
	</div>
	
	<div class="form-group">
	<label>City</label>
	<sf:input path="city" id="city" class="form-Control"/>
	</div>
	
	<div class="form-group">
	<label>State</label>
	<sf:input path="state" id="state" class="form-Control"/>
	</div>
	
	<div class="form-group">
	<label>Contact</label>
	<sf:input path="contact" id="contact" class="form-Control"/>
	</div>
	<%-- <a href="${flowExecutionUrl}&_eventId=event1">next</a> --%>
	<input type="submit" value="Next" class="btn btn-default" name="_eventId_event1"/>
	</sf:form>
	
</div>
</div>
</body>
</html>
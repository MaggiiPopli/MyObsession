<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/jsp/Header.jsp" %>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
    background: url('https://static1.squarespace.com/static/55a79fd9e4b0f140392f0238/t/55aab813e4b01f51ac6f429c/1437251606775/artistic-watercolor-background-pink-cool-wallpapers-2560x1600.jpg?format=1500w')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
    color:white;
}
.btn
{
	align:centre;
}
h1
	{
		color:maroon;
	font-family:Comic Sans MS;
		margin: 30;
	}

</style>
</head>
<body>

<sf:form modelAttribute="orders">
<h1 align="center">Just One Step Away</h1>
<div class="col-sm-6" align="justify">
<h4>Shipping Address</h4>
Pincode : ${orders.sa.getPincode()}<br><br>
Name : ${orders.sa.getName()}<br><br>
Address : ${orders.sa.getAddress()}<br><br>
Locality : ${orders.sa.getLocality()}<br><br>
City : ${orders.sa.getCity()}<br><br>
State : ${orders.sa.getState()}<br><br>
Contact : ${orders.sa.getContact()}<br><br>
 </div>
 <div class="col-sm-6" align="left">
 
 Payment Mode: <br><br>
 ${orders.pm.getPaymentMode()}
 
 </div>

 <input type="submit" value="Place Order" class="btn btn-default" name="_eventId_event3"/>

 
<%-- <a href="${flowExecutionUrl}&_eventId=event3">Next Page</a>
 --%>
</sf:form>
</body>
</html>
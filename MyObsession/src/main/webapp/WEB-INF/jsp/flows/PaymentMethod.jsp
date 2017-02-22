<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
        <%@ include file="/WEB-INF/jsp/Header.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Gateway</title>
<style>
body
{
    background: url('https://static1.squarespace.com/static/55a79fd9e4b0f140392f0238/t/55aab813e4b01f51ac6f429c/1437251606775/artistic-watercolor-background-pink-cool-wallpapers-2560x1600.jpg?format=1500w')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 30;
}
</style>
</head>
<body>
<div class="container">
<div align="center">
<h3>SELECT PAYMENT METHOD</h3>

	<sf:form modelAttribute="payment">
	<div>
	<sf:radiobutton path="paymentMode" value="CASH"/>CASH<br><br>
	</div>
	<div>
	<sf:radiobutton path="paymentMode" value="CARD"/>CARD<br><br>
	</div>
	
	<input type="submit" value="next" name="_eventId_event2"/>
	
	</sf:form>

</div>
</div>
</body>
</html>  



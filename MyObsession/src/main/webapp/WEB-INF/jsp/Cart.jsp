<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body
	{
		background: url('http://sunshinehairdesigns.com/wp-content/uploads/2015/04/trend-video-background.jpg')no-repeat center fixed;
    	background-size: cover;
   	 	padding: 0;
    	margin: 0;
	}
	
	caption
	{
		font-style: italic;
		color: aqua;
		font-size: larger;
		margin: 10; 
		padding: 10;
	}

</style>
</head>
<body>
This is the ShoppingCart

<body ng-app="myApp" ng-controller="myCtrl">
<form action="/MyObsession/">
<table align ="center" border="7">
<caption>My Cart</caption>
<th>Cart_ID</th>
<th>Product_Name</th>
<th>Brand</th>
<th>Price</th>
<th>Quantity</th>

<tr ng-repeat="x in list | filter:search">
<td>{{x.cart_id}}</td>
<td>{{x.pName}}</td>
<td>{{x.pBrand}}</td>
<td>{{x.pPrice}}</td>
<td>{{x.quantity}}</td>
<%-- <td><a href="${flowExecutionUrl}&_eventId=event1">Next Page</a></td>
 --%>
</tr>
</table>
<input type="submit" value="Continue Shopping">

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.list=${pr}
});
</script>

 <a href="/MyObsession/buynow">Buy Now</a>
</form>
</body>
</html>
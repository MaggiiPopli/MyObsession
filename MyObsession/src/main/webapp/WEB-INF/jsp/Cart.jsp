<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<title>Insert title here</title>

<style>
body
	{
		background: url('http://1.bp.blogspot.com/-tRTq1Ai8HEk/UatFpSkl0EI/AAAAAAAASbI/ZSj3pXCnw2I/s1600/Beauty+Pink+Flower+Wallpaper.jpg')no-repeat center fixed;
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

<body ng-app="myApp" ng-controller="myCtrl">
<form action="/MyObsession/">
<table align ="center" border="7">
<caption>My Cart</caption>
<th>Cart_ID</th>
<th>Product ID</th>
<th>Product_Name</th>
<th>Brand</th>
<th>Price</th>
<th>Quantity</th>
<th>Subtotal</th>
<th>Remove</th>

<tr ng-repeat="x in list | filter:search">
<td>{{x.cart_id}}</td>
<td>{{x.pId}}</td>
<td>{{x.pName}}</td>
<td>{{x.pBrand}}</td>
<td>{{x.pPrice | currency:'Rs.'}}</td>
<td>{{x.quantity}}</td>
<td>{{x.pPrice*x.quantity | currency:'Rs.'}}</td>
<td><a href="/MyObsession/removeCart/{{x.pId}}"><i class="material-icons" style="color:purple">delete</i></a></td>

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
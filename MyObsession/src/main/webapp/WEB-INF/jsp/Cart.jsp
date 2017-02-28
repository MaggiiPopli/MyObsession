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
	
	h1
	{
		font-style: italic;
		color: aqua;
	
	}


</style>
</head>
<body>

<body ng-app="myApp" ng-controller="myCtrl">
<form action="/MyObsession/">
<div class="container" align="center">
<h1>My Cart</h1>
</div>
<table align ="center" border="7">
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
<div class="container" align="center">
<br><br><input type="submit" value="Continue Shopping"><br><br>
</div>
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.list=${pr}
});
</script>
<div class="container" align="center">
<a href="/MyObsession/buynow">Buy Now</a>
</div>
</form>
</body>
</html>
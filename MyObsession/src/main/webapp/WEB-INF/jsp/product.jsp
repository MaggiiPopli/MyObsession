<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
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
		margin: 10; 
		padding: 10;
	
	}
	.form-control
	{
		align:"left";
	}

</style>
<body ng-app="myApp" ng-controller="myCtrl">
<div class="container" align="center">
<h1>Product Details</h1>
<input type="text" class="form-control" placeholder="Search Here" ng-model="search" align="right">
</div>
<table align ="center" border="7">
<th>Product_ID</th>
<th>Product_Name</th>
<th>Brand</th>
<th>Price</th>
<th>Description</th>
<th>View Details</th>

<tr ng-repeat="x in list | filter:search">

<td>{{x.product_id}}</td>
<td>{{x.name}}</td>
<td>{{x.brand}}</td>
<td>{{x.price | currency:'Rs.'}} </td>
<td>{{x.description}}</td>
<td><a href="/MyObsession/ProductDetails/{{x.product_id}}"><i class="material-icons" style="color:purple";>info</i></a></td>
</tr>
</table>


<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.list=${pr}
});
</script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body ng-app="myApp" ng-controller="myCtrl">

<table border="1">
<th>Product_ID</th>
<th>Product_Name</th>
<th>Brand</th>
<th>Price</th>
<th>Description</th>
<tr ng-repeat="x in list">
<td>{{x.product_id}}</td>
<td>{{x.name}}</td>
<td>{{x.brand}}</td>
<td>{{x.price}}</td>
<td>{{x.description}}</td>
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

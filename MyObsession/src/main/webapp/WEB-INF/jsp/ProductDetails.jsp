<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:url var="a" value="/resources/image"/>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>View Product</title>
<style>

body

{
    background: url('http://www.slenderbodywraps.org/makeupprocu.jpg')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
  
}
</style>
</head>
<body>
<%-- <jsp:include page="Header.jsp"/>
  

<form action="addtocart">
<h>Product Details</h>

<div align="center">
  
<div class="add-tiles">
<div class="row">
<div class=panel">
  	<div class="col-sm-6">
  	
  	
  	
      <img src="${a}/${product.product_id}.jpg" class="img-responsive" style="width:40%;height:40%" alt="Image" align="middle">
      </div>
      </div>
      
    <div class="row">
  	<div class="col-sm-6" align="justify">

  	
      
 Product ID: ${product.product_id}<br>
 <br>
 Name:${product.name}<br>
 <br>
 Brand:${product.brand}<br>
 <br>
 Price:${product.price}<br>
 <br>
 Description:${product.description}<br>
 <br>
 <input type="submit" value="AddtoCart"/>
 </div>
  	</div>
  	
 </div>
 </div>
 </div>
</form> --%>

<!-- <form action="addtocart">
<input type="submit" value="AddToCart">
</form> -->

<a href="addtocart">click for cart</a>


</body>
</html>
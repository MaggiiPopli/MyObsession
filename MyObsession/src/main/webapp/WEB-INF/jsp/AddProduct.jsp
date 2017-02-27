<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="F"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Add Product</title>
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
<c:import url="/headerAdmin"></c:import>
<div class="container-wrapper">
	<div class="container" align="center">
	
	<F:form action="addproduct" method="post" enctype="multipart/form-data">
	
                <h2>Add Product</h2>
                 
                <div class="form-group">
				<label>Product ID</label>
               <F:input path="product_id"  placeholder="Product ID" class="form-control" />
               </div>
               
               	<div class="form-group">
				<label>Product Name</label>
                <F:input path="name" placeholder="Product Name" class="form-control"/>
                </div>
                
                <div class="form-group">
				<label>Product Brand</label>
                <F:input path="brand" placeholder="Brand" class="form-control"/>
                </div>
                
                <div class="form-group">
				<label>Product Price</label>
                <F:input path="price" placeholder="Product Price" class="form-control"/>
                </div>
                
                <div class="form-group">
				<label>Description</label>
                <F:input path="description" placeholder="Description" class="form-control"/> 
                </div>
                <div class="form-group">
				<label>Supplier Name</label>
                <F:select path="supplier_name" class="form-control">
                <F:option value="None" label="Supplier Name"/>
                <F:options items="${ListS}"/>
                </F:select>
                </div>
                
                <div class="form-group">
				<label>Category Name</label>
                <F:select path="category_name" class="form-control" >
                <F:option value="None" label="Category Name"/>
                <F:options items="${ListC}" />
                </F:select>
                </div>
                
                <div class="form-group">
				<label>Add Image:</label>
                <input type="file" name="image" class="form-control"/>
                </div>
                
                
				<input type="submit" value="Add" class="btn btn-success btn-sm" />
                          </F:form>
            </div>
        </div>
</body>
</html>
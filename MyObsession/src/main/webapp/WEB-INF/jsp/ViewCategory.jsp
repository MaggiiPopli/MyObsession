<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>categories</title>
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
		color: maroon;
	
	}


</style>

<body>


<form action="viewcategory">
<div class="container" align="center">
<h1>Categories</h1>
</div>
<table align ="center" border="7">

<th>Category ID</th>
<th>Category Name</th>
<th>Category Description</th>
<th>Edit</th>
<th>Delete</th>
<c:forEach var="x" items="${List}">
<tr>
<td>${x.category_id}</td>
<td>${x.category_name}</td>
<td>${x.category_description}</td>
<td><a href="editC/${x.category_id}">Edit</a></td>
<td><a href="deleteC/${x.category_id}">Delete</a></td> 
</tr>
</c:forEach>
</table>
</form>
</div>

</body>
</html>
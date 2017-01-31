<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="viewcategory">
<table border="1">
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


</body>
</html>
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
<form action="viewsupplier">
<table border="1">
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>Supplier Address</th>
<th>Edit</th>
<th>Delete</th>
<c:forEach var="x" items="${List}">
<tr>
<td>${x.supplier_id}</td>
<td>${x.supplier_name}</td>
<td>${x.supplier_address}</td>
<td><a href="edit/${x.supplier_id}">Edit</a></td>
<td><a href="delete/${x.supplier_id}">Delete</a></td> 
</c:forEach>
</table>
</form>


</body>
</html>
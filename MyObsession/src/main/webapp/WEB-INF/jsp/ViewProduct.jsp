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
<form action="/view">
<table>
<th>Product ID</th>
<th>Product Name</th>
<th>Brand</th>
<th>Price</th>
<th>Description</th>
<c:forEach var="x" items="${list}">
<tr>
<td>${x.product_id}</td>
<td>${x.name}</td>
<td>${x.brand}</td>
<td>${x.price}</td>
<td>${x.description}</td>
</c:forEach>
</table>
</form>


</body>
</html>
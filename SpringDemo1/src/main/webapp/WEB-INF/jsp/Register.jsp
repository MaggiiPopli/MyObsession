<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
body 
	{
		background-colour: #00FFFF;
	}
</style>

<form action ="Servlet" method = "post"> 
Username : <input type = "text" name = "username"><br><br>
Password : <input type = "Password" name = "password"><br><br>
Gender : <input type = "radio" name = "gender" value = "Male">Male&nbsp;
<input type = "radio" name = "gender" value = "Female">Female
<input type = "radio"  name = "gender" value = "Other">Other
<br>
Hobbies :<input type ="checkbox" name = "hobbies" value = "Music">Music<br>
<input type ="checkbox" name = "hobbies" value = "Reading">Reading<br>
<input type ="checkbox" name = "hobbies" value = "Dancing">Dancing<br>
<input type ="checkbox" name = "hobbies" value = "Watching TV">Watching TV<br>
Country : <select name="country">
<option value = "India" name = "country">India
<option value = "Africa" name = "country">Africa
<option value = "USA" name = "country">USA
<option value = "Nepal" name = "country">Nepal
<option value = "China" name = "country">China
</select><br>
Address : <textarea rows = "4" cols = "50" name = "address"></textarea><br>
<input type = "Submit" value = "Register">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body
{
    background: url('http://www.walldevil.com/wallpapers/a73/shopping.jpg')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
<div class="form-horizontal" action="register">

<p class="form-title"> Let's Get Started!</p>
<form class ="register" action="register"><br><br>
Name: <input type="text" placeholder="Name" /><br><br>
Username: <input type="text" placeholder="Username" /><br><br>
Email ID:<input type = "text" placeholder = "Email_ID"><br><br>
Contact:<input type = "text" placeholder = "contact num"><br><br>
Password:<input type="password" placeholder="Password" /><br>
Gender: <input type = "radio" placeholder = "gender" value = "Male">Male&nbsp;
<input type = "radio" name = "gender" value = "Female">Female
<input type = "radio"  name = "gender" value = "Other">Other
<br>
Address : <textarea rows = "4" cols = "50" name = "address"></textarea><br>
<input type = "Submit" value = "Register">
</form>
</div>
</div>

</body>
</html>
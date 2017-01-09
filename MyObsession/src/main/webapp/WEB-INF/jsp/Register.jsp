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
p.form-title
{
    font-family: 'Comic Sans MS' , sans-serif;
    font-size: 30px;
    font-weight: 600;
    font-style: italic;
    text-align: center;
    color: #FF5733;
    margin-top: 5%;
}
form.login input[type="text"], form.login input[type="password"]
{
    width: 100%;
    margin: 0;
    padding: 5px 10px;
    background: 0;
    border: 0;
    border-bottom: 1px solid #581845;
    outline: 0;
    font-style: italic;
    font-size: 17px;
    font-weight: 400;
    letter-spacing: 1px;
    margin-bottom: 5px;
    color: #581845;
    outline: 0;
}


form.login input[type="submit"]
{
    width: 100%;
    font-size: 15px;
    text-transform: uppercase;
    font-family: 'Comic Sans MS' , sans-serif;
    font-weight: 500;
    margin-top: 16px;
    outline: 0;
    cursor: pointer;
    color:#FF5733;
    letter-spacing: 1px;
}

form.login input[type="submit"]:hover
{
    transition: background-color 0.5s ease;
}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
<div align= "center" class="form-horizontal" action="register">

<p class="form-title"> Let's Get Started!</p>
<form class ="register" action="register"><br><br>
Name: <input type="text" name ="name" placeholder="Name"/><br><br>
Username: <input type="text" name="username" placeholder="Username"/><br><br>
Email:<input type = "text" name = "email" placeholder="Email_ID"><br><br>
Contact:<input type = "text" name = "contact" placeholder="Contact Num"><br><br>
Password:<input type="password" name ="password" placeholder="Password" /><br>
Gender: <input type = "radio" name = "gender" value = "Male">Male&nbsp;
<input type = "radio" name = "gender" value = "Female">Female
<input type = "radio"  name = "gender" value = "Other">Other
<br>
Address : <textarea rows = "4" cols = "50" name = "address" placeholder="Enter the complete Postal Address"></textarea><br>
<input type="submit" value="Register" class="btn btn-success btn-sm" />
</form>
</div>
</div>

</body>
</html>
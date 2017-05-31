<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  <script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
<title>Contact Here </title>

<style>
  body
  {
  	background: url('https://stephanywathey.files.wordpress.com/2016/05/light-pink-floral-background-tumblr-wallpapers-for-vintage-backgrounds-tumblr-pink-pic.jpg?w=1180&h=610&crop=1')no-repeat center fixed;
  	background-size: cover;
  	padding: 0;
  	margin: 0;
  }
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 5;
      border-radius: 0;
     background: url('http://cometrend.com/wp-content/uploads/2016/06/pro_cms.jpg')no-repeat center fixed;
    }
  
  
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" style="color:white" href="#">MyObsession</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a style="color:white" href="/MyObsession/">Home</a></li>
      
       
      <li class="dropdown">
      <a class="dropdown-toggle" style="color:white" data-toggle="dropdown" href="#">Category
      <span class="caret"></span></a>
      <ul class="dropdown-menu">  
      <c:forEach var="category" items="${ListC}">
      <li><a href="product/${category.category_name}">${category.category_name}</a></li>
   		</c:forEach>
      </ul>
      </li>
      
      <li class="dropdown">
        <a class="dropdown-toggle" style="color:white" data-toggle="dropdown" href="#">Brand
      <span class="caret"></span></a>
      <ul class="dropdown-menu">
      <li><a href="#"><img src="http://2.bp.blogspot.com/-8YZdogfwCNw/Up5-wmVh59I/AAAAAAAAAMg/x9f8w58ZgPs/s1600/maccosmetics.gif" style="width: 80%;height: 15%"></a></li>
      <li><a href="#"><img src="http://d24ozl8t5dfde2.cloudfront.net/image/data/logo/colorbar_logo.JPG" style="width: 80%;height: 15%"></a></li>
      <li><a href="#"><img src="https://d3nr84omjz8945.cloudfront.net/images/products/loreal_paris/logo/1.jpg" style="width: 80%;height: 15%"></a></li>
      <li><a href="#"><img src="http://www.joancorner.com/image/cache/data/test/NYX_logo-250x250.jpg" style="width: 80%;height: 15%"></a></li>
      <li><a href="#"><img src="http://logos-download.com/wp-content/uploads/2016/02/Revlon_logo_small.png" style="width: 80%;height: 15%"></a></li>
      <li><a href="#"><img src="http://www.firstbeauty.com.sg/wp-content/uploads/2014/10/INGLOT-logo-small.jpg" style="width: 80%;height: 15%"></a></li>
      </ul>
      </li>
      <li><a style="color:white" href="#">Offers</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    
    <li><a style="color:white" href="Admin"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
     <c:if test="${empty username}">
     
      <li><a style="color:white" href="sign-up"><span class="glyphicon glyphicon-user"></span> Sign-Up</a></li>
      <li><a style="color:white" href="sign-in"><span class="glyphicon glyphicon-log-in"></span> Sign-In</a></li>
      </c:if>
      
      
      <c:if test="${not empty username}">
      <li><a style="color:white" href="logout1"><span class="glyphicon glyphicon-user"></span> Sign-Out</a></li>
      <li>Hi, <%=session.getAttribute("username") %></li>
      </c:if>
    </ul>
    </div>
</nav>

<div class="full-width-img">

<img src="http://www.nykaa.com/skin/frontend/nykaa/theme202/images/contact/banner.jpg" alt="banner" style="width:100%;">

</div>


<div class="row">

<div class="col-sm-6">

<br><br><h2>&nbsp;Contact Us:</h2><br>
<h4>&nbsp;&nbsp;Tel : +91112343456</h4><br>
<h4>&nbsp;&nbsp;Mob : +91987654321</h4><br>
<h4>&nbsp;&nbsp;Email : myobsession@support.com</h4><br><br>

</div>

<div class="col-sm-6">

<br><br><h2>Office: </h2><br>
<h4>Bulding Number-2,(Second Floor)</h4><br>
<h4>Hauz Khas Village,</h4><br>
<h4>New Delhi</h4><br>
</div>
</div>

<div align="center">

<h5>@2017 MyObsession E-Retail Pvt. Ltd. All Rights Reserved</h5>

</div>

</body>
</html>
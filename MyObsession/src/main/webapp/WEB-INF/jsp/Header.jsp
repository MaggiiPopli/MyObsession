<%@page isELIgnored="false" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <title>MyObsession</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  <script>
    $(document).ready(function () {
        $('.dropdown-toggle').dropdown();
    });
</script>
  <style>
  body
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 5;
      border-radius: 0;
     background: url('https://theknockturnal.com/wp-content/uploads/2016/05/pro_cms.jpg')no-repeat center fixed;
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
      <li><a style="color:white" href="#">Home</a></li>
      
       
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
</body>
</html>
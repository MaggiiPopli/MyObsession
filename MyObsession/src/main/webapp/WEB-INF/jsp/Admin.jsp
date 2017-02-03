<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Admin</title>
<style>

body
{

    background: url('http://www.slenderbodywraps.org/makeupprocu.jpg')no-repeat center fixed;
    background-size: cover;
    padding: 0;
    margin: 0;
  
}
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
      <li><a href="product">MakeUp</a></li>
      <li><a href="#">Skin</a></li>
      <li><a href="#">Hair</a></li>
      <li><a href="#">Bath&Body</a></li>
      <li><a href="#">Fragrance</a></li>
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
        

      <li><a style="color:white" href="logout"><span class="glyphicon glyphicon-user"></span> Sign-Out</a></li>
  
    </ul>
    </div>
</nav>
<p>Welcome Admin</p>
<a href="addP">Add Product</a><br>
<a href="viewP">View Product</a>
<br>
<br>
<a href="addC">Add Category</a><br>
<a href="viewC">View Category</a>
<br> 
<br>
<a href="addS">Add Supplier</a><br>
<a href="viewS">View Supplier</a>

</body>
</html>
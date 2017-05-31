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
<style>
body
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 5;
      border-radius: 0;
     background: url('http://cometrend.com/wp-content/uploads/2016/06/pro_cms.jpg')no-repeat center fixed;
    }
    
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
      box-sizing:border-box;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>

  </head>
<body>
<c:import url="/header"></c:import>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://www.nykaa.com/media/bannerpro/d7.jpg" alt=>
              
      </div>

	<div class="item">
	<img src="http://www.nykaa.com/media/bannerpro/MAYBELLINE_HPSlidingBanner_desktop_05.jpg" alt=>
	</div>

      <div class="item">
        <img src="http://www.nykaa.com/media/wysiwyg/Loreal_Artistry_Hp_Sliding_Banner_G7.png" alt=>
              
      </div>
      <div class="item">
        <img src="http://www.nykaa.com/media/wysiwyg/Maybelline_HpSlidingBanner_R4.jpg" alt=>
              
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

  
<div class="container text-center">  
<div class="add-tiles">
<a href="#" class="pro-detail">
 <img src="resources/image/Discover.jpg" style="height:12%"></a><br>
   
  <div class="row">
  	<div class="col-sm-4">
      <img src="http://images.locanto.in/1325214300/Colorbar-Exclusive-offer-in-all-Cosmetic-Products_1.jpg" class="img-responsive" style="width:100%;height:50%" alt="Image">
      
    </div>
    <div class="col-sm-4"> 
      <img src="http://swatchandreview.com/wp-content/uploads/2014/10/MAC-Cosmetics-Heirloom-Mix-Holiday-2014-collection.jpg" style="width:100%; height:50%" alt="Image">    
    </div>
    <div class="col-sm-4">
      <img src= "http://angelajonsson.com/wp-content/uploads/2014/06/angelajonsson-lakme-ad-2014.jpg" class="image-responsive" style="width:100%;height:50%" alt="image">
      </div>
   </div>   

  </div>
</div><br>
<div class="container text-center">
<div class="add-tiles">
<a href="#" class="pro-detail">
<img src="http://www.nykaa.com/media/wysiwyg/Best-Sellers_26jan.png" alt=""></a><br>
    
<a href="#" target="_blank" class="img-tile">
<img src="http://www.nykaa.com/media/wysiwyg/Best_Of_Beauty_2016_Rev_P2.jpg" alt=""></a>

<a href="#" target="_blank" class="img-tile">
<img src="http://www.nykaa.com/media/wysiwyg/Going-on-a-Fancy-Date_prs.jpg" alt=""></a>

<a href="#" target="_blank" class="img-tile">
<img src="http://www.nykaa.com/media/wysiwyg/Dangerously_Hot_Nude_Lips_mob_jan.jpg" alt=""></a>
         
<a href="#" target="_blank" class="img-tile">
<img src="http://www.nykaa.com/media/wysiwyg/Join-The-Matte-Revolution.jpg" alt=""></a>
        

</div>
</div>

<footer class="container-fluid text-center">
  <div class="new-divP">
     <p>MyObsession.com is a premier online beauty and wellness destination. It offers beauty and wellness products for men and women at best prices. The products are 100 percent genuine and authentic, sourced directly from the brands. Visit MyObsession for a hassle-free shopping experience, the virtual makeover tool, beauty advice and assistance on the phone, free expert advice and articles on beauty trends and tutorials and celebrity looks. You have the option of paying via Cash on Delivery, Debit Card, Credit Card and Net Banking processed through secure and trusted gateways. Now it.s easy to shop for makeup, skincare, hair, bath and body, fragrances, herbal, wellness, mom and baby, and gift products on MyObsession. Avail of some great offers on beauty and wellness products as well. MyObsession also offers free home delivery for many brands.</p>
     <p>Browse through leading brands such as Ponds, Dove , Gillette, Johnson &amp; Johnson, L.Oreal, Garnier, Maybelline, Colorbar, Lakme, Revlon, Nyx, Sally Hansen, Khadi Natural, Himalaya Herbals , Fabindia, Vichy, Dermalogica, Sebamed, Tresemme, Paul Mitchell, TIGI, H20+, Schwarzkopf, Thalgo, Bath &amp; Body works, Victoria.s Secret, Playboy, Nautica, Esprit, Jaguar, Jovan, Axe, Park Avenue, Natrol, Nature's Bounty, Braun, Remington, Elchim,Avene ,Bioderma,Ducray. Let MyObsession make your beauty and wellness online shopping experience even better!

     </p>
     </div>
</footer>

</body>
</html>

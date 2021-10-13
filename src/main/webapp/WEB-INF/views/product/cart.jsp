<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>

<html lang="en">
  <head>
    <title>cart</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../liquorstore_master/css/animate.css">
    
    <link rel="stylesheet" href="../liquorstore_master/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../liquorstore_master/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../liquorstore_master/css/magnific-popup.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    
    <link rel="stylesheet" href="../liquorstore_master/css/flaticon.css">
    <link rel="stylesheet" href="../liquorstore_master/css/style.css">
   
  </head>
  <body>

   <c:import url="/WEB-INF/views/product/top_menu.jsp" />
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Liquor <span>store</span></a>
	      <div class="order-lg-last btn-group">
          <a href="#" class="btn-cart dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	<span class="flaticon-shopping-bag"></span>
          	<div class="d-flex justify-content-center align-items-center"><small>3</small></div>
          </a>
          <div class="dropdown-menu dropdown-menu-right">
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-1.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Bacardi 151</h4>
				    		<p class="mb-0"><a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-2.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Jim Beam Kentucky Straight</h4>
				    		<p class="mb-0"><a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity: 02</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-3.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Citadelle</h4>
				    		<p class="mb-0"><a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <a class="dropdown-item text-center btn-link d-block w-100" href="cart.html">
				    	View All
				    	<span class="ion-ios-arrow-round-forward"></span>
				    </a>
				  </div>
        </div>

	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="product.html">Products</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
                <a class="dropdown-item" href="cart.html">Cart</a>
                <a class="dropdown-item" href="checkout.html">Checkout</a>
              </div>
            </li>
	          <li class="nav-item	"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Cart <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">My Cart</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>
						    	<th>&nbsp;</th>
						    	<th>&nbsp;</th>
						    	<th>Product</th>
						      <th>Price</th>
						      <th>Quantity</th>
						      <th>total</th>
						      <th>&nbsp;</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox" checked>
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(images/prod-1.jpg);"></div>
						    	</td>
						      <td>
						      	<div class="email">
						      		<span>Jim Beam Kentucky Straight</span>
						      		<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
						      	</div>
						      </td>
						      <td>$44.99</td>
						      <td class="quantity">
					        	<div class="input-group">
				             	<input type="text" name="quantity" class="quantity form-control input-number" value="2" min="1" max="100">
				          	</div>
				          </td>
				          <td>$89.98</td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>

						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(images/prod-2.jpg);"></div>
						    	</td>
						      <td>
						      	<div class="email">
						      		<span>Jim Beam Kentucky Straight</span>
						      		<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
						      	</div>
						      </td>
						      <td>$30.99</td>
						      <td class="quantity">
					        	<div class="input-group">
				             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
				          	</div>
				          </td>
				          <td>$30.99</td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>

						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(images/prod-3.jpg);"></div>
						    	</td>
						      <td>
						      	<div class="email">
						      		<span>Jim Beam Kentucky Straight</span>
						      		<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
						      	</div>
						      </td>
						      <td>$35.50</td>
						      <td class="quantity">
					        	<div class="input-group">
				             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
				          	</div>
				          </td>
				          <td>$35.50</td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>

						    <tr class="alert" role="alert">
						    	<td>
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td>
						    		<div class="img" style="background-image: url(images/prod-4.jpg);"></div>
						    	</td>
						      <td>
						      	<div class="email">
						      		<span>Jim Beam Kentucky Straight</span>
						      		<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
						      	</div>
						      </td>
						      <td>$76.99</td>
						      <td class="quantity">
					        	<div class="input-group">
				             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
				          	</div>
				          </td>
				          <td>$76.99</td>
						      <td>
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>

						    <tr class="alert" role="alert">
						    	<td class="border-bottom-0">
						    		<label class="checkbox-wrap checkbox-primary">
										  <input type="checkbox">
										  <span class="checkmark"></span>
										</label>
						    	</td>
						    	<td class="border-bottom-0">
						    		<div class="img" style="background-image: url(images/prod-5.jpg);"></div>
						    	</td>
						      <td class="border-bottom-0">
						      	<div class="email">
						      		<span>Jim Beam Kentucky Straight</span>
						      		<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
						      	</div>
						      </td>
						      <td class="border-bottom-0">$40.00</td>
						      <td class="quantity border-bottom-0">
					        	<div class="input-group">
				             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
				          	</div>
				          </td>
				          <td class="border-bottom-0">$40.00</td>
						      <td class="border-bottom-0">
						      	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				            	<span aria-hidden="true"><i class="fa fa-close"></i></span>
				          	</button>
				        	</td>
						    </tr>
						  </tbody>
						</table>
					</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col col-lg-5 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<span>$20.60</span>
    					</p>
    					<p class="d-flex">
    						<span>Delivery</span>
    						<span>$0.00</span>
    					</p>
    					<p class="d-flex">
    						<span>Discount</span>
    						<span>$3.00</span>
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span>$17.60</span>
    					</p>
    				</div>
    				<p class="text-center"><a href="checkout.html" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
    			</div>
    		</div>
    	</div>
    </section>

    <c:import url="/WEB-INF/views/product/bottom_info.jsp" />
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="../liquorstore_master/js/jquery.min.js"></script>
  <script src="../liquorstore_master/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../liquorstore_master/js/popper.min.js"></script>
  <script src="../liquorstore_master/js/bootstrap.min.js"></script>
  <script src="../liquorstore_master/js/jquery.easing.1.3.js"></script>
  <script src="../liquorstore_master/js/jquery.waypoints.min.js"></script>
  <script src="../liquorstore_master/js/jquery.stellar.min.js"></script>
  <script src="../liquorstore_master/js/owl.carousel.min.js"></script>
  <script src="../liquorstore_master/js/jquery.magnific-popup.min.js"></script>
  <script src="../liquorstore_master/js/jquery.animateNumber.min.js"></script>
  <script src="../liquorstore_master/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="../liquorstore_master/js/google-map.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
  <script src="../liquorstore_master/js/main.js"></script>
    
  </body>
</html>
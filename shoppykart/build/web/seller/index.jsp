<%-- 
    Document   : index
    Created on : Jun 17, 2019, 1:27:22 PM
    Author     : Ketan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Shoppy Kart Seller</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta tag Keywords -->

	<!-- Custom-Files -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Bootstrap css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Main css -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- pop-up-box -->
	<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
	<!-- menu style -->
	<!-- //Custom-Files -->

	<!-- web fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //web fonts -->
        <style>
            .sub-entry{
                width:45%;
                float:left;
                
            }
            .sub-entry1{
                width:45%;
                float:right;
            }
            .button{
                text-align:center;
                padding-top:20px;
                clear:both;
            }
            
            </style>

</head>

<body>
 
    
	<!-- top-header -->
	<div class="agile-main-top">
		<div class="container-fluid">
			<div class="row main-top-w3l py-2">
				<div class="col-lg-4 header-most-top">
					<p class="text-white text-lg-left text-center">Offer Zone Top Deals & Discounts
						<i class="fas fa-shopping-cart ml-1"></i>
					</p>
				</div>
				<div class="col-lg-8 header-right mt-lg-0 mt-2" >
					<!-- header lists -->
					<ul style="float:right;">
                                           <form method="post" action="login.jsp">
							<li class="text-center  text-white">
                                                            <h5 style="color:yellow">Login</h5>
							</li>
                                                        
							<li class="text-center  text-white">
							<input type="email" class="form-control" placeholder="Email" name="email" required="">
						
							</li>
							<li class="text-center  text-white">
							<input type="password" class="form-control" placeholder="Password " name="pass" required="">
							</li>
							<li class="text-center text-white ">
							<input type="submit" class=" btn btn-warning"  value="Log in">
							</li>
							</form>
							
						
					</ul>
					<!-- //header lists -->
				</div>
			</div>
		</div>
	</div>

	<!-- Button trigger modal(select-location) -->
	<div id="small-dialog1" class="mfp-hide">
		<div class="select-city">
			<h3>
				<i class="fas fa-map-marker"></i> Please Select Your Location</h3>
			<select class="list_of_cities">
				
			</select>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //shop locator (popup) -->

	<!-- modals -->
	<!-- log in -->
	
	<!-- register -->

		
	<!-- //modal -->
	<!-- //top-header -->

	<!-- header-bottom-->
	<div class="header-bot">
		<div class="container">
			<div class="row header-bot_inner_wthreeinfo_header_mid">
				<!-- logo -->
				<div class="col-md-12 logo_agile">
					<h1 class="text-center" style="align:center">
						<a href="index.html" class="font-weight-bold font-italic">
							<img src="images/logo2.png" alt=" " class="img-fluid">Shoppy Kart
						</a>
					</h1>
				</div>
				<!-- //logo -->
				<!-- header-bot -->
				
			</div>
		</div>
	</div>
	<!-- shop locator (popup) -->
	<!-- //header-bottom -->
	<!-- navigation -->
	
			
	
	
	<!-- //navigation -->

	<!-- banner -->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<!-- Indicators-->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item item1 active">
				<div class="container">
					<div class="w3l-space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p>Lowest   
								<span>Cost</span> of</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4"> Doing
								<span> Business</span>
								
							</h3>
							<a class="button2" href="product.html">Join Now </a>
						</div>
					</div>
				</div>
			</div>
			
			<div class="carousel-item item3">
				<div class="container">
					<div class="w3l-space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p>
								<span>Highest</span> Growth</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">
								<span>Rate</span>
							</h3>
							<a class="button2" href="product.html">Join Now </a>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item4">
				<div class="container">
					<div class="w3l-space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p>
								<span>Most</span>Approachable</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">
								<span>Marketplace</span>
							</h3>
							<a class="button2" href="product.html">Join Now </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- //banner -->

	<!-- top Products -->
	<div class="ads-grid py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>S</span>eller
				<span>P</span>anel</h3>
			<!-- //tittle heading -->
			
				
				<div class="modal-header" >
					<h5 class="modal-title" Align="center">Register Today</h5>
					
				</div>
			
                                   
					<form action="register.jsp" method="post">
                                             <div class="sub-entry">
                                         
                                            <div class="form-group">
                                                
							<label class="col-form-label">Company Name</label>
							<input type="text" class="form-control" placeholder=" " name="cname" required="required">
						</div>
                                            
						<div class="form-group">
							<label class="col-form-label">Owner Name</label>
							<input type="text" class="form-control" placeholder=" " name="coname" required="required">
						</div>
						<div class="form-group">
							<label class="col-form-label">Email</label>
							<input type="email" class="form-control" placeholder=" " name="email" required="required">
						</div>
                                                 <div class="form-group">
							<label class="col-form-label">Contact</label>
							<input type="text" class="form-control" placeholder=" " name="contact" required="required">
						</div>
						<div class="form-group">
							<label class="col-form-label">Password</label>
							<input type="password" class="form-control" placeholder=" " name="pass"  required="required">
						</div>
                                                <div class="form-group">
							<label class="col-form-label">Account no.</label>
							<input type="text" class="form-control" placeholder=" " name="acc"  required="required">
						</div>
                                                     <div class="form-group">
							<label class="col-form-label">IFSC code</label>
							<input type="text" class="form-control" placeholder=" " name="ifsc"  required="required">
						</div>
                                             </div>
                                               <div class="sub-entry1">
                                                   <div class="main-content">
                                                <div class="form-group">
							<label class="col-form-label">Gst no.</label>
							<input type="text" class="form-control" placeholder=" " name="gst"  required="required">
						</div>
                                            
                                          
                                                
                                                <div class="form-group">
							<label class="col-form-label">Pan no.</label>
							<input type="text" class="form-control" placeholder=" " name="pan"  required="required">
						</div>
                                                <div class="form-group">
							<label class="col-form-label">Address</label>
							<input type="text" class="form-control" placeholder=" " name="address"  required="required">
						</div>
                                                <div class="form-group">
							<label class="col-form-label">Country</label>
							<input type="text" class="form-control" placeholder=" " name="country"  required="required">
						</div>
                                                <div class="form-group">
							<label class="col-form-label">State</label>
							<input type="text" class="form-control" placeholder=" " name="state" required="required">
						</div><div class="form-group">
							<label class="col-form-label">City</label>
							<input type="text" class="form-control" placeholder=" " name="city" required="required">
						</div><div class="form-group">
							<label class="col-form-label">Pin Code</label>
							<input type="text" class="form-control" placeholder=" " name="pin" required="required">
						</div>
                                             </div>
                                               </div>
                                             
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Register">
						</div>
						<div class="sub-w3l">
							<div class="custom-control custom-checkbox mr-sm-2">
								<input type="checkbox" class="custom-control-input" id="customControlAutosizing2">
								<label class="custom-control-label" for="customControlAutosizing2">I Accept to the Terms & Conditions</label>
							</div>
						</div>
                                               
					</form>
				
                    </div>		
                         
                </div>
                	

	<!-- //top products -->

	<!-- middle section -->
	<div class="join-w3l1 py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<div class="row">
				<div class="col-lg-6">
					<div class="join-agile text-left p-4">
						<div class="row">
							<div class="col-sm-7 offer-name">
								<h6>Earn Big</h6>
								<h4 class="mt-2 mb-3">Maximize your online sale</h4>
								<p>Make use of the host of services that we offer and earn more. Our payments process is the fastest in the industry - get your payments within 7-15 days of sales!</p>
							</div>
							<div class="col-sm-5 offerimg-w3l">
								<img src="graph.png" alt="" class="img-fluid">
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 mt-lg-0 mt-5">
					<div class="join-agile text-left p-4">
						<div class="row ">
							<div class="col-sm-7 offer-name">
								<h6>Sell Across India</h6>
								<h4 class="mt-2 mb-3">Achieve higher conversion rate</h4>
								<p>Attract more buyer. India has an internet users base of about 475 million as of July 2018, about 40% of the population. cash on delivery is the most preferred payment method.
								</p>
							</div>
							<div class="col-sm-5 offerimg-w3l">
								<img src="india1.png"  alt="" class="img-fluid">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- middle section -->

	<!-- footer -->
	<footer>
		<div class="footer-top-first">
			<div class="container py-md-5 py-sm-4 py-3">
				<!-- footer first section -->
				<h2 class="footer-top-head-w3l font-weight-bold mb-2 text-center">Doing Business on Preciouskart is really easy:</h2>
				
				<!-- //footer first section -->
				<!-- footer second section -->
				<div class="row w3l-grids-footer border-top border-bottom py-sm-4 py-3">
					<div class="col-md-4 offer-footer text-center">
						
							<div class="col-4 icon-fot">
								<i><img src="coins.png" style="height:130px; width:130px;"></i>
							</div>
							<div class="col-8 text-form-footer">
								<h3>7-15 days</h3>
								<p>to process your payments</p>
							</div>
						
					</div>
					<div class="col-md-4 offer-footer my-md-0 my-4 text-center">
						
							<div class="col-4 icon-fot">
								<i><img src="search.png" style="height:130px; width:130px;"></i>
							</div>
							<div class="col-8 text-form-footer">
								<h3>10 Crore</h3>
								<p>customers looking to buy your products</p>
							</div>
						
					</div>
					<div class="col-md-4 offer-footer text-center">
						
							<div class="col-4 icon-fot">
								<i><img src="hand.png" style="height:130px; width:130px;"></i>
							</div>
							<div class="col-8 text-form-footer">
								<h3>1,00,000 +</h3>
								<p>businesses growing rapidly with us</p>
							</div>						
					</div>
					
					
				</div>
				<!-- //footer second section -->
			</div>
		</div>
		<!-- footer third section -->
		<div class="w3l-middlefooter-sec">
			<div class="container py-md-5 py-sm-4 py-3">
				<div class="row footer-info w3-agileits-info">
					<!-- footer categories -->
					<div class="col-md-3 col-sm-6 footer-grids">
						<h3 class="text-white font-weight-bold mb-3">Categories</h3>
						<ul>
							<li class="mb-3">
								<a href="product.html">Mobiles </a>
							</li>
							<li class="mb-3">
								<a href="product.html">Computers</a>
							</li>
							<li class="mb-3">
								<a href="product.html">TV, Audio</a>
							</li>
							<li class="mb-3">
								<a href="product2.html">Smartphones</a>
							</li>
							<li class="mb-3">
								<a href="product.html">Washing Machines</a>
							</li>
							<li>
								<a href="product2.html">Refrigerators</a>
							</li>
						</ul>
					</div>
					<!-- //footer categories -->
					<!-- quick links -->
					<div class="col-md-3 col-sm-6 footer-grids mt-sm-0 mt-4">
						<h3 class="text-white font-weight-bold mb-3">Quick Links</h3>
						<ul>
							<li class="mb-3">
								<a href="about.html">About Us</a>
							</li>
							<li class="mb-3">
								<a href="contact.html">Contact Us</a>
							</li>
							<li class="mb-3">
								<a href="help.html">Help</a>
							</li>
							<li class="mb-3">
								<a href="faqs.html">Faqs</a>
							</li>
							<li class="mb-3">
								<a href="terms.html">Terms of use</a>
							</li>
							<li>
								<a href="privacy.html">Privacy Policy</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 footer-grids mt-md-0 mt-4">
						<h3 class="text-white font-weight-bold mb-3">Get in Touch</h3>
						<ul>
							<li class="mb-3">
								<i class="fas fa-map-marker"></i> 123 Sebastian, USA.</li>
							<li class="mb-3">
								<i class="fas fa-mobile"></i> 333 222 3333 </li>
							<li class="mb-3">
								<i class="fas fa-phone"></i> +222 11 4444 </li>
							<li class="mb-3">
								<i class="fas fa-envelope-open"></i>
								<a href="mailto:example@mail.com"> mail 1@example.com</a>
							</li>
							<li>
								<i class="fas fa-envelope-open"></i>
								<a href="mailto:example@mail.com"> mail 2@example.com</a>
							</li>
						</ul>
					</div>
					<div class="col-md-3 col-sm-6 footer-grids w3l-agileits mt-md-0 mt-4">
						<!-- newsletter -->
						<h3 class="text-white font-weight-bold mb-3">Newsletter</h3>
						<p class="mb-3">Free Delivery on your first order!</p>
						<form action="#" method="post">
							<div class="form-group">
								<input type="email" class="form-control" placeholder="Email" name="email" required="">
								<input type="submit" value="Go">
							</div>
						</form>
						<!-- //newsletter -->
						<!-- social icons -->
						<div class="footer-grids  w3l-socialmk mt-3">
							<h3 class="text-white font-weight-bold mb-3">Follow Us on</h3>
							<div class="social">
								<ul>
									<li>
										<a class="icon fb" href="#">
											<i class="fab fa-facebook-f"></i>
										</a>
									</li>
									<li>
										<a class="icon tw" href="#">
											<i class="fab fa-twitter"></i>
										</a>
									</li>
									<li>
										<a class="icon gp" href="#">
											<i class="fab fa-google-plus-g"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- //social icons -->
					</div>
				</div>
				<!-- //quick links -->
			</div>
		</div>
		<!-- //footer third section -->

		<!-- footer fourth section -->
		<div class="agile-sometext py-md-5 py-sm-4 py-3">
	
				<!-- brands -->
				<h1 class=" text-center">Sell on E-Buddy</h1>
				<p style="align:center">
							E-Buddy marketplace is India?s leading platform for selling online. Be it a manufacturer, vendor or
								supplier,simply sell your products online on E-Buddy and become a top ecommerce player with
							minimum investment. Through a team of experts offering exclusive seller workshops, training, seller
							support and convenient seller portal, E-Buddy focuses on educating and empowering sellers across
							India.

							Selling on E-Buddy is easy and absolutely free. All you need is to register, list your catalogue and 
							start selling your products.

							What's more! We have third party ?Ecommerce Service Providers? who provide logistics, cataloging
							support, product photo shoot and packaging materials. We have Seller Protection Program to 
							safeguard sellers from losses via compensation from Seller Protection Fund (SPF). We provide E-Buddy
							Fulfilment services through which you can ensure faster delivery of your items, quality check by our 
							experts and delightful packaging. Combine these with fastest payments in the industry and an 
							excellent seller portal. No wonder E-Buddy is India?s favourite place to sell online.
				</p>
				
				<!-- //payment -->
			
		</div>
		<!-- //footer fourth section (text) -->
	</footer>
	<!-- //footer -->
	<!-- copyright -->
	<div class="copy-right py-3">
		<div class="container">
			<p class="text-center text-white">© 2019 E-Buddy. All rights reserved | Design by
				<a href="http://w3layouts.com"> Karan&company.</a>
			</p>
		</div>
	</div>
	<!-- //copyright -->

	<!-- js-files -->
	<!-- jquery -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //jquery -->

	<!-- nav smooth scroll -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //nav smooth scroll -->

	<!-- popup modal (for location)-->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //popup modal (for location)-->

	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

		paypals.minicarts.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
	
	<!-- scroll seller -->
	<script src="js/scroll.js"></script>
	<!-- //scroll seller -->

	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- start-smooth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->

	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function () {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->
</body>

</html>

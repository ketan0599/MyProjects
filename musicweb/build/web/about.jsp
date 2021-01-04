<%-- 
    Document   : about
    Created on : 18 May, 2019, 2:05:16 AM
    Author     : Ketan Chalana
--%>
<!DOCTYPE html>
<html>
<head>
<title>About</title>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Fredericka+the+Great' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!--//fonts-->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Music World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<script type="text/javascript">
    $(document).ready(function(e){
	$("input").change(function(e){
            var v=$("input").val();
            //alert(v);
            $.post("search.jsp",{id:v},function(data){
		$("#change").html(data);
            });
	});
    });
</script>
<!-- start-smoth-scrolling -->
</head>
<body>
<!-- header -->
<div class="header">
	<div class="container">
		<div class="header-left">
			<a href="index.jsp">MusicKC</a>
		</div>
		<div class="navigation">
			<nav class="navbar navbar-default">
					<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"> </span>
							<span class="icon-bar"> </span>
							<span class="icon-bar"> </span>
						  </button>
					</div>
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav">
                                                        <li><input type="text" id="search1" placeholder="search" style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
							<li class="hvr-bounce-to-bottom active"><a href="index.jsp">HOME <span class="sr-only">(current)</span></a></li>							
							<li class="hvr-bounce-to-bottom"><a href="album.jsp">ALBUM</a></li>
							<li class="hvr-bounce-to-bottom"><a href="songs.jsp">SONGS</a></li>
                                                        <li class="hvr-bounce-to-bottom"><a href="artist.jsp">ARTIST</a></li>
                                                        <li class="hvr-bounce-to-bottom"><a href="cat.jsp">CATEGORY</a></li>
                                                        <li class="hvr-bounce-to-bottom"><a href="about.jsp">ABOUT</a></li>
						  </ul>
						<div class="clearfix"> </div>
					</div><!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header -->
<!-- banner -->
<div class="banner page-head">
</div>
<!-- //banner -->
<!--start-about-->
<div class="about two">
		<div class="container">
		 <h3 class="tittle">ABOUT</h3>
				<div class="about-top">
					<div class="col-md-5 about-top-left">
						<img src="images/ab.jpg" class="img-responsive" alt=""/>
					</div>
					<div class="col-md-7 about-top-right">
						<h4>Music is life itself. What would this world be without good music? No matter what kind it is.</h4>
						<p>Fusce feugiat malesuada hate the world, hate pregnant now running and grief at a lorem. Maecenas tristique orci ac sem. Ultricies accumsan clinical onec quiver with homework. In addition, eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Largest warm-up was great. Sem region leo.Ut a consumer, need protein, the element or, running deductible.</p>
						<p>
Voc?bulum targeted skirt it. Elemntum microwave it wants. Deasrerty cons stains before. Lorem ipsum dmeconsectetuer undergraduate research. ellentesque and pain. Planning a warm-up players. </p>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>	 
</div>
<!--start-team-->
<div class="team">
	<div class="container">
		<h3 class="tittle">OUR TEAM</h3>
			<div class="main">
				<div class="col-md-3 view-grid">
					<div class="view fifth-effect">
						 <a href="#" title="Full Image"><img src="images/user.jpg" /></a>
						 <div class="mask"></div>
					</div> 
				</div>
				<div class="clearfix"></div>
			</div>
	</div>
</div>
<!--//team-->
<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="footer-grids">	
			<div class="col-md-3 footer-grid">
				<h4>ADDRESS</h4>
				<ul>
					<li>MusicKC</li>
					<li>11/432 mp colony,Bikaner </li>
					<li>Zip code 334004</li>
					<li>Hours: Mon-Fri 9am - 6:00pm</li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h4>GET IN TOUCH</h4>
				<ul>
					<li>Tel: +91 9509883480</li>
					<li>Fax: +91 9509883480</li>
					<li>Email: <a href="mailto:ketanchalana@gmail.com">ketanchalana@gmail.com</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h4>SUBSCRIBE</h4>
				<form>
					<input type="email" value="Enter your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}" required="">
					<input type="submit" value=" ">
				</form>
			</div>                    
			<div class="col-md-3 footer-grid">
				<h3><a href="index.jsp">MusicKC</a></h3>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //footer -->
<!-- copy -->
<div class="copy-right">
	<div class="container">
		<p> &copy; 2019 MusicKC . All Rights Reserved.</p>
	</div>
</div>
<!-- copy -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->


<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>
<%-- 
    Document   : index
    Created on : 17 May, 2019, 11:15:02 PM
    Author     : Ketan Chalana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
            var v=$(this).val();
           // alert(v);
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
                                                        <li><input type="text" id="search1" placeholder="search" style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
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
<div id="change">
<div class="banner">
	<div class="container">
		<script src="js/responsiveslides.min.js"></script>
			<script>  
				$(function () {
				  $("#slider").responsiveSlides({
					auto: true,
					nav: true,
					speed: 500,
					namespace: "callbacks",
					pager: true,
				  });
				});
			  </script>
			<div class="caption">
				<div class="slider">
					<div class="callbacks_container">
						    <ul class="rslides" id="slider">
								<li><h3>THE MUSIC WORLD</h3></li>	
								<li><h3>WORLDS BEST MUSIC</h3></li>	
						    </ul>
							<p>Which Have You Never Seen Before!!</p>
						    <a class="hvr-bounce-to-bottom morebtn" href="about.jsp">MORE</a>
					</div>
				</div>
			</div>
	</div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<!-- //banner-bottom -->
<!-- welcome -->
<div class="welcome">
	<div class="container">
		<div class="welcome-head">
			<h3>WELCOME</h3>
			<p>For your free time, and they are independent to us the most important is that 
                            which is well pleasing in his option of choosing when they are enabled to do
                            nothing to stop it were not so, every pleasure is to be welcomed and every 
                            pain avoided. But in certain circumstances and the needs of its duties, 
                            will frequently occur that pleasures have to be repudiated, or avoids 
                            pleasure and annoyance to some of things have not been accepted.</p>
		</div>
	</div>
</div>
<!-- //welcome -->
<!-- popular -->
<div class="popular">
	<div class="container">
		<div class="popular-head">
			<h3>MY ALBUM</h3>
		</div>
                <div class="popular-grids">
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from album where status=0 order by rand() limit 0,3");
                        while(rs.next()){
            %>		
			<div class="col-md-4 popular-grid">
                            <a href="albumsongs.jsp?id=<%=rs.getString("albumid")%>">
                                <img src="album/<%=rs.getString("albumid")%>.jpg" alt="" style="width:350px;height:350px"/>
				<div class="pop-desc">
					<p><%=rs.getString("albumname")%></p>
				</div>
                            </a>
			</div>
                        <%
                        }
                        cn.close();
                }
                catch(Exception e){}
                        %>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //popular -->
<!-- experience -->
<div class="we-focus">
	<div class="container">
		<div class="focus-grids">
			<div class="col-md-6 focus-grid">
				<h3>EXPERIENCE <span>THE FEEL OF GOOD MUSIC</span></h3>
				<h4>Music is the greatest communication in the world. Even if people don't understand the language that you're singing in, they still know good music when they hear it.</h4>
                                <p style="color: blue">Lou Rawls</p>
			</div>
			<div class="col-md-3 focus-grid">
				<div class="focus-border">
					<div class="focus-layout">
						<div class="focus-image a">
							<span class="glyphicon glyphicon-music" aria-hidden="true"></span>
						</div>
						<h4>DRUM STICKS</h4>
					</div>
				</div>
			</div>
			<div class="col-md-3 focus-grid">
				<div class="focus-border">
					<div class="focus-layout">
						<div class="focus-image b"><span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span></div>
						<h4>SAXOPHONE</h4>
					</div>
				</div>
			</div>
			<div class="col-md-3 focus-grid">
				<div class="focus-border">
					<div class="focus-layout">
						<div class="focus-image c"><span class="glyphicon glyphicon-film" aria-hidden="true"></span></div>
						<h4>NOICE</h4>
					</div>
				</div>
			</div>
			<div class="col-md-3 focus-grid">
				<div class="focus-border">
					<div class="focus-layout">
						<div class="focus-image d"><span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span></div>
						<h4>GUITAR</h4>
					</div>
				</div>
			</div>
			<div class="col-md-3 focus-grid">
				<div class="focus-border">
					<div class="focus-layout">
						<div class="focus-image e"><span class="glyphicon glyphicon-headphones" aria-hidden="true"></span></div>
						<h4>SILHOUETTE</h4>
					</div>
				</div>
			</div>
			<div class="col-md-3 focus-grid">
				<div class="focus-border">
					<div class="focus-layout">
						<div class="focus-image f"><span class="glyphicon glyphicon-play" aria-hidden="true"></span></div>
						<h4>DRUM SET</h4>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- experience -->
<!-- full -->
<div class="full">
	<div class="container">
		<div class="col-md-4 full-grid">
			<div class="full-text">
				<div class="full-left">
					<span class="glyphicon glyphicon-music" aria-hidden="true"></span>
				</div>
				<div class="full-right">
					<h3>FULL QUALITY AUDIO</h3>
				</div>
				<div class="clearfix"></div>
			</div>
			<p>Music is a moral law. It gives soul to the universe, wings to the mind, flight to the imagination, and charm and gaiety to life and to everything. </p><br>
			<a class="hvr-bounce-to-bottom read-more" href="album.jsp">MORE</a>
		</div>
		<div class="col-md-4 full-grid">
			<div class="full-text">
				<div class="full-left">
					<span class="glyphicon glyphicon-play" aria-hidden="true"></span>
				</div>
				<div class="full-right">
					<h3>ALL FORMATS</h3>
				</div>
				<div class="clearfix"></div>
			</div>
			<p>The world is full of poetry. The air is living with its spirit; and the waves dance to the music of its melodies, and sparkle in its brightness. </p><br>
			<a class="hvr-bounce-to-bottom read-more" href="album.jsp">MORE</a>
		</div>
		<div class="col-md-4 full-grid">
			<div class="full-text">
				<div class="full-left">
					<span class="glyphicon glyphicon-film" aria-hidden="true"></span>
				</div>
				<div class="full-right">
					<h3>FULL QUALITY VIDEO</h3>
				</div>
				<div class="clearfix"></div>
			</div>
			<p>If you write great songs with meaning and emotion, they will last for ever because songs are the key to everything. Songs will outlast the artist and they will go on for ever if they are good. </p>
			<a class="hvr-bounce-to-bottom read-more" href="album.jsp">MORE</a>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<!-- //full -->
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
				<h4>SEARCH</h4>
                                    <input type="text" style="font-size:18px" placeholder="SEARCH" required="" id="search">
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

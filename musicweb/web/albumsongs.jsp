<%-- 
    Document   : albumsongs
    Created on : 18 May, 2019, 2:03:09 AM
    Author     : Ketan Chalana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Songs</title>
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
<script src="js/modernizr.custom.97074.js"></script>
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
                                                       <li><input type="text" id="search1" placeholder="search" style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li class="hvr-bounce-to-bottom"><a href="index.jsp">HOME <span class="sr-only">(current)</span></a></li>							
							<li class="hvr-bounce-to-bottom"><a href="album.jsp">ALBUM</a></li>
							<li class="hvr-bounce-to-bottom active"><a href="songs.jsp">SONGS</a></li>
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
<!--album-->
<!--gallery-->
<div class="gallery" id="change">
		<div class="container">
				<script src="js/jquery.chocolat.js"></script>
			<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
			<!--light-box-files -->
			<h3>MUSIC</h3>
			<section>
				<ul id="da-thumbs" class="da-thumbs">
						<%
                                                    try{
                                                        String id=request.getParameter("id");
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                            Statement st=cn.createStatement();
                                                            ResultSet rs=st.executeQuery("select * from songs where status=0 and albumid='"+id+"'order by title");
                                                            while(rs.next()){
                                                %>		
                                                    <li>
                                                        <a href="playsong.jsp?id=<%=rs.getString("songid")%>">
                                                        <img src="songs/images/<%=rs.getString("songid")%>.jpg" rel="title" style="width:350px;height:250px"/>
                                                        <div>
								<h5><%=rs.getString("title")%></h5>
								<span><%=rs.getString("descs")%></span>
							</div>
                                                    </a>
                                                    </li>
                                                <%
                                                            }
                                                            cn.close();
                                                    }
                                                    catch(Exception e){}
                                                %>
					<div class="clearfix"> </div>
				</ul>
			</section>
				<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
				<script type="text/javascript">
					$(function() {
						$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
					});
				</script>
        </div>
		
</div>
<!--//gallery-->
<!--//album-->
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
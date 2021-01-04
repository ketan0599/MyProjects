<%-- 
    Document   : search
    Created on : 18 May, 2019, 3:55:02 PM
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
<!-- start-smoth-scrolling -->
</head>
<body>
<!-- banner -->

<!-- //banner -->
<!--album-->
<!--gallery-->
    <%
                                                    String search=request.getParameter("id");
                                                    String sql="select * from songs where status=0 and(title LIKE '%"+search+"%' or descs LIKE '%"+search+"%'";
                                                    String sea[]=search.split(" ");
                                                    for(int i=0;i<sea.length;i++){
                                                          sql=sql+"or title LIKE '%"+sea[i]+"%' or descs LIKE '%"+sea[i]+"%'";
                                                    }
                                                    sql=sql+") limit "+3;
                                                    String sql1="select * from artist where artistname LIKE '%"+search+"%'";
                                                    for(int i=0;i<sea.length;i++){
                                                          sql1=sql1+"or artistname LIKE '%"+sea[i]+"%'";
                                                    }
                                                    sql1=sql1+" limit "+3;
                                                    String sql2="select * from album where status=0 and(albumname LIKE '%"+search+"%'";
                                                    for(int i=0;i<sea.length;i++){
                                                          sql2=sql2+"or albumname LIKE '%"+sea[i]+"%'";
                                                    }
                                                    sql2=sql2+") limit "+3;
                                                    try{
                                                        String id=request.getParameter("id");
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                            Statement st=cn.createStatement();
                                                            ResultSet rs=st.executeQuery(sql);
                                                            if(rs.next()){
                                                    %>
<div class="gallery">
		<div class="container">
				<script src="js/jquery.chocolat.js"></script>
			<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
			<!--light-box-files -->
			<h3>MUSIC</h3>
			<section>
				<ul id="da-thumbs" class="da-thumbs">
						<%
                                                    //out.println(sql);
                                                            ResultSet rs1=st.executeQuery(sql);
                                                            while(rs1.next()){
                                                %>		
                                                    <li>
                                                        <a href="playsong.jsp?id=<%=rs1.getString("songid")%>">
                                                        <img src="songs/images/<%=rs1.getString("songid")%>.jpg" rel="title" style="width:350px;height:250px"/>
                                                        <div>
								<h5><%=rs1.getString("title")%></h5>
								<span><%=rs1.getString("descs")%></span>
							</div>
                                                    </a>
                                                    </li>
                                                <%
                                                            }
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
 <%
                                                    //out.println(sql2);
                                                    try{
                                                        String id=request.getParameter("id");
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                            Statement st=cn.createStatement();
                                                            ResultSet rs=st.executeQuery(sql2);
                                                            if(rs.next()){%>
<div class="gallery">
		<div class="container">
				<script src="js/jquery.chocolat.js"></script>
			<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
			<!--light-box-files -->
			<h3>ALBUMS</h3>
			<section>
				<ul id="da-thumbs" class="da-thumbs">
						<%
                                                                ResultSet rs1=st.executeQuery(sql2);                                                            
                                                                while(rs1.next()){
                                                %>		
                                                    <li>
                                                        <a href="albumsongs.jsp?id=<%=rs1.getString("albumid")%>">
                                                        <img src="album/<%=rs1.getString("albumid")%>.jpg" rel="title" style="width:350px;height:250px"/>
                                                        <div>
								<h5><%=rs1.getString("albumname")%></h5>
							</div>
                                                    </a>
                                                    </li>
                                                <%
                                                            }
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
<%
                                                   // out.println(sql1);
                                                    try{
                                                        String id=request.getParameter("id");
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                            Statement st=cn.createStatement();
                                                            ResultSet rs=st.executeQuery(sql1);
                                                            if(rs.next()){%>                                        
<div class="gallery">
		<div class="container">
				<script src="js/jquery.chocolat.js"></script>
			<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
			<!--light-box-files -->
			<h3>ARTIST</h3>
			<section>
				<ul id="da-thumbs" class="da-thumbs">
						<%
                                                            ResultSet rs1=st.executeQuery(sql1);
                                                            while(rs1.next()){
                                                %>		
                                                    <li>
                                                        <a href="artistsongs.jsp?id=<%=rs1.getString("artistid")%>">
                                                        <img src="artist/<%=rs1.getString("artistid")%>.jpg" rel="title" style="width:350px;height:250px"/>
                                                        <div>
								<h5><%=rs1.getString("artistname")%></h5>
							</div>
                                                    </a>
                                                    </li>
                                                <%
                                                            }
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
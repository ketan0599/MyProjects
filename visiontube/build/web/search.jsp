<%-- 
    Document   : search
    Created on : 12 Feb, 2019, 5:40:15 PM
    Author     : Ketan
--%>

<%@page contentType="text/html"import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>My visiontube</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<!-- //fonts -->
</head>
  <body>
      <%
       String email=null;
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("user")){
                email=c[i].getValue();
                break;
            }
        }
        if(email==null && session.getAttribute(email)==null){
            response.sendRedirect("index.jsp");
        }
        else{
            String id="";
            String search=request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
                        if(rs.next()){
                            id=rs.getString("code");
                        }
                        cn.close();
                        
%>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="main.jsp"><h1><img src="images/logo1.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
                            <form class="navbar-form navbar-right" method="post" action="search.jsp">
                                <input type="text" name="search" value="<%=search%>" class="form-control" placeholder="Search...">
					<input type="submit" value=" ">
				</form>
			</div>
			<div class="header-top-right">
				<div class="file">
					<a href="upload.jsp">Upload</a>
				</div>
                            <div class="signin">
                                <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">Create channel </a>
					<!-- pop-up-box -->
									<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
									<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
									<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
									<!--//pop-up-box -->
									<div id="small-dialog2" class="mfp-hide">
										<h3>Create Channel</h3> 
										
                                                                                    <div>
                                                                                   
                                                                                        <div class="form-control-static">
                                                                                            <form action="create.jsp?id=<%=id%>" method="post">
                                                                                            <input type="text" class="form-control" name="channel" placeholder="create channel" title="enter channel">
                                                                                            <br>
                                                                                            <button style="width:300px;height:40px"class="btn btn-info" value="Create Channel"><h3><font color="white">Create</font></h3></button>  
											</form>
                                                                                        <%--<div class="continue-button">
												<a href="#small-dialog3" class="hvr-shutter-out-horizontal play-icon popup-with-zoom-anim">CONTINUE</a>
											</div>--%>
										</div>
										<div class="clearfix"> </div>
									</div>	
									
									<script>
											$(document).ready(function() {
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
				</div>
				<div class="clearfix"> </div>
			</div>
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
	
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">MENU</div>
				<div class="t-img">
					<img src="images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="drop-navigation drop-navigation">
				  <ul class="nav nav-sidebar">
					<li class="active"><a href="main.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                                        <li><a href="#" class="menu1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Profile<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-2">
							<li><a href="vp.jsp">View Profile</a></li>                                             
							<li><a href="ep.jsp">Edit Profile</a></li>
							<li><a href="cp.jsp">Change Password</a></li> 
						</ul>
                                        <li><a href="subscribe.jsp" class="user-icon"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span>Subscription</a></li>
					<li><a href="channel.jsp" class="user-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>Gallery</a></li>					
                                        <li><a href="favourite.jsp" class="user-icon"><span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>favourites</a></li>
                                        <li><a href="likevideo.jsp" class="user-icon"><span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>Liked Videos</a></li>
					
						<!-- script-for-menu -->
						<script>
							$( "li a.menu1" ).click(function() {
							$( "ul.cl-effect-2" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					
                                         <li><a href="#" class="menu"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>Recycle Bin<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-1">
							<li><a href="delvid.jsp">Deleted Videos</a></li>                                             
							<li><a href="delch.jsp">Deleted Channels</a></li>							
						</ul>  
                                         
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					
					<li><a href="about.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>About Us</a></li>
                                        <li><a href="logout.jsp" class="news-icon"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>Logout</a></li>
				  </ul>
				  <!-- script-for-menu -->
						<script>
							$( ".top-navigation" ).click(function() {
							$( ".drop-navigation" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<div class="side-bottom">
						<div class="side-bottom-icons">
							<ul class="nav2">
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="facebook twitter"> </a></li>
								<li><a href="#" class="facebook chrome"> </a></li>
								<li><a href="#" class="facebook dribbble"> </a></li>
							</ul>
						</div>
						<div class="copyright">
							<p>Copyright © 2019 My Visiontube. All Rights Reserved | Design by <a href="ketan.jsp/">Ketan</a></p>
						</div>
					</div>
				</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="main-grids">
				<div class="top-grids">
					<div class="recommended-info">
                                            <h5 style="color: blue">Search Results for <span style="color:black"><%=search%></span></h5>
					</div>
					<br><br>
                                            <%
                                            String img=null,imge=null,cid;
                                            try{
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                Statement st3=cn1.createStatement();
                                                ResultSet rs3=st3.executeQuery("select * from channel where status=0 and cname LIKE '%"+search+"%'");
                                                while(rs3.next()){
                                                    cid=rs3.getString(1);
                                                    %>
                                                <div class="single-right-grids">
							<div class="col-md-2 single-right-grid-left">
                                                            <a href="chshow.jsp?id=<%=cid%>"><img src="profile/1.png" width='100px' class="img-circle" height='100px'/></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
                                                            <a href="chshow.jsp?id=<%=cid%>" class="title"><%=rs3.getString("cname")%></a>
								<p class="author"><a href="#" class="author"></a></p>
								<p class="views"><%=rs3.getString("csub")%> Subscribers</p><br>
							</div>
                                                        <div class="col-sm-2 single-right-grid-right">
                                                            <br><br>
                                                            <button class="btn btn-danger">Subscribe</button>
                                                        </div>
							<div class="clearfix"> </div>
						</div>
                                                    <%
                                                }
                                                Statement st2=cn1.createStatement();
                                                ResultSet rs2=st2.executeQuery("select * from video where status=1 and (title LIKE '%"+search+"%' or sd LIKE '%"+search+"%' or ld LIKE '%"+search+"%') order by views DESC");
                                                while(rs2.next()){
                                                    img=rs2.getString(1);
                                                    imge=img+".jpg";
                                            %>
                                                <div class="single-right-grids">
							<div class="col-md-3 single-right-grid-left">
                                                            <a href="vidshow.jsp?id=<%=img%>"><img src="video/images/<%=imge%>" alt="<%=imge%>" width='100px' height='120px'/></a>
							</div>
							<div class="col-md-7 single-right-grid-right">
                                                            <a href="vidshow.jsp?id=<%=img%>" class="title"><%=rs2.getString("title")%></a>
								<p class="author"><a href="#" class="author"></a></p>
								<p class="views"><%=rs2.getString("views")%> views</p><br>
                                                                <p class="author"><%=rs2.getString("sd")%></p>
							</div>
							<div class="clearfix"> </div>
						</div>
                                                <%}
                                                cn1.close();
                                            }
                                            catch(Exception e){
                                            
                                            }
                                            %>

					</div>									
					<div class="clearfix"> </div>
				</div>
        </div>
<%}
%>
  </body>
</html>
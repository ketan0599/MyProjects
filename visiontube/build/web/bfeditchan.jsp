<%-- 
    Document   : beditchan
    Created on : 27 Jan, 2019, 4:29:53 PM
    Author     : Ketan Chalana
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
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<!-- //fonts -->

<script>
    $(document).ready(function(){
        $("#none").mouseover(function(){
           $("#none").css( "background-color","white");
        });
    });
    
</script>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
.navbar-form.navbar-right {
    margin-right: 1em;
    width: 50%;
    float: left !important;
    margin-left: 10em;
    position: relative;
}
</style>
<script>
    $(document).ready(function(){
       $("#search").keyup(function(){
           var sd=$("#search").val();
           $.post("search1.jsp",{id:sd},function(data){
               $("#msg").html(data);
           });
       }); 
    });
</script>
</head>
  <body>
      <%
       String email=null;
       String icode=null;
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
            String id=null;
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
                        if(rs.next()){
                            id=rs.getString("code");
                            icode=rs.getString("icode");
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
          <a class="navbar-brand" href="index.jsp"><h1><img src="images/logo1.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
                            <div class="navbar-form navbar-right">
                                <input type="text" id="search" class="form-control" placeholder="Search...">
				</div>
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
                                                                                            <form action="create.jsp?code=<%=id%>" method="post">
                                                                                            <input type="text" class="form-control" name="channel" placeholder="create channel" title="enter channel">
                                                                                            <br>
                                                                                            <button  style="width:300px;height:40px"class="btn-info" value="Create Channel"><h3>Create</h3></button>  
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
					<li ><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                                        <li class="active"><a href="#" class="menu1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Profile<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-2">
							<li class="active"><a href="vp.jsp">View Profile</a></li>                                             
							<li><a href="ep.jsp">Edit Profile</a></li>
							<li><a href="cp.jsp">Change Password</a></li> 
						</ul>
                                        <li><a href="subscribe.jsp" class="user-icon"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span>Subscription</a></li>
					
                                        <li><a href="channel.jsp?code=<%=id%>" class="user-icon"><span class="glyphicon glyphicon-music glyphicon-blackboard" aria-hidden="true"></span>Gallery</a></li>
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
					
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
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
							<p>Copyright © 2019 My Spectertube. All Rights Reserved | Design by <a href="index.jsp/">Karanveer</a></p>
						</div>
					</div>
				</div>
        </div>
  <%
  String fname=null;
        String lname=null;
        String mob=null;
        String cno=null;
        String ul=null;
        
    try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st1=cn1.createStatement();
                        ResultSet rs1=st1.executeQuery("select * from user where email='"+email+"'");
                        if(rs1.next()){
                            fname=rs1.getString("fname");
                            mob=rs1.getString("mobile");
                            lname=rs1.getString("lname");
                            cno=rs1.getString("channels");
                            ul=rs1.getString("uploads");
                        }
                        cn1.close();
                    }
                    
                        catch(Exception e){
                                out.println(e.getMessage());
                                }
                    
  %>
        <div id="msg" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <style>
                tr:hover {background-color:#A9A9A9;}
            </style>
        <%
            String cid=request.getParameter("id");
                try{                    
                    String chan=null;
                    String cname=null;                    
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn4=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st4=cn4.createStatement();
                        ResultSet rs2=st4.executeQuery("select * from channel where cid='"+cid+"'and status=0");
                        if(rs2.next()){
                            cname=rs2.getString("cname");
                        }
        %>
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
        <form method="post" action="editchan.jsp?id=<%=cid%>">
            <h3>Channel Nmae</h3><input type="text" placeholder="channel name" value="<%=cname%>" name="cname" class="form-control">
            <br><br>
            <div class="col-sm-4"></div>
            <div class="col-sm-8">
            <button style="width:300px;height:50px" class="btn btn-info">Update</button>
            </div>
        </form>
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
                <%cn4.close();}
                catch(Exception e){
                    out.println(e.getMessage());
                }
                %>
					<div class="recommended-info">
						<h2>Recent Videos</h2>
					</div>
					<br><br>
                                            <%
                                            String img=null;
                                            String imge=null;
                                            try{
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                Statement st2=cn1.createStatement();
                                                ResultSet rs2=st2.executeQuery("select * from video where cid='"+cid+"' order by rand() limit 0,3");
                                                while(rs2.next()){
                                                    img=rs2.getString(1);
                                                    imge=img+".jpg";
                                            %>
                                                <div class="col-md-4 resent-grid recommended-grid slider-first">
                                                    <div class="resent-grid-img recommended-grid-img">
                                                        <a href="vidshow.jsp?id=<%=img%>"> <%out.println("<img src='video/images/"+imge+"' alt='"+imge+"' width='305px' height='225px'/>");%></a>
                                                    </div>
                                                    <div class="resent-grid-info recommended-grid-info">
                                                        <h3><a href="vidshow.jsp?id=<%=img%>" class="title title-info"><%=rs2.getString(2)%></a></h3>
                                                    </div> 
                                                    						</div>
                                                <%}
                                                cn1.close();
                                            }
                                            catch(Exception e){
                                            
                                            }
                                            %>

        </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
  <%}
%>

  </body>
</html>
<%-- 
    Document   : indexvideo
    Created on : 29 Jan, 2019, 4:13:31 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
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
<style>
video {
  width: 120%;
  height: auto;
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
<script>
    $(document).ready(function(){
        $(".glyphicon.glyphicon-thumbs-up").click(function(){
          alert("Sign in first to like this video");
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".glyphicon.glyphicon-thumbs-down").click(function(){
           alert("sign in first to dislike this video");
        });
    });
</script>
</head>
  <body>
      <%
       String email=null;
       String title=null;
       String sd=null;
       String ld=null;
       String dt=null;
       String uid=null;
       String cid=null;
       String cname=null;
       String id=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from video where vid='"+id+"'");
                        if(rs.next()){
                            title=rs.getString(2);
                            sd=rs.getString(3);
                            ld=rs.getString(4);
                            dt=rs.getString(7);
                            uid=rs.getString("userid");
                            cid=rs.getString("cid");
                        }
                        cn.close();
        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn5=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st6=cn5.createStatement();
                        ResultSet rs6=st6.executeQuery("select * from channel where cid='"+cid+"'");
                        if(rs6.next()){
                            cname=rs6.getString("cname");
                        }
                        cn5.close();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn6=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn6.prepareStatement("update video set views=views+1 where vid='"+id+"'");                                                               
                                ps.execute();
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
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">Upload</a>
				</div>	
				<div class="signin">
					<a href="#small-dialog2" class="play-icon popup-with-zoom-anim">Sign Up</a>
					<!-- pop-up-box -->
									<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
									<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
									<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
									<!--//pop-up-box -->
									<div id="small-dialog2" class="mfp-hide">
										<h3>Create Account</h3> 
										<div class="social-sits">
                                                                                    <div>
                                                                                        <img src="images/sign.jpg" width="350px" height="300px">
                                                                                    </div>
											<div class="button-bottom">
												<p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Login</a></p>
											</div>
										</div>
										<div class="signup">
											<form action="signup.jsp" method="post">
                                                                                            <input type="text" class="email" name="fname" placeholder="First Name" title="enter first name">
											<input type="text" class="email" name="lname" placeholder="Last Name" title="enter last name">
                                                                                        <input type="text" class="email" name="mobile" placeholder="Mobile Number" maxlength="10" pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number" />
                                                                                        <input type="text" class="email" name="email" placeholder="Email Id" title="enter email">
                                                                                        <input type="password" class="email" name="pass" placeholder="Password" title="enter password">
                                                                                          <input type="submit"  value="Sign Up"/>  
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
				<div class="signin">
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a>
					<div id="small-dialog" class="mfp-hide">
						<h3>Login</h3>
						<div class="social-sits">
                                                    <img src="images/login.jpg" style="height:200px;width:300px">
							<div class="button-bottom">
								<p>New account? <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">Signup</a></p>
							</div>
						</div>
						<div class="signup">
                                                    <form action="signin.jsp?vid=<%=id%>" method="post">
								<input type="text" class="email" name="email" placeholder="Enter email / mobile" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
								<input type="password" placeholder="Password" name="pass" required="required" title="Minimum 6 characters required" autocomplete="on" />
								<input type="submit"  value="LOGIN"/>
							</form>
							<div class="forgot">
								<a href="#">Forgot password ?</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
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
                                      <li class="active"><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>																
					<li><a href="about.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>About Us</a></li>
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
							<p>Copyright © 2019 My visiontube. All Rights Reserved | Design by <a href="index.jsp/">ketan</a></p>
						</div>
					</div>
				</div>
        </div>
        <div id="msg" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="show-top-grids">
				<div class="col-sm-8 single-left">
                                    <div class="song">                                        
                                        <div class="song-info">
							<h3><%=title%></h3>	
					</div>	
                                        <div class="video-grid">
                    <video width="805px" height="500px" controls="controls" autoplay="autoplay"> 
                            <source src="video/<%=id%>.mkv" type="video/mp4"> 
                            <object data="" width="320" height="240"> 
                                <embed width="320" height="240" src="video/<%=id%>.mp4"> 
                            </object> 
                    </video>
                                        </div>
                                    </div>
                            <%
                                                    String views=null;
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn4=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st4=cn4.createStatement();
                                                            ResultSet rs4=st4.executeQuery("select * from video where vid='"+id+"'");
                                                            if(rs4.next()){
                                                                views=rs4.getString("views");
                                                            }
                                                            cn4.close();%>
            
					<div class="clearfix"> </div>
					<div class="published">
                                            <div class="col-md-3">
                                                <span class="glyphicon glyphicon-eye-open"><%=views%></span>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-sm-6">
                                                <%
                                                    String lcount=null;
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st3=cn2.createStatement();
                                                            ResultSet rs3=st3.executeQuery("select count(*) from likes where vid='"+id+"'");
                                                            if(rs3.next()){
                                                                lcount=rs3.getString(1);
                                                            }
                                                            cn2.close();
                                                        %>
                                                            <a href="#" id="<%=id%>" style="color:black" class="glyphicon glyphicon-thumbs-up"><%=lcount%></a>
                                                </div>                                               
                                            </div>
                                            <div class="col-md-3">
                                                <%
                                                    String dlcount=null;
                                                    %>
                                                    <div class="col-sm-6">
                                                    <%
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st5=cn3.createStatement();
                                                            ResultSet rs5=st5.executeQuery("select count(*) from dislikes where vid='"+id+"'");
                                                            if(rs5.next()){
                                                                dlcount=rs5.getString(1);
                                                            }
                                                            cn3.close();   
                                                            %>
                                                            <a href="#" id="<%=id%>" style="background-color:white" class="glyphicon glyphicon-thumbs-down"><%=dlcount%></a>                                                            
                                                    </div>                                                   
                                            </div>
                                            <div class="col-md-3">
                                            </div>
						<script src="jquery.min.js"></script>
							<script>
								$(document).ready(function () {
									size_li = $("#myList li").size();
									x=1;                                               
									$('#myList li:lt('+x+')').show();
									$('#loadMore').click(function () {
										x= (x+1 <= size_li) ? x+1 : size_li;
										$('#myList li:lt('+x+')').show();                                                                               
                                                                        });
									$('#showLess').click(function () {
										x=(x-1<0) ? 1 : x-1;
										$('#myList li').not(':lt('+x+')').hide();                                       
									});
								});
							</script>
							<div class="load_more">	
                                                            <div class="col-sm-8" style="align:left">
                                                                <h2><%=cname%></h2>
                                                            </div>
                                                            <div class="col-sm-4" style="align:right">
                                                                <h2>Subscribe</h2>
                                                            </div><br>
								<ul id="myList">
                                                                    <h4><br>Published on <%=dt%></h4>
									<li>
										
                                                                                <p><h4><%=sd%></h4></p>                                                                                
                                                                               <a id="loadMore">Show More</a>                                                                               
									</li>                                                                        
									<li>
										<p><h5><%=ld%></h5></p>
                                                                                <a id="showLess">Show Less</a>
										<div class="load-grids">
											<div class="load-grid">
												<p>Category</p>
											</div>
											<div class="load-grid">
												<a href="movies.html">Entertainment</a>
											</div>
											<div class="clearfix"> </div>
										</div>
									</li>
								</ul>
							</div>
					</div>
					<div class="all-comments">
						<div class="all-comments-info">
							<a href="#">All Comments (8,657)</a>
							<div class="box">
								<form>
									<input type="text" placeholder="Name" required=" ">			           					   
									<input type="text" placeholder="Email" required=" ">
									<input type="text" placeholder="Phone" required=" ">
									<textarea placeholder="Message" required=" "></textarea>
									<input type="submit" value="SEND">
									<div class="clearfix"> </div>
								</form>
							</div>
							<div class="all-comments-buttons">
								<ul>
									<li><a href="#" class="top">Top Comments</a></li>
									<li><a href="#" class="top newest">Newest First</a></li>
									<li><a href="#" class="top my-comment">My Comments</a></li>
								</ul>
							</div>
						</div>
						<div class="media-grids">
							<div class="media">
								<h5>Tom Brown</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>Mark Johnson</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>Steven Smith</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>Marry Johne</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>Mark Johnson</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>Mark Johnson</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
							<div class="media">
								<h5>Peter Johnson</h5>
								<div class="media-left">
									<a href="#">
										
									</a>
								</div>
								<div class="media-body">
									<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
									<span>View all posts by :<a href="#"> Admin </a></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 single-right">
					<h3>Up Next</h3>
                                        <div class="single-grid-right">
                                            <%
                                            String img=null;
                                            String imge=null;
                                            String ti=null;
                                            try{
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                Statement st2=cn1.createStatement();
                                                ResultSet rs2=st2.executeQuery("select * from video where vid NOT LIKE '"+id+"' and status=1 order by rand() limit 0,10");
                                                while(rs2.next()){
                                                    img=rs2.getString(1);
                                                    imge=img+".jpg";
                                                    ti=rs2.getString(2);
                                            %>
					<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
                                                            <a href="vidshow.jsp?id=<%=img%>"><img src="video/images/<%=imge%>" alt="<%=imge%>" width='185px' height='60px'/></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
                                                            <a href="vidshow.jsp?id=<%=img%>" class="title"><%=ti%></a>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
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
				<div class="clearfix"> </div>
                                </div>
                        </div>
  </body>
</html>

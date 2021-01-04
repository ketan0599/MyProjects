<%--
    Document   : vidshow
    Created on : 19 Jan, 2019, 7:58:11 PM
    Author     : Ketan Chalana
--%>
<%@page contentType="text/html"import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>my visiontube</title>
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
           $.post("search1.jsp",{id:sd,rel:1},function(data){
               $("#msg").html(data);
           });
       }); 
    });
</script>
<script>
    $(document).ready(function(){
        $(".glyphicon.glyphicon-thumbs-up").click(function(){
           var v=$(this).attr("id");
           var s="a"+v;
           var c = $(this).attr("rel");
           $.post("like.jsp",{id:v},function(data){
               var like=data.substring(2,data.indexOf("_"));
               var dislike=data.substring(data.indexOf("_")+1);
               if(c=="blue"){
                    $("#"+v).css("color","black");
                    $("#"+v).attr("rel","black");
               }
               else if(c=="black"){
                    $("#"+v).css("color","blue");
                    $("#"+v).attr("rel","blue");
                    $("#"+s).css("color","black");
                    $("#"+s).attr("rel","black");
               }
                $(".glyphicon.glyphicon-thumbs-down").html(dislike);
                $(".glyphicon.glyphicon-thumbs-up").html(like);
               //alert(like);
               //alert(dislike);
           });
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".glyphicon.glyphicon-thumbs-down").click(function(){
           var s=$(this).attr("id");
           var v=s.substring(1);
           var c = $(this).attr("rel");
           $.post("dislike.jsp",{id:v},function(data){
               var like=data.substring(2,data.indexOf("_"));
               var dislike=data.substring(data.indexOf("_")+1);
               if(c=="red"){
                    $("#"+s).css("color","black");
                    $("#"+s).attr("rel","black");
               }
               else if(c=="black"){
                    $("#"+s).css("color","red");
                    $("#"+s).attr("rel","red");
                    $("#"+v).css("color","black");
                    $("#"+v).attr("rel","black");
               }
                $(".glyphicon.glyphicon-thumbs-down").html(dislike);
                $(".glyphicon.glyphicon-thumbs-up").html(like);
               //alert(like);
               //alert(dislike);
           });
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".glyphicon.glyphicon-bell").click(function(){
           var v=$(this).attr("id");
           var c = $(this).attr("rel");
           $.post("subscribechan.jsp",{id:v},function(data){ 
                if(c=="red"){
                    $("#"+v).css("background-color","white");
                    $("#"+v).css("color","black");
                    $("#"+v).attr("rel","white");
                }
                else if(c=="white"){
                    $("#"+v).css("background-color","red");
                    $("#"+v).css("color","white");
                    $("#"+v).attr("rel","red");
                }
                $(".glyphicon.glyphicon-bell").html(data);
           });
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".glyphicon.glyphicon-star").click(function(){
           var si=$(this).attr("id");
           var v=si.substring(1);
           var c=$(this).attr("rel");
           //alert(c);
           $.post("fav.jsp",{id:v},function(data){ 
                if(c=="blue"){                    
                    $("#"+si).css("color","black");
                    $("#"+si).attr("rel","black");
                   // alert("if");
                }
                else if(c=="black"){                    
                    $("#"+si).css("color","blue");
                    $("#"+si).attr("rel","blue");
                    //alert("else");
                }
           });
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
       String uid=null,userid=null;
       String cid=null;
       String cname=null;
       String id=request.getParameter("id");
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("user")){
                email=c[i].getValue();
                break;
            }
        }
        if(email==null && session.getAttribute(email)==null){}
        else{
             Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st1=cn.createStatement();
                           ResultSet rs1=st1.executeQuery("select * from user where email='"+email+"'");
                           if(rs1.next()){
                               userid=rs1.getString("code");
                           }
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
                        Connection cn10=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st10=cn10.createStatement();
                           ResultSet rs10=st10.executeQuery("select * from channel where cid='"+cid+"'");
                        if(rs10.next()){
                            cname=rs10.getString("cname");
                        }
                        cn10.close();
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn9=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st9=cn9.createStatement();
                        ResultSet rs9=st9.executeQuery("select * from views where vid='"+id+"'and userid='"+userid+"'");
                        if(rs9.next()){
                            
                        }
                        else{
                            PreparedStatement ps=cn9.prepareStatement("insert into views values(?,?)");
                                ps.setString(1,userid);
                                ps.setString(2,id);                                
                                ps.execute();
                                PreparedStatement ps1=cn9.prepareStatement("update video set views=views+1 where vid='"+id+"'");                            
                                ps1.execute();
                        }
                        
                        cn9.close();
            }    
            catch(Exception e){
            
            }
        }       
             Class.forName("com.mysql.jdbc.Driver");
                        Connection cn10=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st10=cn10.createStatement();
                           ResultSet rs10=st10.executeQuery("select * from channel where cid='"+cid+"'");
                        if(rs10.next()){
                            cname=rs10.getString("cname");
                        }
                        cn10.close();                                            
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
                                                                                            <form action="create.jsp?id=<%=id%>" method="post">
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
        </div><br>
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
            
                                                    try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st1=cn1.createStatement();
                                                            ResultSet rs1=st1.executeQuery("select * from likes where userid='"+userid+"'and vid='"+id+"'");
                                                            if(rs1.next()){%>
                                                                <a href="#" id="<%=id%>" style="color:blue" rel="blue" class="glyphicon glyphicon-thumbs-up"><%=lcount%></a>
                                                          <%}
                                                            else{
                                                            %>
                                                            <a href="#" id="<%=id%>" style="color:black" rel="black" class="glyphicon glyphicon-thumbs-up"><%=lcount%></a>
                                                            <%}

                                                    }
                                                    catch(Exception e){}
                                                %>
                                                </div>
                                                <div class="col-sm-6" id="lcount">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <%
                                                    String dlcount=null;
                                                    String did="a"+id;
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
                                                    try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st1=cn1.createStatement();
                                                            ResultSet rs1=st1.executeQuery("select * from dislikes where userid='"+userid+"'and vid='"+id+"'");
                                                            if(rs1.next()){%>
                                                                <a href="#" id="<%=did%>" style="color:red" rel="red" class="glyphicon glyphicon-thumbs-down"><%=dlcount%></a>
                                                          <%}
                                                            else{
                                                            %>
                                                            <a href="#" id="<%=did%>" style="color:black" rel="black" class="glyphicon glyphicon-thumbs-down"><%=dlcount%></a>
                                                            <%}
                                                            cn1.close();
                                                    }
                                                    catch(Exception e){}
                                                %>
                                                    </div>
                                                   
                                            </div>
                                            <div class="col-md-3">
                                                <%  
                                                    String si="s"+id;
                                                    try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st1=cn1.createStatement();
                                                            ResultSet rs11=st1.executeQuery("select * from favorites where userid='"+userid+"'and vid='"+id+"'");
                                                            //out.println(userid+"   "+id);
                                                            if(rs11.next()){%>
                                                                <a href="#" id="<%=si%>" style="color:blue" rel="blue" class="glyphicon glyphicon-star"></a>
                                                <%}
                                                            else{
                                                %>
                                                                <a href="#" id="<%=si%>" rel="black" style="color:black" class="glyphicon glyphicon-star"></a>
                                                <%}
                                                            cn1.close();
                                                    }
                                                    catch(Exception e){}
                                                %>
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
                                                            <%
                                                            String subcount=null;
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn7=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st7=cn7.createStatement();
                                                            ResultSet rs7=st7.executeQuery("select * from channel where cid='"+cid+"'");
                                                            if(rs7.next()){
                                                                subcount=rs7.getString("csub");
                                                            }
                                                            cn7.close();%>
                                                            <br><div class="col-sm-8" style="align:left">
                                                                <h2><%=cname%></h2>
                                                                <h6>Published on <%=dt%></h6>
                                                            </div>
                                                            <%
                                                    try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn8=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st8=cn8.createStatement();
                                                            ResultSet rs8=st8.executeQuery("select * from subscribe where userid='"+userid+"'and cid='"+cid+"'");
                                                            if(rs8.next()){%>
                                                                <div class="col-sm-4" style="align:right">
                                                                <br><button id="<%=cid%>" rel="white" class="glyphicon glyphicon-bell" style="background-color:white;color:black;width:150px;height:50px">Subscribed <%=subcount%></button>
                                                            </div>
                                                          <%}
                                                            else{
                                                            %>
                                                           <div class="col-sm-4" style="align:right">
                                                                <br><button id="<%=cid%>" rel="red" class="glyphicon glyphicon-bell" style="background-color:red;color:white;width:150px;height:50px">Subscribe <%=subcount%></button>
                                                            </div>
                                                            <%}
                                                            cn8.close();
                                                    }
                                                    catch(Exception e){}
                                                %><br><br><br><br><br><br><br>
                                                
								<ul id="myList">                                                                    
                                                                    
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
                                         
                                            			<%--					 <%
                                                                try{
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                            Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                                            Statement st2=cn1.createStatement();
                                                                            ResultSet rs2=st2.executeQuery("select * from video where vid NOT LIKE '"+id+"' order by rand() limit 0,3");
                                                                            while(rs2.next()){
                                                                                img=rs2.getString(1);
                                                                                imge=img+".jpg";
                                                                                ti=rs2.getString(2);
                                            %>
                                                         <div class="col-md-8 single-right-grid-right">
                                                            <a href="vidshow.jsp?id=<%=img%>" class="title"><%=ti%></a>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>                                          
                                            <%}
                                                cn1.close();
                                            }
                                            catch(Exception e){
                                            
                                            }
                                            %>--%>
							

							
							<div class="clearfix"> </div>
					</div>
				
				<div class="clearfix"> </div>
                                </div>
                        </div>
  </body>
</html>

<%-- 
    Document   : main
    Created on : 1 May, 2019, 3:33:25 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- Placed js at the end of the document so the pages load faster -->
<style>
    .r3_counter_box .fa-strikethrough {
	color:#8BC34A;
    }
    .r3_counter_box .fa-tags {
        color:#F44336;
    }   
    .r3_counter_box .fa-shopping-cart {
	color:#FFCA28;
    }
</style>
</head> 
   
 <body class="sticky-header left-side-collapsed">
    <section>
        <%
            String email=null;
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("admin")){
                email=c[i].getValue();
                break;
            }
        }
        if(email==null && session.getAttribute(email)==null){
            response.sendRedirect("index.jsp");
        }
        else{
            String name="";
            String users="0";
            String seller="0";
            String product="0";
            String orders="0";
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'");
                        if(rs.next()){
                            name=rs.getString("username");
                        }
                        Statement st1=cn.createStatement();
                        ResultSet rs1=st1.executeQuery("select count(*) from user where status=0");
                        if(rs1.next()){
                            users=rs1.getString(1);
                        }                        
                        Statement st2=cn.createStatement();
                        ResultSet rs2=st2.executeQuery("select count(*) from seller where status=0");
                        if(rs2.next()){
                            seller=rs2.getString(1);
                        }
                        Statement st3=cn.createStatement();
                        ResultSet rs3=st3.executeQuery("select count(*) from product where status=0");
                        if(rs3.next()){
                            product=rs3.getString(1);
                        }
                        Statement st4=cn.createStatement();
                        ResultSet rs4=st4.executeQuery("select count(*) from orders");
                        if(rs4.next()){
                            orders=rs4.getString(1);
                        }
        %>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="main.jsp">Shoppy <span>Kart</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="main.jsp"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="menu-list">
							<a href="#"><i class="fa fa-user"></i>
								<span>Users</span></a>
								<ul class="sub-menu-list">
									<li><a href="ublock.jsp">Block User</a> </li>
									<li><a href="uunblock.jsp">Unblock User</a></li>
								</ul>
						</li>              
						<li class="menu-list"><a href="#"><i class="fa fa-shopping-cart"></i> <span>Seller</span></a>
							<ul class="sub-menu-list">
								<li><a href="sblock.jsp">Block Seller</a> </li>
								<li><a href="sunblock.jsp">Unblock Seller</a></li>
                                                                <li><a href="verify.jsp">Verify Seller</a></li>
							</ul>
						</li>      
						<li class="menu-list"><a href="#"><i class="fa fa-list"></i> <span>Category</span></a>  
							<ul class="sub-menu-list">
								<li><a href="acat.jsp">Add Category</a></li>
                                                                <li><a href="rcat.jsp">Remove Category</a></li>
							</ul>
						</li>
						<li class="menu-list"><a href="#"><i class="fa fa-subscript"></i> <span>SubCategory</span></a>  
							<ul class="sub-menu-list">
								<li><a href="ascat.jsp">Add SubCategory</a></li>
                                                                <li><a href="rscat.jsp">Remove SubCategory</a></li>
							</ul>
						</li>
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- left side end-->
    
		<!-- main content start-->
		<div class="main-content">
			<!-- header-starts -->
			<div class="header-section">
			 
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->

			<!--notification menu start -->
			<div class="menu-right">
				<div class="user-panel-top">  						
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span style="background:url(images/1.jpg) no-repeat center"> </span> 
										 <div class="user-name">
                                                                                     <p><%=name%>&nbsp;&nbsp;&nbsp;<span>Administrator</span></p>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu"> 
									<li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		
					<div class="clearfix"></div>
				</div>
			  </div>
			<!--notification menu end -->
			</div>
		<!-- //header-ends -->
			<div id="page-wrapper">
				<div class="graphs">
					<div class="col_3">
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-users"></i>
								<div class="stats">
								  <h5><%=users%></h5>
								  <div class="grow grow1">
									<p>Users</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-strikethrough"></i>
								<div class="stats">
								  <h5><%=seller%></h5>
								  <div class="grow">
									<p>Sellers</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-tags"></i>
								<div class="stats">
								  <h5><%=product%></h5>
								  <div class="grow grow3">
									<p>Products</p>
								  </div>
								</div>
							</div>
						 </div>
						 <div class="col-md-3 widget">
							<div class="r3_counter_box">
								<i class="fa fa-shopping-cart"></i>
								<div class="stats">
								  <h5><%=orders%></h5>
								  <div class="grow grow2">
									<p>Orders</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			<!--body wrapper start-->
			</div>
			 <!--body wrapper end-->
		</div>
        <!--footer section start-->
			<footer>
			   <p>&copy 2019 Shoppy Kart. All Rights Reserved</p>
			</footer>
        <!--footer section end-->

      <!-- main content end-->
      <%}%>
   </section>
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>
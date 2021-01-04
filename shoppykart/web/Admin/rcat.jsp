<%-- 
    Document   : rcat
    Created on : 2 May, 2019, 3:22:42 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Category</title>
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

</head> 
   
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
     <%
       String email=null;
       int sn=0;
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
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'");
                        if(rs.next()){
                            name=rs.getString("username");
                        }
                        cn.close();
                        
%>
    <section>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="main.jsp">Shoppy<span>Kart</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="main.jsp"><i class="fa fa-home"></i> </a>
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
					<div class="profile_details_left">
						<ul class="nofitications-dropdown">							
							<li class="login_box" id="loginContainer">
									<div class="search-box">
										<div id="sb-search" class="sb-search">
											<form>
												<input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
												<input class="sb-search-submit" type="submit" value="">
												<span class="sb-icon-search"> </span>
											</form>
										</div>
									</div>
										<!-- search-scripts -->
										<script src="js/classie.js"></script>
										<script src="js/uisearch.js"></script>
											<script>
												new UISearch( document.getElementById( 'sb-search' ) );
											</script>
										<!-- //search-scripts -->
							</li>									   							   		
							<div class="clearfix"></div>	
						</ul>
					</div>
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span style="background:url(images/1.jpg) no-repeat center"> </span> 
										 <div class="user-name">
											<p><%=name%><span>Administrator</span></p>
										 </div>
										 <i class="fa fa-angle-down"></i>
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
                            <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
							<div class="panel-heading">
								<h2>Remove Category</h2>
								<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
							</div>
							<div class="panel-body no-padding" style="display: block;">
								<table class="table table-striped">
									<thead>
										<tr class="warning">
											<th>SN</th>
											<th>Category Name</th>
                                                                                        <th> </th>
										</tr>
									</thead>
									<tbody>
                                                                            <%
                                                                                try{
                                                                                     Class.forName("com.mysql.jdbc.Driver");
                                                                                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                                                                                        Statement st1=cn1.createStatement();
                                                                                        ResultSet rs1=st1.executeQuery("select * from categories where status=0");
                                                                                        while(rs1.next()){
                                                                                            sn++;
                                                                                            %>
                                                                                                <tr>
                                                                                                    <td><%=sn%></td>
                                                                                                    <td><%=rs1.getString(2)%></td>
                                                                                                    <td><a href="delcat.jsp?id=<%=rs1.getString(3)%>">Remove</a></td>
                                                                                                </tr>
                                                                                            <%
                                                                                        }
                                                                                        cn.close();
                                                                                }
                                                                                catch(Exception e){
                                                                                    out.println(e.getMessage());
                                                                                }
                                                                            %>
									</tbody>
								</table>
							</div>
						</div>
                        </div>
                </div>
                <footer>
                    <p>&2019 Shoppykart. All Rights Reserved.</p>
        	</footer><script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <%}%> 
</html>
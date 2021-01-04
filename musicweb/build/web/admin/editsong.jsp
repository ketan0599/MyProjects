<%-- 
    Document   : editsong
    Created on : May 20, 2019, 4:21:39 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
</head>
<body>
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
           
%>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="main.jsp" class="logo">
        Musickc
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/2.png">
                <span class="username">Ketan Chalana</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="logout.jsp"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a href="main.jsp">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="album.jsp">
                        <i class="fa fa-music"></i>
                        <span>Create new album</span>
                    </a>
                </li>
                <li>
                    <a href="artist.jsp">
                        <i class="fa fa-users"></i>
                        <span>Add Artist</span>
                    </a>
                </li> 
                <li>
                    <a href="addcat.jsp">
                        <i class="fa fa-won"></i>
                        <span>Add Categories</span>
                    </a>
                </li>
                <li>
                    <a href="addcat.jsp">
                        <i class="fa fa-remove"></i>
                        <span>Remove Categories</span>
                    </a>
                </li>
                <li>
                    <a class="active" href="upload.jsp">
                        <i class="fa fa-upload"></i>
                        <span>Upload Songs</span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-8">
                        <h2>Edit Songs</h2><br>
                    </div>
                     <%
                        String title=null;
                        String descs=null;
                        String artistid=null;
                        String id=request.getParameter("id");
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    Statement st1=cn1.createStatement();
                                    ResultSet rs1=st1.executeQuery("select * from songs where songid='"+id+"'");
                                    while(rs1.next()){ 
                                        artistid=rs1.getString("artists");
                    %>
                    <form method="post" action="editsongdesc.jsp?id=<%=id%>">
                        <br><h3>Title</h3>
                        <input type="text" name="title" placeholder="Title" value="<%=rs1.getString("title")%>" class="form-control"><br><br>
                        <h3>Artist</h3>
                        <select class="form-control" name="artist">
                             <%
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    Statement st3=cn3.createStatement();
                                    ResultSet rs3=st3.executeQuery("select * from artist where artistid='"+artistid+"'");
                                    while(rs3.next()){                                       
                            %>
                            <option value="<%=rs3.getString("artistid")%>" selected=""><%=rs3.getString("artistname")%></option>
                            <%
                                    }
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    Statement st2=cn2.createStatement();
                                    ResultSet rs2=st2.executeQuery("select * from artist");
                                    while(rs2.next()){                                       
                            %>
                                        <option value="<%=rs2.getString("artistid")%>"><%=rs2.getString("artistname")%></option>
                            <%
                                    }
                                    cn2.close();
                            %>
                        </select><br><br> 
                        <h3>Description</h3>
                        <textarea name="Desc" placeholder="Description"  class="form-control"><%=rs1.getString("descs")%></textarea><br><br>
                        <input type="submit" value="submit" class="form-control btn btn-info">
                    </form>
                        <%}%>
                </div>
        </section>
</section>
<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
<!-- calendar -->
	<script type="text/javascript" src="js/monthly.js"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
	</script>
	<!-- //calendar -->
        <%
        }
        %>
</body>
</html>

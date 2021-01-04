<%-- 
    Document   : main
    Created on : 16 May, 2019, 3:40:52 PM
    Author     : Ketan Chalana
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
<style>

.market-update-right i.fa.fa-music {
     font-size: 3em;
    color:#fff;
   text-align: left;
}
.market-update-right i.fa.fa-photo {
     font-size:3em;
    color:#fff;
    text-align: left;
}    
</style>
<script type="text/javascript">
    $(document).ready(function(){
        $("input").keyup(function(){
            var v=$(this).val();
            
            $.post("search.jsp",{id:v},function(data){
		$("#main-content").html(data);
                //alert(data);
                });
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $("button").click(function(){
            var v=$(this).text();
           // alert(v);
            $.post("main1.jsp",{id:v},function(data){
		$("#tables").html(data);
                });
        });
    });
</script>
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
            <input type="text" class="form-control search" id="search" placeholder=" Search">
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
                    <a class="active" href="main.jsp?id=a">
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
                    <a href="rmvcat.jsp">
                        <i class="fa fa-remove"></i>
                        <span>Remove Categories</span>
                    </a>
                </li>
                <li>
                    <a href="upload.jsp">
                        <i class="fa fa-upload"></i>
                        <span>Upload Songs</span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<%
            String songs=null;
            String album=null;
            String artist=null;
            Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                Statement st=cn.createStatement();
                ResultSet rs=st.executeQuery("select count(*) from album where status=0");
                        if(rs.next()){
                            album=rs.getString(1);
                        }
                ResultSet rs1=st.executeQuery("select count(*) from artist");
                        if(rs1.next()){
                            artist=rs1.getString(1);
                        }        
                ResultSet rs2=st.executeQuery("select count(*) from songs where status=0");
                        if(rs2.next()){
                            songs=rs2.getString(1);
                        }     
%>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!-- //market-->
		<div class="market-updates">
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-music"> </i>
					</div>
					 <div class="col-md-8 market-update-left">
					 <h4>Songs</h4>
					<h3><%=songs%></h3>
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-photo" ></i>
					</div>
					<div class="col-md-8 market-update-left">
					<h4>Album</h4>
						<h3><%=album%></h3>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-users"></i>
					</div>
					<div class="col-md-8 market-update-left">
						<h4>Artist</h4>
						<h3><%=artist%></h3>						
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>	
					<div class="col-md-12-offset-md-4" id="change">   
                                            <%
                                            char id='a';                                        
                                                char a='A';
                                                
                                                for(int i=0;i<26;i++){%>
                                                <button id="<%=a%>"><%=a%></button>&nbsp;
                                                    <%a++;
                                                }
                                            %>
                                                <table class="table" id="tables">
                                                    <thead>
                                                      <tr>
                                                        <th style="color:white">Album Name</th>
                                                        <th style="color:white">No. Of songs</th>
                                                        <th style="color:white">Edit</th>
                                                        <th style="color:white">Delete</th>                                                        
                                                      </tr>
                                                    </thead>
                               <%  
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                        Statement st1=cn1.createStatement();
                                        ResultSet rs3=st1.executeQuery("select distinct albumid from album where status=0 and albumname LIKE '"+id+"%'");
                                        while(rs3.next())
                                           { 
                                             String  albumid=rs3.getString("albumid");
                                                   Class.forName("com.mysql.jdbc.Driver");
                                                   Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                   Statement st2=cn2.createStatement();
                                                   ResultSet rs4=st2.executeQuery("select albumname from album where albumid='"+albumid+"'");
                                                   if(rs4.next()){
                                                      String tittle=rs4.getString("albumname");
                                                   Class.forName("com.mysql.jdbc.Driver");
                                                   Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                   Statement st3=cn3.createStatement();
                                                    ResultSet rs5=st3.executeQuery("select count(*) from songs where albumid='"+albumid+"'");
                                                    while(rs5.next())
                                                      {
                                                            int albums=rs5.getInt(1);
                                           %>

                                                    <tbody>
                                                      <tr> 
                                                          <td><a href="openalbum.jsp?id=<%=albumid%>" style="color:white"><%=tittle%></a></td>
                                                        <td style="color:white"><%=albums%></td>
                                                        
                                                        <%
                                                           } 
                                                           
                                                        %>
                                                        <td><a href="editalbum.jsp?id=<%=albumid%>"><button class="btn btn-primary">Edit Album Name</button></a></td>
                                                        <td><a href="delalbum.jsp?id=<%=albumid%>"><button class="btn btn-danger">Delete Album </button></a></td>
                                                      </tr>
                                                    </tbody>
                                                    <%
                                                      }
                                                        }
                                                     %>
                                                  </table>                                                                        
                                         </div>                                         
</section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2019 MusicKC. All rights reserved | Design by Ketan Chalana</p>
			</div>
		  </div>
  <!-- / footer -->
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

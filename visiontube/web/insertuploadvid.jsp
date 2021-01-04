<%-- 
    Document   : insertuploadvid
    Created on : Jan 17, 2019, 4:33:15 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>My Visiontube</title>
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
        try{
        String email=null;
        String code=null;
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
            code=request.getParameter("code");        
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
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
        <!-- upload -->
		<div class="upload">
			<!-- container -->
			<div class="container">
				<div class="upload-grids">
					<div class="upload-right">
						<div class="upload-file">
							<div class="services-icon">
								<span class="glyphicon glyphicon-open" aria-hidden="true"></span>
							</div>
                                                    <form action="vidprocess.jsp?code=<%=code%>" method="post" name="uploadForm" ENCTYPE='multipart/form-data'>
							<input type="file" value="Choose file.." name="video">
                                                        <div class="upload-info">
                                                            <h5>Select video to upload</h5>
                                                            <span>or</span>
                                                            <p>Drag and drop files</p>
                                                            <br><br>
                                                            <button class="btn btn-danger" style="width:300px;height:40px">Upload</button>
                                                        </div>
                                                        
                                                    </form>
						</div>
						
					</div>
				</div>
			</div>
			<!-- //container -->
		</div>
		<!-- //upload -->
    <%}}
        catch(NullPointerException e){
            response.sendRedirect("upload.jsp");
                    
        }
%>
  </body>
</html>

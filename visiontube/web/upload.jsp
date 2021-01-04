<%-- 
    Document   : upload
    Created on : 15 Jan, 2019, 6:14:53 PM
    Author     : ketan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
            try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
                        if(rs.next()){
                            code=rs.getString("code");
                        }
                        cn.close();
                    }
                    
                        catch(Exception e){
                                out.println(e.getMessage());
                                }
                    
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
              <%String s=null;
              String uc=null;%>
		<!-- upload -->
		<div  class="upload">
			<!-- container -->
			<div class="container">
				<div class="upload-grids">
					<div class="upload-right">
                                            <div class="content-top">        
                    <div class="col-sm-2"></div>
			<div class="col-sm-8 content-top-1">
                            <h2>Upload Video</h2><br><br>
                            <form method="post" action="insertupload.jsp?id=<%=code%>">
                                <div class="col-sm-8">
                                  <input type="text" placeholder="title" required="required" name="title" class="form-control" maxlength="20"><br>
				</div>
                                <div class="col-sm-10">
                                    <br><textarea placeholder="Short Description" required="required" name="sd" class="form-control" rows="2" cols="25" maxlength="250"></textarea>
				</div>
                                <div class="col-sm-10">
                                    <br><br><textarea placeholder="Long Description" required="required" name="ld" class="form-control" rows="4" cols="50" maxlength="1000"></textarea><br><br>
				</div>
                                
                                <div class="col-sm-8">
                                    <select name="chname" class="form-control" required="">
                                        <option selected="" disabled>Choose Channel Name</option>
                                            <%
                                                try{
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                    Statement st=cn.createStatement();
                                                    ResultSet rs=st.executeQuery("select * from channel where usercode='"+code+"'and status=0");
                                                    while(rs.next()){
                                                        s=rs.getString("cname");
                                                        uc=rs.getString("cid");
                                                        %>
                                                        <option value="<%=uc%>"><%=s%></option>
                                                     <%
                                                    }
                                                    cn.close();
                                                }
                    
                                                catch(Exception e){
                                                    out.println(e.getMessage());
                                                }
                                            %>
                                    </select><br><br>
					
				</div>
                                
                                <div class="col-sm-4"> </div>
                                <div class="col-sm-6">
                                    <button class="btn btn-danger" style="width:300px;height:40px">Submit</button>
                                </div>
                            </form>
                        </div>	
		</div>
		<div class="clearfix"> </div>
		
					</div>
					
				</div>
			</div>
			<!-- //container -->
		</div>			
    <%}}
        catch(NullPointerException e){
            response.sendRedirect("main.jsp");
                    
        }
%>
  </body>
</html>
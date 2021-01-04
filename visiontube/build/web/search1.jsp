<%-- 
    Document   : serch
    Created on : 17 Feb, 2019, 2:40:41 PM
    Author     : Ketan
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        $(document).ready(function(){
        $(".xs").click(function(){
           var c = $(this).attr("id");
           var cx = $(this).attr("rel");
           $.post("search1.jsp",{id:cx,rel:c},function(data){
               $("#msg").html(data);
                });
        });
    });
    </script>
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
        String ab=request.getParameter("rel");
        int x=Integer.parseInt(ab);
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
<div class="main-grids">
				<div class="top-grids">
					<div class="recommended-info">
                                            <h6>Showing results for <a href="#"><%=search%></a></h6>
					</div>
					<br><br>
                                            <%
                                            String img=null,imge=null,cid;
                                            String sql="select * from video where status=1 and (title LIKE '%"+search+"%' or sd LIKE '%"+search+"%' or ld LIKE '%"+search+"%'";
                                            String sea[]=search.split(" ");
                                            for(int i=0;i<sea.length;i++){
                                                sql=sql+"or title LIKE '%"+sea[i]+"%' or sd LIKE '%"+sea[i]+"%' or ld LIKE '%"+sea[i]+"%'";
                                            }
                                            sql=sql+") order by views DESC limit "+x;
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
							<div class="clearfix"></div>
						</div>
                                                    <%
                                                }
                                                Statement st2=cn1.createStatement();
                                                ResultSet rs2=st2.executeQuery(sql);
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
                                                //String ab=request.getParameter("rel");
                                                //out.println(ab);
                                            }
                                            catch(Exception e){
                                            
                                            }
                                            x=x+1;
                                            %>
                                            <div class="col-md-5"></div>
                                            <div class="col-md-4">
                                                <a href="#" style="font-size:15px" class="xs" id="<%=x%>" rel="<%=search%>">Load More...</a>
                                            </div>
					</div>									
					<div class="clearfix"> </div>
				</div>
<%}
%>        
        <%
            
        %>
    </body>
</html>

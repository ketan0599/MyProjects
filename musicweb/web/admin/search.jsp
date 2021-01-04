<%-- 
    Document   : search
    Created on : May 21, 2019, 2:27:17 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<body>
    <%
                                                    String search=request.getParameter("id");
                                                    String sql="select * from album where status=0 and(albumname LIKE '%"+search+"%'";
                                                    String sea[]=search.split(" ");
                                                    for(int i=0;i<sea.length;i++){
                                                          sql=sql+"or albumname LIKE '%"+sea[i]+"%'";
                                                    }
                                                    sql=sql+") ";
                                                    // out.println(sql);
                                                    %>
                                                    	
                                                                <div class="col-md-12">
                                                                    <div class="table-agile-info">
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Albums
                                                                            </div>
                                                                        <div>
                                                                        <table class="table" ui-jq="footable" ui-options='{
                                                                            "paging": {
                                                                                "enabled": true
                                                                             },
                                                                             "filtering": {
                                                                                "enabled": true
                                                                            },
                                                                            "sorting": {
                                                                                "enabled": true
                                                                            }}'>
                                                                        <thead>
                                                                            <tr>
                                                                                 <th style="color:black">Album Name</th>
                                                                                 <th style="color:black">Edit</th>
                                                                                 <th style="color:black">Delete</th> 
                                                                            </tr>
                                                                        </thead>
                                                                    <tbody>
                                <%
                                    try{
                                                     Class.forName("com.mysql.jdbc.Driver");
                                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                        Statement st=cn.createStatement();
                                       
                                        ResultSet rs=st.executeQuery(sql);
                                         String albums=null;
                                            String albumid=null;
                                            String albumname=null;
                                        while(rs.next()){        
                                            albumid=rs.getString("albumid");
                                            albumname=rs.getString("albumname");                                            
                                %>
                                            <tr data-expanded="true">                                
                                                <td><a href="openalbum.jsp?id=<%=rs.getString("albumid")%>" style="color:black"><%=rs.getString("albumname")%></a></td>
                                                         <td><a href="editalbum.jsp?id=<%=albumid%>"><button class="btn btn-primary">Edit Album Name</button></a></td>
                                                        <td><a href="delalbum.jsp?id=<%=albumid%>"><button class="btn btn-danger">Delete Album </button></a></td>
                                             </tr>
                                            <%
                                        }
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
                             <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2019 MusicKC. All rights reserved | Design by Ketan Chalana</p>
			</div>
		  </div>
<!-- //smooth scrolling -->


<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>

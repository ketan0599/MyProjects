<%-- 
    Document   : blockvidsearch
    Created on : 18 Feb, 2019, 6:03:05 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
        if(email==null && session.getAttribute(email)==null){
            response.sendRedirect("index.jsp");
        }
        else{
            String username="";
            String search=request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from admin where adminid='"+email+"'");
                        if(rs.next()){
                            username=rs.getString("aname");
                        }
                        cn.close();                        
            String code=null;
            int sn,pg,oset,a;
            String sql="select * from video where status=1 and (title LIKE '%"+search+"%' or sd LIKE '%"+search+"%' or ld LIKE '%"+search+"%'";
            String sea[]=search.split(" ");
            for(int i=0;i<sea.length;i++){
                sql=sql+"or title LIKE '%"+sea[i]+"%' or sd LIKE '%"+sea[i]+"%' or ld LIKE '%"+sea[i]+"%'";
            }
             sql=sql+")";
%>
        <section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     Blocked Videos
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
              <th><h3>ID</h3></th>
              <th><h3>Title</h3></th>
              <th><h3>Video ID</h3></th>
              <th><h3>Channel ID</h3></th>
              <th><h3>User-Code</h3></th>
              <th><h3>Views</h3></th>
              <th><h3></h3></th>
          </tr>
        </thead>
        <tbody>
            <%
        try{                    
            sn=1;        
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn4=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st4=cn4.createStatement();
                        ResultSet rs2=st4.executeQuery(sql);
                        while(rs2.next()){
                             %>
                                <tr>
                                <td>
                                    <%=sn%>
                                    <%sn++;%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("title"));%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("vid"));%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("cid"));%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("userid"));%>
                                </td>                                
                                <td>
                                    <%out.println(rs2.getString("views"));%>
                                </td>
                                <td>
                                    <a href="unblockvideo.jsp?id=<%=rs2.getString("vid")%>">Unblock<span class="fa fa-unlock"></span></a>
                                </td>
                                <div class="clearfix"> </div>
                                </tr>                                                             
                        <%
                        }
                        sn--;
                    cn4.close();}
                catch(Exception e){
                    out.println(e.getMessage());
                }
                %>
      </tbody>
      </table>
    </div>
 </div>
</div>
          <%}%>
</section>
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2019 VisioTube. All rights reserved | Design by <a href="">Ketan</a></p>
			</div>
		  </div>
    </body>
</html>

<%-- 
    Document   : blockchannelsearch
    Created on : 18 Feb, 2019, 6:02:43 PM
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
            String sea[]=search.split(" ");
            String sql="select * from channel where status=5 and (cname LIKE '%"+search+"%' or lname LIKE '%"+search+"%'";            
            for(int i=0;i<sea.length;i++){
                sql=sql+"or cname LIKE '%"+sea[i]+"%'";
            }
            sql=sql+")";
%>
        <section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
     Blocked Channel
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
              <th><h3>Channel Name</h3></th>
              <th><h3>Channel ID</h3></th>
              <th><h3>Subscribers</h3></th>
              <th><h3>User-Code</h3></th>
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
                                    <%out.println(rs2.getString("cname"));%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("cid"));%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("csub"));%>
                                </td>
                                <td>
                                    <%out.println(rs2.getString("usercode"));%>
                                </td>
                                <td>
                                    <a href="unblockchannel.jsp?id=<%=rs2.getString("cid")%>">Unblock<span class="fa fa-unlock"></span></a>
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


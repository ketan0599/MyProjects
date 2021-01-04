<%-- 
    Document   : uploadcount
    Created on : 21 Jan, 2019, 3:00:59 PM
    Author     : Ketan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String code=request.getParameter("code");
            String uid=null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from video where vid='"+code+"'");
                        if(rs.next()){
                            uid=rs.getString("userid");
                        }
                        cn.close();                        
            }
            catch(Exception e){
                //response.sendRedirect("main.jsp?fail=1");
                out.println(e.getMessage());
                
            }
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update video set status=1 where vid='"+code+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("update user set uploads=uploads+1 where code='"+uid+"'");
                        ps1.execute();
                        response.sendRedirect("main.jsp?success=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("main.jsp?fail=1");
                
            }
        %>
    </body>
</html>

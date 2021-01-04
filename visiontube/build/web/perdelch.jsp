<%-- 
    Document   : perdelch
    Created on : 26 Jan, 2019, 4:03:42 PM
    Author     : Ketan Chalana
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
            String code=request.getParameter("id");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("delete from channel where cid='"+code+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("delete from video where cid='"+code+"'");
                        ps1.execute();
                        PreparedStatement ps2=cn1.prepareStatement("delete from subscribe where cid='"+code+"'");
                        ps2.execute();
                        PreparedStatement ps3=cn1.prepareStatement("delete from likes where cid='"+code+"'");
                        ps3.execute();
                        response.sendRedirect("delch.jsp?success=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("delch.jsp?fail=1");
                
            }
        %>
    </body>
</html>

<%-- 
    Document   : blockuser
    Created on : 7 Feb, 2019, 5:08:07 PM
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
            String code=request.getParameter("id");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update user set status=5 where code='"+code+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("update video set status=7 where userid='"+code+"'");
                        ps1.execute();
                        PreparedStatement ps2=cn1.prepareStatement("update channel set status=7 where usercode='"+code+"'");
                        ps2.execute();
                        response.sendRedirect("user.jsp?id=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("user.jsp?id=1");
                
            }
        %>
    </body>
</html>

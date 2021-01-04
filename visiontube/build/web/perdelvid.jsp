<%-- 
    Document   : perdelvid
    Created on : 26 Jan, 2019, 3:55:32 PM
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
            String code=request.getParameter("code");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("delete from video where vid='"+code+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("delete from likes where vid='"+code+"'");
                        ps1.execute();
                        response.sendRedirect("delvid.jsp?success=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("delvid.jsp?fail=1");
                
            }
        %>
    </body>
</html>

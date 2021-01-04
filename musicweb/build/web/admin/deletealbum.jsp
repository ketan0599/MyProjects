<%-- 
    Document   : deletealbum
    Created on : 18 May, 2019, 2:18:13 PM
    Author     : Ketan Chalana
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
            String id=request.getParameter("id");
                     Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                        PreparedStatement ps=cn.prepareStatement("update album set status=1 where albumid='"+id+"'");
                                    ps.execute();
                        PreparedStatement ps1=cn.prepareStatement("update songs set status=1 where albumid='"+id+"'");
                                    ps1.execute();            
                        }
        %>
    </body>
</html>

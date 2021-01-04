<%-- 
    Document   : blockuser
    Created on : 16 May, 2019, 5:47:34 PM
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
            String code=request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                        PreparedStatement ps=cn.prepareStatement("update user set status=1 where ucode='"+code+"'");
                                            ps.execute();
                                        cn.close();
                                    response.sendRedirect("user.jsp");
        %>
    </body>
</html>

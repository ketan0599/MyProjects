<%-- 
    Document   : editchan
    Created on : 24 Jan, 2019, 2:53:36 PM
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
            String chan=request.getParameter("cname");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update channel set cname='"+chan+"' where cid='"+id+"'");
                        ps.execute();
                        response.sendRedirect("channel.jsp?success=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("channel.jsp?fail=1");
                
            }
        %>
    </body>
</html>

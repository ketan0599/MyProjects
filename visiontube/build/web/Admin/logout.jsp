<%-- 
    Document   : logout
    Created on : 9 Feb, 2019, 4:16:31 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("email");
            Cookie c =new Cookie("user","");
            c.setMaxAge(0);
            response.addCookie(c);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>

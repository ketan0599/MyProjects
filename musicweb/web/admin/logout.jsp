<%-- 
    Document   : logout
    Created on : 18 May, 2019, 1:22:03 PM
    Author     : Ketan Chalana
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
                Cookie co=new Cookie("admin","");
                co.setMaxAge(0);
                response.addCookie(co);
                session.removeAttribute("email");
                response.sendRedirect("index.jsp");
            %>
    </body>
</html>

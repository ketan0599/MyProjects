<%-- 
    Document   : videopage
    Created on : 7 Feb, 2019, 6:43:45 PM
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
            String id=request.getParameter("id");
            int pno=Integer.parseInt(id);
            if(pno==1){
                pno=1;
            }
            else{
                pno=pno*2;
                pno--;
            }
            //out.println(pno);
            response.sendRedirect("video.jsp?id="+pno);
        %>
    </body>
</html>

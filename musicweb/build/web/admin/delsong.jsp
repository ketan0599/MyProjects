<%-- 
    Document   : delsong
    Created on : May 21, 2019, 1:55:09 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%          
                String id=request.getParameter("id");
                if(request.getParameter("id")==null){
                    response.sendRedirect("main.jsp?err=1");
                }
                else{
                            try{                              
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");                                        
                                    PreparedStatement ps=cn.prepareStatement("update songs set status=1 where songid='"+id+"'");
                                        ps.execute();
                                        cn.close();
                                    response.sendRedirect("main.jsp?successs");
                            }
                            catch(Exception e){
                                out.println(e.getMessage());
                            }
                        }                
        %>

    </body>
</html>

<%-- 
    Document   : checkrmvcat
    Created on : 16 May, 2019, 11:14:11 PM
    Author     : Ketan Chalana
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
                String email=null;
                Cookie c[]=request.getCookies();
                for(int i=0;i<c.length;i++){
                    if(c[i].getName().equals("admin")){
                        email=c[i].getValue();
                        break;
                    }
                }
                if(email==null && session.getAttribute(email)==null){
                    response.sendRedirect("index.jsp");
                }
                else{
                    String code=request.getParameter("id");
                    if(request.getParameter("id")==null){
                        response.sendRedirect("rmvcat.jsp?err=1");
                    }
                    else{
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                PreparedStatement ps=cn.prepareStatement("update category set status=1");
                                ps.execute();
                                cn.close();
                                response.sendRedirect("main.jsp?success");
                            }
                            catch(Exception e){
                                out.println(e.getMessage());
                            }
                           // out.println(s);
                    }
                } 
        %>

    </body>
</html>

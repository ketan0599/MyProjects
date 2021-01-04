<%-- 
    Document   : updatealbum
    Created on : 18 May, 2019, 2:14:05 PM
    Author     : Ketan Chalana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" import="java.util.*"%>%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  
            try{
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
                String name=request.getParameter("aname");
                if(request.getParameter("aname")==null){
                    response.sendRedirect("editalbum.jsp?err=1");
                }
                else{
                    String id=request.getParameter("id");
                     Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                        Statement st1=cn1.createStatement();
                        ResultSet rs1=st1.executeQuery("select * from album where albumid='"+id+"'");
                        if(rs1.next()){
                            PreparedStatement ps1=cn1.prepareStatement("update album set albumname='"+name+"' where albumid='"+id+"'");
                                    ps1.execute();
                        }
                }
            }
        }
        catch(NullPointerException e){
            response.sendRedirect("main.jsp?success");                    
        }        
        %>

    </body>
</html>


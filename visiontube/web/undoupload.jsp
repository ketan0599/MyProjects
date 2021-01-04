<%-- 
    Document   : undoupload
    Created on : 26 Jan, 2019, 2:53:52 PM
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
            String email=null;
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("user")){
                email=c[i].getValue();
                break;
            }
        }
        if(email==null && session.getAttribute(email)==null){
            response.sendRedirect("index.jsp");
        }
        else{
            int count=0;
            String id=request.getParameter("code");
         Class.forName("com.mysql.jdbc.Driver");
                        Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st2=cn2.createStatement();
                           ResultSet rs2=st2.executeQuery("select * from video where status=1 and cid='"+id+"'");
                        while(rs2.next()){
                            count=count+1;
                        }
                        cn2.close();
                        try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        while(count!=0){
                        PreparedStatement ps4=cn3.prepareStatement("update user set uploads=uploads+1 where email='"+email+"'");
                        ps4.execute();
                        count=count-1;
                        }
                        cn3.close();  
                        response.sendRedirect("delch.jsp?success=1");
            }
            catch(Exception e){
                   out.println(e.getMessage());
                
            }
        }
        %>
    </body>
</html>

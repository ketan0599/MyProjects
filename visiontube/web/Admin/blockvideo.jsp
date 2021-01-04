<%-- 
    Document   : blockvideo
    Created on : 7 Feb, 2019, 6:44:59 PM
    Author     : Ketan
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
            String code=request.getParameter("id");
            String users=null;
            String ud=null;
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from video where vid='"+code+"'");
                        if(rs.next()){
                            ud=rs.getString("userid");
                        }
                        cn.close();
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update video set status=5 where vid='"+code+"'");
                        ps.execute();
                        response.sendRedirect("video.jsp?id=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("video.jsp?id=1");       
            }
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps1=cn3.prepareStatement("update user set uploads=uploads-1 where code='"+ud+"'");
                        ps1.execute();
                        
        %>
    </body>
</html>

<%-- 
    Document   : unblockchannel
    Created on : 9 Feb, 2019, 4:09:03 PM
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
                        ResultSet rs=st.executeQuery("select * from channel where cid='"+code+"'");
                        if(rs.next()){
                            ud=rs.getString("usercode");
                        }
                        cn.close();
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update channel set status=0 where cid='"+code+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("update video set status=1 where cid='"+code+"'");
                        ps1.execute();
                        response.sendRedirect("blockedchannel.jsp?id=1");
                        cn1.close();                        
            }
            catch(Exception e){
                response.sendRedirect("blockedchannel.jsp?id=1");
                
            }
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st2=cn2.createStatement();
                        ResultSet rs2=st2.executeQuery("select count(*) from video where userid='"+ud+"' and status=1");
                        if(rs2.next()){
                            users=rs2.getString(1);
                        }
                        cn2.close(); 
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps3=cn3.prepareStatement("update user set uploads='"+users+"'where code='"+ud+"'");
                        ps3.execute();
                        PreparedStatement ps4=cn3.prepareStatement("update user set channels=channels+1 where code='"+ud+"'");
                        ps4.execute();
        %>
    </body>
</html>

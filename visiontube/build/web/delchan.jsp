<%-- 
    Document   : delchan
    Created on : 24 Jan, 2019, 3:02:47 PM
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
            String id1=null;
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
                        if(rs.next()){
                            id1=rs.getString("code");
                        }
                        cn.close();
            String id=request.getParameter("id");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update channel set status=1 where cid='"+id+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("update video set status=2 where cid='"+id+"'");
                        ps1.execute();
                        PreparedStatement ps2=cn1.prepareStatement("update user set channels=channels-1 where code='"+id1+"'");
                        ps2.execute();
                        PreparedStatement ps3=cn1.prepareStatement("update subscribe set status=1 where cid='"+id+"'");
                        ps3.execute();
                        PreparedStatement ps4=cn1.prepareStatement("update likes set status=1 where cid='"+id+"'");
                        ps4.execute();
                        cn1.close();
                        response.sendRedirect("countuploads.jsp?code="+id);
            }
            catch(Exception e){
                        response.sendRedirect("delch.jsp?fail=0");
                
            }
                       
        }
        %>
    </body>
</html>

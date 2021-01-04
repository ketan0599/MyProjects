<%-- 
    Document   : deletevideo
    Created on : 26 Jan, 2019, 3:19:06 PM
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
            String id1=null;
            String cid=null;
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
                        if(rs.next()){
                            id1=rs.getString("code");
                        }
                        cn.close();
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");            
                        Statement st1=cn2.createStatement();
                        ResultSet rs1=st1.executeQuery("select * from channel where usercode='"+id1+"'");
                        if(rs1.next()){
                            cid=rs1.getString("cid");
                        }
                        cn2.close();
            String id=request.getParameter("code");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        PreparedStatement ps=cn1.prepareStatement("update video set status=0 where vid='"+id+"'");
                        ps.execute(); 
                        PreparedStatement ps1=cn1.prepareStatement("update user set uploads=uploads-1 where code='"+id1+"'");
                        ps1.execute();
                        PreparedStatement ps2=cn1.prepareStatement("update likes set status=1 where vid='"+id+"'");
                        ps2.execute(); 
                        cn1.close();
                        response.sendRedirect("gallery.jsp?code="+cid);
            }
            catch(Exception e){
                        response.sendRedirect("delch.jsp?fail=0");
                
            }   
        }
        %>
    </body>
</html>

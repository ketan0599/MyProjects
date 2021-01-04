<%-- 
    Document   : delsub
    Created on : 30 Jan, 2019, 6:26:18 PM
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
                        PreparedStatement ps=cn1.prepareStatement("delete from subscribe where cid='"+id+"' and userid='"+id1+"'");
                        ps.execute();
                        PreparedStatement ps1=cn1.prepareStatement("update channel set csub=csub-1 where cid='"+id+"'");
                        ps1.execute();
                        cn1.close();
                        response.sendRedirect("subscribe.jsp?success=1");
            }
            catch(Exception e){
                        response.sendRedirect("subscribe.jsp?fail=0");
                
            }
                       
        }
        %>
    </body>
</html>

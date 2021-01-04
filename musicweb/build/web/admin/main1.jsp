<%-- 
    Document   : main1.jsp
    Created on : May 21, 2019, 5:50:51 PM
    Author     : Ketan
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
        <%String id=request.getParameter("id");%>
                                                    <thead>
                                                      <tr>
                                                        <th style="color:white">Album Name</th>
                                                        <th style="color:white">No. Of songs</th>
                                                        <th style="color:white">Edit</th>
                                                        <th style="color:white">Delete</th>                                                        
                                                      </tr>
                                                    </thead>
                               <%  
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                        Statement st1=cn1.createStatement();
                                        ResultSet rs3=st1.executeQuery("select distinct albumid from album where status=0 and albumname LIKE '"+id+"%'");
                                        while(rs3.next())
                                           { 
                                             String  albumid=rs3.getString("albumid");
                                                   Class.forName("com.mysql.jdbc.Driver");
                                                   Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                   Statement st2=cn2.createStatement();
                                                   ResultSet rs4=st2.executeQuery("select albumname from album where albumid='"+albumid+"'");
                                                   if(rs4.next()){
                                                      String tittle=rs4.getString("albumname");
                                                   Class.forName("com.mysql.jdbc.Driver");
                                                   Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                                   Statement st3=cn3.createStatement();
                                                    ResultSet rs5=st3.executeQuery("select count(*) from songs where albumid='"+albumid+"'");
                                                    while(rs5.next())
                                                      {
                                                            int albums=rs5.getInt(1);
                                           %>

                                                    <tbody>
                                                      <tr> 
                                                          <td><a href="openalbum.jsp?id=<%=albumid%>" style="color:white"><%=tittle%></a></td>
                                                        <td style="color:white"><%=albums%></td>
                                                        
                                                        <%
                                                           } 
                                                           
                                                        %>
                                                        <td><a href="editalbum.jsp?id=<%=albumid%>"><button class="btn btn-primary">Edit Album Name</button></a></td>
                                                        <td><a href="delalbum.jsp?id=<%=albumid%>"><button class="btn btn-danger">Delete Album </button></a></td>
                                                      </tr>
                                                    </tbody>
                                                    <%
                                                      }
                                                        }
                                                     %>
    </body>
</html>

<%-- 
    Document   : addsong1
    Created on : 17 May, 2019, 2:07:49 PM
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
            try{              
                String s="";
                LinkedList l = new LinkedList();
                for(char ch='A';ch<='Z';ch++){
                    l.add(ch+"");       
                }
                for(char ch='a';ch<='z';ch++){
                    l.add(ch+"");                        
                }
                for(char ch='0';ch<='9';ch++){
                    l.add(ch+"");                        
                }
                Collections.shuffle(l);
                for(int i=0;i<10;i++){
                    s+= l.get(i);
                }
                String name=request.getParameter("title");
                String artist=request.getParameter("artist");
                String desc=request.getParameter("Desc");
                String aname=request.getParameter("aname");
                if(request.getParameter("title")==null||request.getParameter("artist")==null||request.getParameter("Desc")==null||request.getParameter("aname")==null){
                    response.sendRedirect("upload.jsp?err=1");
                }
                else{
                            try{
                                java.util.Date d = new java.util.Date();
                                String date=d.toString();
                                /*out.println(name);
                                out.println(s);
                                out.println(desc);
                                out.println(aname);
                                out.println(cat);
                                out.println(date);
                                out.println(artist);*/
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                        
                                    PreparedStatement ps=cn.prepareStatement("insert into songs(title,songid,descs,artists,albumid,dates) values(?,?,?,?,?,?)");
                                            ps.setString(1,name);
                                            ps.setString(2,s);
                                            ps.setString(3,desc);
                                            ps.setString(4,artist);
                                            ps.setString(5,aname);
                                            ps.setString(6,date);
                                            //ps.setString(8,"0");                                            
                                            ps.execute();
                                        cn.close();
                                    response.sendRedirect("uploadsongimg.jsp?code="+s);
                            }
                            catch(Exception e){
                                out.println(e.getMessage());
                            }
                        }
                }
        catch(NullPointerException e){
            response.sendRedirect("addsong.jsp");                    
        }        
        %>

    </body>
</html>

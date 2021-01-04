<%-- 
    Document   : addalbum
    Created on : 16 May, 2019, 4:09:16 PM
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
                for(int i=0;i<5;i++){
                    s+= l.get(i);
                }
                String name=request.getParameter("aname");
                String cat=request.getParameter("cat");
                if(request.getParameter("aname")==null||request.getParameter("cat")==null){
                    response.sendRedirect("album.jsp?err=1");
                }
                else{
                     Class.forName("com.mysql.jdbc.Driver");
                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                        Statement st1=cn1.createStatement();
                        ResultSet rs1=st1.executeQuery("select * from album where albumname='"+name+"'");
                        if(rs1.next()){
                            PreparedStatement ps1=cn1.prepareStatement("update album set status=0 where albumname='"+name+"'");
                                    ps1.execute();
                        }
                        else{
                            try{
                                java.util.Date d = new java.util.Date();
                                String date=d.toString();
                                /*out.println(date);
                                out.println(s);
                                out.println(name);
                                out.println(cat);*/
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                        PreparedStatement ps=cn.prepareStatement("insert into album (albumid,albumname,catid,date) values(?,?,?,?)");
                                            ps.setString(1,s);
                                            ps.setString(2,name);
                                            ps.setString(3,cat);
                                            ps.setString(4,date);
                                            ps.execute();
                                        cn.close();
                                    response.sendRedirect("uploadimg.jsp?code="+s);
                            }
                            catch(Exception e){
                                out.println(e.getMessage());
                            }
                           // out.println(s);
                        }
                }
            }
        }
        catch(NullPointerException e){
            response.sendRedirect("addalbum.jsp");                    
        }        
        %>

    </body>
</html>

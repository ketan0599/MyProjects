<%-- 
    Document   : addartist
    Created on : 18 May, 2019, 2:34:41 PM
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
                String name=request.getParameter("artist");
                if(request.getParameter("artist")==null){
                    response.sendRedirect("artist.jsp?err=1");
                }
                else{
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    PreparedStatement ps=cn.prepareStatement("insert into artist (artistname,artistid) values(?,?)");
                                        ps.setString(1,name);
                                        ps.setString(2,s);
                                        ps.execute();
                                        cn.close();
                                    response.sendRedirect("uploadartistimg.jsp?id="+s);
                            }
                            catch(Exception e){
                                out.println(e.getMessage());
                            }
                           // out.println(s);                        
                }
            }
        }
        catch(NullPointerException e){
            response.sendRedirect("addartist.jsp");                    
        }        
        %>

    </body>
</html>

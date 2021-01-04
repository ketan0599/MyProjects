<%-- 
    Document   : upload
    Created on : 17 jan, 2019, 04:21:37 PM
    Author     : Ketan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  
                         String chan=request.getParameter("chname");
             try{
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
            String title=request.getParameter("title");
            String sd=request.getParameter("sd");
            String ld=request.getParameter("ld");
            String uc=request.getParameter("chname");
            String user=request.getParameter("id");
            if(request.getParameter("title")==null||request.getParameter("sd")==null||request.getParameter("ld")==null||request.getParameter("chname")==null){
                response.sendRedirect("upload.jsp?err=1");
            }
            else{
                    try{
                        java.util.Date d = new java.util.Date();
                        String date=d.toString();
                    Class.forName("com.mysql.jdbc.Driver");
                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                            PreparedStatement ps=cn.prepareStatement("insert into video (vid,title,sd,ld,cid,userid,date) values(?,?,?,?,?,?,?)");
                                    ps.setString(1,s);
                                    ps.setString(2,title);
                                    ps.setString(3,sd);
                                    ps.setString(4,ld);
                                    ps.setString(5,uc);
                                    ps.setString(6,user);
                                    ps.setString(7,date);
                                    ps.execute();
                                    cn.close();
                                    response.sendRedirect("insertuploadvid.jsp?code="+s);
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }
            }
        }
             }
                catch(NullPointerException e){
            response.sendRedirect("insertupload.jsp");
                    
        }
        
        %>
    </body>
</html>

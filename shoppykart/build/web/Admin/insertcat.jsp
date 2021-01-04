<%-- 
    Document   : insertcat
    Created on : 2 May, 2019, 12:31:49 PM
    Author     : Ketan
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
            if(request.getParameter("cname")==null){
                response.sendRedirect("acat.jsp");
             }
            else{
                String cname="";
                String sn="";
                String s="";
                LinkedList l = new LinkedList();
                for(char c='A';c<='Z';c++){
                    l.add(c+"");    
                }
                for(char c='a';c<='z';c++){
                    l.add(c+"");                        
                }
                for(char c='0';c<='9';c++){
                    l.add(c+"");                        
                }
                Collections.shuffle(l);
                for(int i=0;i<10;i++){
                    s+= l.get(i);
                }
                int p=0;
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select count(*) from categories");
                        if(rs.next()){
                           sn=rs.getString(1);
                          // out.println(sn);
                        }
                        cn.close();
                }
                catch(Exception e){
                    out.println(e.getMessage());
                   // out.println("hi");
                }
                s=sn+s;
                p=Integer.parseInt(sn);
                p++;
                sn=""+p;
                cname=request.getParameter("cname");
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                        PreparedStatement ps=cn.prepareStatement("insert into categories (sn,name,code) values(?,?,?)");
                        ps.setString(1,sn);
                        ps.setString(2,cname);
                        ps.setString(3,s);
                        ps.execute();
                        cn.close();
                        response.sendRedirect("main.jsp?success==1");
                }
                catch(Exception ex){
                    out.println(ex.getMessage());
                }
            }
        %>
    </body>
</html>

<%-- 
    Document   : check
    Created on : 1 May, 2019, 3:23:49 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    String email=null;
    String pass=null;
    Cookie c[]=request.getCookies();
    
    for(int i=0;i<c.length;i++){
        if(c[i].getName().equals("admin")){
            email=c[i].getValue();
            break;
        }
    }
    if(email==null){
        if(request.getParameter("email")==null){
            response.sendRedirect("index.jsp?email==0");
        }
        else{
            email=request.getParameter("email");
        }
    }
    if(request.getParameter("pass")==null){
        response.sendRedirect("index.jsp?err=1");
    }
    else{
        pass=request.getParameter("pass");
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'");
                        if(rs.next()){
                            if(rs.getString("pass").equals(pass)){
                                Cookie co=new Cookie("admin",email);
                                co.setMaxAge(3600);
                                response.addCookie(co);
                                session.setAttribute(email,pass);
                                session.setMaxInactiveInterval(10);
                                response.sendRedirect("main.jsp");
                            }
                            else{
                                response.sendRedirect("index.jsp?match==0");
                            }
                        }
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }
            }
%>

<%-- 
    Document   : check
    Created on : 16 May, 2019, 3:36:34 PM
    Author     : Ketan Chalana
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
            response.sendRedirect("index.jsp?err=1");
        }
        else{
            email=request.getParameter("email");
        }
    }
    if(request.getParameter("pass")==null){
        response.sendRedirect("index.jsp?pass required");
    }
    else{
        pass=request.getParameter("pass");
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'");
                        if(rs.next()){
                            if(rs.getString("password").equals(pass)){
                                Cookie co=new Cookie("admin",email);
                                co.setMaxAge(6000);
                                response.addCookie(co);
                                session.setAttribute(email,pass);
                                session.setMaxInactiveInterval(1000);
                                response.sendRedirect("main.jsp?id=a");
                            }
                            else{
                                response.sendRedirect("index.jsp?pass not match");
                            }
                        }
                        else{
                            out.println("User Blocked Contact Admin");
                        }
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }
            }
%>

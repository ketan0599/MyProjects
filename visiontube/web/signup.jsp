<%-- 
    Document   : signup
    Created on : Jan 14, 2019, 3:36:07 PM
    Author     : Ketan
--%>

<%@page contentType="text/html" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    if(request.getParameter("fname")==null||request.getParameter("lname")==null||request.getParameter("mobile")==null||request.getParameter("email")==null||request.getParameter("pass")==null){
                response.sendRedirect("login.jsp?err=1");
    }
            else{
                
                try{
                   
                    String fname=request.getParameter("fname");
                    String lname=request.getParameter("lname");
                    String mobile=request.getParameter("mobile");
                     String email=request.getParameter("email");
                    String pass=request.getParameter("pass");
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
         
                     Class.forName("com.mysql.jdbc.Driver");
                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                            PreparedStatement ps=cn.prepareStatement("insert into user (fname,lname,mobile,email,pass,code) values(?,?,?,?,?,?)");
                                    ps.setString(1,fname);
                                    ps.setString(2,lname);
                                     ps.setString(3,mobile);
                                    ps.setString(4,email);
                                    ps.setString(5,pass);
                                   
                                    ps.setString(6,s);
                                    ps.execute();
                                    cn.close();
                                    Cookie co=new Cookie("user",email);
                                co.setMaxAge(3600);
                                response.addCookie(co);
                                session.setAttribute(email,pass);
                                session.setMaxInactiveInterval(10);
                                response.sendRedirect("main.jsp");
                                   
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }
                }
                
            
%>

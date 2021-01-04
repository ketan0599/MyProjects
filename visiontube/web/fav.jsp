<%-- 
    Document   : fav
    Created on : 14 Feb, 2019, 6:15:07 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%  
            String vid =request.getParameter("id");
           // out.print(vid);
            String subcount=null;   
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
            String uid=null;
            String cname=null;
            String sub=null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from user where email='"+email+"'");
                        if(rs.next()){
                            uid=rs.getString("code");
                        }
                        cn.close();
            }
            catch(Exception e){
                out.print(e.getMessage());
            }
            try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st1=cn1.createStatement();
                                                            ResultSet rs1=st1.executeQuery("select * from favorites where userid='"+uid+"'and vid='"+vid+"'");
                                                            if(rs1.next()){
                                                                PreparedStatement ps=cn1.prepareStatement("delete from favorites where userid='"+uid+"'and vid='"+vid+"'");
                                                                ps.execute();                                                                
                                                            }
                                                            else{        
                                                                PreparedStatement ps1=cn1.prepareStatement("insert into favorites(userid,vid) values(?,?)");
                                                                ps1.setString(1,uid);
                                                                ps1.setString(2,vid);
                                                                ps1.execute();
                                                            }
                                                            cn1.close();
            }
           
            catch(Exception e){
                out.print(e.getMessage());
            }
        }
        %>


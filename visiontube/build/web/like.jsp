<%-- 
    Document   : like
    Created on : Jan 27, 2019, 7:10:07 PM
    Author     : Dell
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%  
            String vid =request.getParameter("id");
           // out.print(vid);
            String lcount=null;   
            String discount=null;
            String cid=null;
            String s=null;
            String email=null;
            String r=null;
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
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from video where vid='"+vid+"'");
                        if(rs.next()){
                            cid=rs.getString("cid");
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
                                                            ResultSet rs1=st1.executeQuery("select * from likes where userid='"+uid+"'and vid='"+vid+"'");
                                                            if(rs1.next()){
                                                                PreparedStatement ps=cn1.prepareStatement("delete from likes where userid='"+uid+"'and vid='"+vid+"'");
                                                                ps.execute();
                                                                r="d";
                                                            }
                                                            else{
                                                                PreparedStatement ps2=cn1.prepareStatement("delete from dislikes where userid='"+uid+"'and vid='"+vid+"'");
                                                                ps2.execute();
                                                                PreparedStatement ps1=cn1.prepareStatement("insert into likes(userid,vid,cid) values(?,?,?)");
                                                                ps1.setString(1,uid);
                                                                ps1.setString(2,vid);
                                                                ps1.setString(3,cid);
                                                                ps1.execute();
                                                                r="l";
                                                            }
                                                            cn1.close();
            }
           
            catch(Exception e){
                out.print(e.getMessage());
            }
            try{
            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st3=cn2.createStatement();
                                                            ResultSet rs3=st3.executeQuery("select count(*) from likes where vid='"+vid+"'");
                                                            if(rs3.next()){
                                                                lcount=rs3.getString(1);
                                                            }
                                                            cn2.close();
                                                            
            }
            
            catch(Exception e){
                out.print(e.getMessage());
            }
             try{
            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                                            Statement st3=cn2.createStatement();
                                                            ResultSet rs4=st3.executeQuery("select count(*) from dislikes where vid='"+vid+"'");
                                                            if(rs4.next()){
                                                                discount=rs4.getString(1);
                                                            }
                                                            cn2.close();
                                                          
            }
            
            catch(Exception e){
                out.print(e.getMessage());
            }
        s=lcount;
        s=s+"_";
        s=s+discount;
        out.print(s);
        }
        %>

<%-- 
    Document   : subscribechan
    Created on : 30 Jan, 2019, 10:11:34 AM
    Author     : Ketan
--%>
<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%  
            String cid =request.getParameter("id");
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
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from channel where cid='"+cid+"'");
                        if(rs.next()){
                            cname=rs.getString("cname");
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
                                                            ResultSet rs1=st1.executeQuery("select * from subscribe where userid='"+uid+"'and cid='"+cid+"'");
                                                            if(rs1.next()){
                                                                PreparedStatement ps=cn1.prepareStatement("delete from subscribe where userid='"+uid+"'and cid='"+cid+"'");
                                                                ps.execute();
                                                                PreparedStatement ps2=cn1.prepareStatement("update channel set csub=csub-1 where cid='"+cid+"'");
                                                                ps2.execute();  
                                                                sub="Subscribe";
                                                            }
                                                            else{        
                                                                
                                                                PreparedStatement ps3=cn1.prepareStatement("update channel set csub=csub+1 where cid='"+cid+"'");
                                                                ps3.execute();
                                                                PreparedStatement ps1=cn1.prepareStatement("insert into subscribe(userid,cid,cname) values(?,?,?)");
                                                                ps1.setString(1,uid);
                                                                ps1.setString(2,cid);
                                                                ps1.setString(3,cname);
                                                                ps1.execute();
                                                                sub="Subscribed";
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
                                                            ResultSet rs3=st3.executeQuery("select * from channel where cid='"+cid+"'");
                                                            if(rs3.next()){
                                                                subcount=rs3.getString("csub");
                                                            }
                                                            cn2.close();
                                                            
            }
            
            catch(Exception e){
                out.print(e.getMessage());
            }                     
        out.print(sub+" "+subcount);
        }
        %>

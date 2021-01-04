<%-- 
    Document   : create
    Created on : 15 Jan, 2019, 2:50:42 PM
    Author     : ketan
--%>

<%@page contentType="text/html" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    out.println(request.getParameter("channel"));
        try{
        if(request.getParameter("channel")==null){
           // response.sendRedirect("main.jsp?err=1");
            out.println(request.getParameter("channel"));
        }
        else{
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
            String chan=request.getParameter("channel");
            String cname=null;
            String status=null;
            String usercode=request.getParameter("id");

            try{
                Class.forName("com.mysql.jdbc.Driver");
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                    Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from channel where cname='"+chan+"' And usercode='"+usercode+"'");
                        if(rs.next()){
                            cname=rs.getString("cname");
                            status=rs.getString("status");
                            out.println(cname);
                            out.println(status);
                            if(chan.equals(cname)){
                                if(rs.getString("status").equals("1")){
                                    out.println("1");
                                    try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                        Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                        PreparedStatement ps=cn1.prepareStatement("update channel set status=0 where cname='"+rs.getString("cname")+"'");
                                        ps.execute();
                                        cn1.close();
                                        //response.sendRedirect("main.jsp?status==1");
                                    }
                                    catch(Exception e){
                                            out.println(e.getMessage());
                                    }
                            }
                            else{
                                out.println("2");
                                //response.sendRedirect("main.jsp?exist==1");
                            }
                        }
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
                            java.util.Date d = new java.util.Date();
                            String date=d.toString();
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                    PreparedStatement ps=cn2.prepareStatement("insert into channel (cid,cname,usercode,date) values(?,?,?,?)");
                                    ps.setString(1,s);
                                    ps.setString(2,chan);
                                    ps.setString(3,usercode);
                                    ps.setString(4,date);
                                    ps.execute();
                            }
                            catch(Exception e){
                                out.println(e.getMessage());
                            }
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                                    PreparedStatement ps1=cn1.prepareStatement("update user set channels=channels+1 where email='"+email+"'");
                                    ps1.execute();
                                    cn1.close();
                                    response.sendRedirect("main.jsp?success=1");
                            }
                            catch(Exception e){
                                    out.println(e.getMessage());
                            }
                        }
                        cn.close();
                    }
                    catch(Exception e){
                            out.println(e.getMessage());
                    }
                }
        }
}
catch(NullPointerException e){
            response.sendRedirect("create.jsp");
}
%>
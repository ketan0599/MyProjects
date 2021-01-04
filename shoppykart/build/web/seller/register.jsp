<%-- 
    Document   : register
    Created on : Jun 18, 2019, 2:55:17 PM
    Author     : Ketan
--%>
<%@page contentType="text/html" import="java.util.*,java.sql.*,java.io.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("cname")==null || request.getParameter("coname")==null || request.getParameter("email")==null || request.getParameter("pass")==null
       || request.getParameter("contact")==null      || request.getParameter("acc")==null || request.getParameter("ifsc")==null || request.getParameter("gst")==null || request.getParameter("pan")==null || request.getParameter("address")==null || request.getParameter("country")==null || request.getParameter("state")==null || request.getParameter("city")==null || request.getParameter("pin")==null){
        response.sendRedirect("index.jsp");
    }
    else{
           String cname=request.getParameter("cname");
           String coname=request.getParameter("coname");
           String email=request.getParameter("email");
           String pass=request.getParameter("pass");
           String contact=request.getParameter("contact");
           String acc=request.getParameter("acc");
           String ifsc=request.getParameter("ifsc");
           String gst=request.getParameter("gst");
           String pan=request.getParameter("pan");
           String address=request.getParameter("address");
           String country=request.getParameter("country");
           String state=request.getParameter("state");
           String city=request.getParameter("city");
           String pin=request.getParameter("pin");
           int count=0;
        
		String scode="";
		int sn=0;
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
               scode+= l.get(i);
            }
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                Statement st=cn.createStatement();
                 ResultSet  rs=st.executeQuery("select * from seller");
                 while(rs.next()){
                   sn++;  
                 }  
			sn++;	 
               scode=scode+sn;
                rs=st.executeQuery("select * from seller where email='"+email+"' OR compname='"+cname+"'");
                if(rs.next()){
                    response.sendRedirect("index.jsp");
                }
                else{
                    PreparedStatement ps=cn.prepareStatement(" insert into seller(sn,compname,cowname,email,pass,contact,scode,acc,ifsc,gst,pan,address,country,state,city,pin,status)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                      ps.setInt(1,sn);
                      ps.setString(2,cname);
                      ps.setString(3,coname);
                      ps.setString(4,email);
                      ps.setString(5,pass);
                      ps.setString(6,contact);
                      ps.setString(7,scode);
                      ps.setString(8,acc);
                      ps.setString(9,ifsc);
                      ps.setString(10,gst);
                      ps.setString(11,pan);
                      ps.setString(12,address);
                      ps.setString(13,country);
                      ps.setString(14,state);
                      ps.setString(15,city);
                      ps.setString(16,pin);
                      ps.setInt(17,2);
                      ps.execute();
                      rs=st.executeQuery("select * from seller where scode='"+scode+"'");
                    
                   if(rs.next()){
                      Cookie ct=new Cookie("sellc",rs.getString(6));
                      ct.setMaxAge(240);
                      response.addCookie(ct);
                      session.setAttribute(rs.getString(6),rs.getString(4));
                      session.setMaxInactiveInterval(240);
                      cn.close();
                      response.sendRedirect("pro.jsp");
                }
                }
            }
             catch(Exception e){
            out.println(e.getMessage());
            }
    }
    
%>
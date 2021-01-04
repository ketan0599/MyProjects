<%-- 
    Document   : cpass
    Created on : 22 Jan, 2019, 5:37:19 PM
    Author     : Ketan Chalana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String cp=null;
           String np=null;
           String rp=null;
           String pass=null;
           String code=request.getParameter("code");
        try{
       String email=null;
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("user")){
                email=c[i].getValue();
                break;
            }
        }
        if(request.getParameter("cp")==null||request.getParameter("np")==null||request.getParameter("rp")==null){
            response.sendRedirect("cp.jsp?err=1");
        }
        else{
        if(email==null && session.getAttribute(email)==null){
            response.sendRedirect("index.jsp");
        }
        else{
             try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from user where code='"+code+"'");
                        if(rs.next()){
                            pass=rs.getString(5);
                        }
                        cn.close();
                    }
                    
                        catch(Exception e){
                                out.println(e.getMessage());
                                }
             
           cp=request.getParameter("cp");
           np=request.getParameter("np");
           rp=request.getParameter("rp");
           if((np).equals(rp)){
                if((cp).equals(pass)){
                    try{
                     Class.forName("com.mysql.jdbc.Driver");
                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/visiontube","root","");
                            PreparedStatement ps=cn.prepareStatement("update user set pass='"+np+"' where code='"+code+"'");
                                    ps.execute();
                                    cn.close();
                                    response.sendRedirect("cp.jsp?success=1");
                }
                catch(Exception e){
                    out.println(e.getMessage());
                }
                }
                else{
                    response.sendRedirect("cp.jsp?pass=0");
                }
           } 
           else{
               response.sendRedirect("cp.jsp?pass==0");          }
        }
        }
        }
        catch(NullPointerException e){
            response.sendRedirect("cpass.jsp");
                    
        }    
        %>
    </body>
</html>



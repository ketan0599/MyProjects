package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Home</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write(" <!-- Bootstrap Core CSS -->\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel='stylesheet' type='text/css' />\n");
      out.write("<!-- Custom CSS -->\n");
      out.write("<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("<!-- Graph CSS -->\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- jQuery -->\n");
      out.write("<!-- lined-icons -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/icon-font.min.css\" type='text/css' />\n");
      out.write("<!-- //lined-icons -->\n");
      out.write("<!-- chart -->\n");
      out.write("<script src=\"js/Chart.js\"></script>\n");
      out.write("<!-- //chart -->\n");
      out.write("<!--animate-->\n");
      out.write("<link href=\"css/animate.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("<script src=\"js/wow.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\t new WOW().init();\n");
      out.write("\t</script>\n");
      out.write("<!--//end-animate-->\n");
      out.write("<!----webfonts--->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!---//webfonts---> \n");
      out.write(" <!-- Meters graphs -->\n");
      out.write("<script src=\"js/jquery-1.10.2.min.js\"></script>\n");
      out.write("<!-- Placed js at the end of the document so the pages load faster -->\n");
      out.write("\n");
      out.write("</head> \n");
      out.write("   \n");
      out.write(" <body class=\"sticky-header left-side-collapsed\">\n");
      out.write("    <section>\n");
      out.write("        ");

            String email=null;
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("admin")){
                email=c[i].getValue();
                break;
            }
        }
        if(email==null && session.getAttribute(email)==null){
            response.sendRedirect("index.jsp");
        }
        else{
            String name="";
            String users="0";
            String seller="0";
            String product=null;
            String orders=null;
            Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppykart","root","");
                        Statement st=cn.createStatement();
                           ResultSet rs=st.executeQuery("select * from admin where email='"+email+"'");
                        if(rs.next()){
                            name=rs.getString("username");
                        }
                        Statement st1=cn.createStatement();
                        ResultSet rs1=st1.executeQuery("select count(*) from user where status=0");
                        if(rs1.next()){
                            users=rs1.getString(1);
                        }                        
                        Statement st2=cn.createStatement();
                        ResultSet rs2=st2.executeQuery("select count(*) from seller where status=0");
                        if(rs2.next()){
                            seller=rs2.getString(1);
                        }
                        /*Statement st3=cn.createStatement();
                        ResultSet rs3=st3.executeQuery("select count(*) from  where status=0");
                        if(rs1.next()){
                            users=rs1.getString(1);
                        }*/
        
      out.write("\n");
      out.write("    <!-- left side start-->\n");
      out.write("\t\t<div class=\"left-side sticky-left-side\">\n");
      out.write("\n");
      out.write("\t\t\t<!--logo and iconic logo start-->\n");
      out.write("\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t<h1><a href=\"main.jsp\">Shoppy <span>Kart</span></a></h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"logo-icon text-center\">\n");
      out.write("\t\t\t\t<a href=\"main.jsp\"><i class=\"lnr lnr-home\"></i> </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<!--logo and iconic logo end-->\n");
      out.write("\t\t\t<div class=\"left-side-inner\">\n");
      out.write("\n");
      out.write("\t\t\t\t<!--sidebar nav start-->\n");
      out.write("\t\t\t\t\t<ul class=\"nav nav-pills nav-stacked custom-nav\">\n");
      out.write("\t\t\t\t\t\t<li class=\"menu-list\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-user\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<span>Users</span></a>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"sub-menu-list\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"ublock.jsp\">Block User</a> </li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"uunblock.jsp\">Unblock User</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>              \n");
      out.write("\t\t\t\t\t\t<li class=\"menu-list\"><a href=\"#\"><i class=\"fa fa-shopping-cart\"></i> <span>Seller</span></a>\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"sub-menu-list\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"sblock.jsp\">Block Seller</a> </li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"sunblock.jsp\">Unblock Seller</a></li>\n");
      out.write("                                                                <li><a href=\"verify.jsp\">Verify Seller</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>      \n");
      out.write("\t\t\t\t\t\t<li class=\"menu-list\"><a href=\"#\"><i class=\"fa fa-list\"></i> <span>Category</span></a>  \n");
      out.write("\t\t\t\t\t\t\t<ul class=\"sub-menu-list\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"acat.jsp\">Add Category</a></li>\n");
      out.write("                                                                <li><a href=\"rcat.jsp\">Remove Category</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"menu-list\"><a href=\"#\"><i class=\"fa fa-subscript\"></i> <span>SubCategory</span></a>  \n");
      out.write("\t\t\t\t\t\t\t<ul class=\"sub-menu-list\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"ascat.jsp\">Add SubCategory</a></li>\n");
      out.write("                                                                <li><a href=\"rscat.jsp\">Remove SubCategory</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<!--sidebar nav end-->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- left side end-->\n");
      out.write("    \n");
      out.write("\t\t<!-- main content start-->\n");
      out.write("\t\t<div class=\"main-content\">\n");
      out.write("\t\t\t<!-- header-starts -->\n");
      out.write("\t\t\t<div class=\"header-section\">\n");
      out.write("\t\t\t \n");
      out.write("\t\t\t<!--toggle button start-->\n");
      out.write("\t\t\t<a class=\"toggle-btn  menu-collapsed\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("\t\t\t<!--toggle button end-->\n");
      out.write("\n");
      out.write("\t\t\t<!--notification menu start -->\n");
      out.write("\t\t\t<div class=\"menu-right\">\n");
      out.write("\t\t\t\t<div class=\"user-panel-top\">  \t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"profile_details\">\t\t\n");
      out.write("\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown profile_details_drop\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"profile_img\">\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span style=\"background:url(images/1.jpg) no-repeat center\"> </span> \n");
      out.write("\t\t\t\t\t\t\t\t\t\t <div class=\"user-name\">\n");
      out.write("                                                                                     <p>");
      out.print(name);
      out.write("&nbsp;&nbsp;&nbsp;<span>Administrator</span></p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t </div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t <i class=\"lnr lnr-chevron-down\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t <i class=\"lnr lnr-chevron-up\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu drp-mnu\"> \n");
      out.write("\t\t\t\t\t\t\t\t\t<li> <a href=\"logout.jsp\"><i class=\"fa fa-sign-out\"></i> Logout</a> </li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\t\t\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t<!--notification menu end -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t<!-- //header-ends -->\n");
      out.write("\t\t\t<div id=\"page-wrapper\">\n");
      out.write("\t\t\t\t<div class=\"graphs\">\n");
      out.write("\t\t\t\t\t<div class=\"col_3\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 widget widget1\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"r3_counter_box\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-users\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"stats\">\n");
      out.write("\t\t\t\t\t\t\t\t  <h5>");
      out.print(users);
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t  <div class=\"grow grow1\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Users</p>\n");
      out.write("\t\t\t\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 widget widget1\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"r3_counter_box\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-strikethrough\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"stats\">\n");
      out.write("\t\t\t\t\t\t\t\t  <h5>");
      out.print(seller);
      out.write("</h5>\n");
      out.write("\t\t\t\t\t\t\t\t  <div class=\"grow\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Sellers</p>\n");
      out.write("\t\t\t\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 widget widget1\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"r3_counter_box\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-eye\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"stats\">\n");
      out.write("\t\t\t\t\t\t\t\t  <h5>70 <span>%</span></h5>\n");
      out.write("\t\t\t\t\t\t\t\t  <div class=\"grow grow3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Visitors</p>\n");
      out.write("\t\t\t\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t </div>\n");
      out.write("\t\t\t\t\t\t <div class=\"col-md-3 widget\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"r3_counter_box\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-usd\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"stats\">\n");
      out.write("\t\t\t\t\t\t\t\t  <h5>70 <span>%</span></h5>\n");
      out.write("\t\t\t\t\t\t\t\t  <div class=\"grow grow2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Profit</p>\n");
      out.write("\t\t\t\t\t\t\t\t  </div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t<!--body wrapper start-->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t <!--body wrapper end-->\n");
      out.write("\t\t</div>\n");
      out.write("        <!--footer section start-->\n");
      out.write("\t\t\t<footer>\n");
      out.write("\t\t\t   <p>&copy 2019 Shoppy Kart. All Rights Reserved</p>\n");
      out.write("\t\t\t</footer>\n");
      out.write("        <!--footer section end-->\n");
      out.write("\n");
      out.write("      <!-- main content end-->\n");
      out.write("      ");
}
      out.write("\n");
      out.write("   </section>\n");
      out.write("  \n");
      out.write("<script src=\"js/jquery.nicescroll.js\"></script>\n");
      out.write("<script src=\"js/scripts.js\"></script>\n");
      out.write("<!-- Bootstrap Core JavaScript -->\n");
      out.write("   <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

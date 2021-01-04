package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Sign In :: w3layouts</title>\n");
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
      out.write(" <body class=\"sign-in-up\">\n");
      out.write("     ");

         try{
       String email=null;
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("admin")){
                email=c[i].getValue();
                break;
            }
        }
        if(email!=null && session.getAttribute(email)!=null){
            response.sendRedirect("main.jsp");
        }
     
      out.write("\n");
      out.write("    <section>\n");
      out.write("\t\t\t<div id=\"page-wrapper\" class=\"sign-in-wrapper\">\n");
      out.write("\t\t\t\t<div class=\"graphs\">\n");
      out.write("\t\t\t\t\t<div class=\"sign-in-form\">\n");
      out.write("\t\t\t\t\t\t<div class=\"sign-in-form-top\">\n");
      out.write("\t\t\t\t\t\t\t<p><span>Sign In to </span>Admin</p>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"signin\">\t\t\t\t\t\t\t\n");
      out.write("                                                    <form method=\"post\" action=\"check.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"log-input\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"log-input-left\">\n");
      out.write("\t\t\t\t\t\t\t\t   <input type=\"text\" name=\"email\" class=\"user\" value=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email address:';}\"/>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"log-input\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"log-input-left\">\n");
      out.write("\t\t\t\t\t\t\t\t   <input type=\"password\" name=\"pass\" class=\"lock\" value=\"password\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email address:';}\"/>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Login to your account\">\n");
      out.write("\t\t\t\t\t\t</form>\t \n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t<!--footer section start-->\n");
      out.write("\t\t\t<footer>\n");
      out.write("\t\t\t   <p>&copy 2019 @shoppykart. All Rights Reserved</p>\n");
      out.write("\t\t\t</footer>\n");
      out.write("        <!--footer section end-->\n");
      out.write("\t</section>\n");
      out.write("\t\n");
      out.write("<script src=\"js/jquery.nicescroll.js\"></script>\n");
      out.write("<script src=\"js/scripts.js\"></script>\n");
      out.write("<!-- Bootstrap Core JavaScript -->\n");
      out.write("   <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("   ");

         }
         catch(Exception e){
             
         }
   
      out.write("\n");
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

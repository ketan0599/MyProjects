package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<head>\n");
      out.write("<title>Admin VisionTube</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- bootstrap-css -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" >\n");
      out.write("<!-- //bootstrap-css -->\n");
      out.write("<!-- Custom CSS -->\n");
      out.write("<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("<link href=\"css/style-responsive.css\" rel=\"stylesheet\"/>\n");
      out.write("<!-- font CSS -->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- font-awesome icons -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/font.css\" type=\"text/css\"/>\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- //font-awesome icons -->\n");
      out.write("<script src=\"js/jquery2.0.3.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"log-w3\">\n");
      out.write("<div class=\"w3layouts-main\">\n");
      out.write("\t<h2>Admin Login</h2>\n");
      out.write("\t\t<form action=\"check.jsp\" method=\"post\">\n");
      out.write("\t\t\t<input type=\"email\" class=\"ggg\" name=\"email\" placeholder=\"Admin-Id\" required=\"\">\n");
      out.write("\t\t\t<input type=\"password\" class=\"ggg\" name=\"pass\" placeholder=\"PASSWORD\" required=\"\">\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t<input type=\"submit\" value=\"Sign In\" name=\"login\">\n");
      out.write("\t\t</form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<script src=\"js/bootstrap.js\"></script>\n");
      out.write("<script src=\"js/jquery.dcjqaccordion.2.7.js\"></script>\n");
      out.write("<script src=\"js/scripts.js\"></script>\n");
      out.write("<script src=\"js/jquery.slimscroll.js\"></script>\n");
      out.write("<script src=\"js/jquery.nicescroll.js\"></script>\n");
      out.write("<!--[if lte IE 8]><script language=\"javascript\" type=\"text/javascript\" src=\"js/flot-chart/excanvas.min.js\"></script><![endif]-->\n");
      out.write("<script src=\"js/jquery.scrollTo.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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

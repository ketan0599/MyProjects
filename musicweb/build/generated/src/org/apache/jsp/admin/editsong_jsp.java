package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class editsong_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<head>\n");
      out.write("<title>Home</title>\n");
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
      out.write("<link rel=\"stylesheet\" href=\"css/morris.css\" type=\"text/css\"/>\n");
      out.write("<!-- calendar -->\n");
      out.write("<link rel=\"stylesheet\" href=\"css/monthly.css\">\n");
      out.write("<!-- //calendar -->\n");
      out.write("<!-- //font-awesome icons -->\n");
      out.write("<script src=\"js/jquery2.0.3.min.js\"></script>\n");
      out.write("<script src=\"js/raphael-min.js\"></script>\n");
      out.write("<script src=\"js/morris.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

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
           

      out.write("\n");
      out.write("<section id=\"container\">\n");
      out.write("<!--header start-->\n");
      out.write("<header class=\"header fixed-top clearfix\">\n");
      out.write("<!--logo start-->\n");
      out.write("<div class=\"brand\">\n");
      out.write("    <a href=\"main.jsp\" class=\"logo\">\n");
      out.write("        Musickc\n");
      out.write("    </a>\n");
      out.write("    <div class=\"sidebar-toggle-box\">\n");
      out.write("        <div class=\"fa fa-bars\"></div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--logo end-->\n");
      out.write("<div class=\"top-nav clearfix\">\n");
      out.write("    <!--search & user info start-->\n");
      out.write("    <ul class=\"nav pull-right top-menu\">\n");
      out.write("        <li>\n");
      out.write("            <input type=\"text\" class=\"form-control search\" placeholder=\" Search\">\n");
      out.write("        </li>\n");
      out.write("        <!-- user login dropdown start-->\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("            <a data-toggle=\"dropdown\" class=\"dropdown-toggle\" href=\"#\">\n");
      out.write("                <img alt=\"\" src=\"images/2.png\">\n");
      out.write("                <span class=\"username\">Ketan Chalana</span>\n");
      out.write("                <b class=\"caret\"></b>\n");
      out.write("            </a>\n");
      out.write("            <ul class=\"dropdown-menu extended logout\">\n");
      out.write("                <li><a href=\"logout.jsp\"><i class=\"fa fa-key\"></i> Log Out</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <!-- user login dropdown end -->\n");
      out.write("       \n");
      out.write("    </ul>\n");
      out.write("    <!--search & user info end-->\n");
      out.write("</div>\n");
      out.write("</header>\n");
      out.write("<!--header end-->\n");
      out.write("<!--sidebar start-->\n");
      out.write("<aside>\n");
      out.write("    <div id=\"sidebar\" class=\"nav-collapse\">\n");
      out.write("        <!-- sidebar menu start-->\n");
      out.write("        <div class=\"leftside-navigation\">\n");
      out.write("            <ul class=\"sidebar-menu\" id=\"nav-accordion\">\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"main.jsp\">\n");
      out.write("                        <i class=\"fa fa-dashboard\"></i>\n");
      out.write("                        <span>Dashboard</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"album.jsp\">\n");
      out.write("                        <i class=\"fa fa-music\"></i>\n");
      out.write("                        <span>Create new album</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"artist.jsp\">\n");
      out.write("                        <i class=\"fa fa-users\"></i>\n");
      out.write("                        <span>Add Artist</span>\n");
      out.write("                    </a>\n");
      out.write("                </li> \n");
      out.write("                <li>\n");
      out.write("                    <a href=\"addcat.jsp\">\n");
      out.write("                        <i class=\"fa fa-won\"></i>\n");
      out.write("                        <span>Add Categories</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"addcat.jsp\">\n");
      out.write("                        <i class=\"fa fa-remove\"></i>\n");
      out.write("                        <span>Remove Categories</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a class=\"active\" href=\"upload.jsp\">\n");
      out.write("                        <i class=\"fa fa-upload\"></i>\n");
      out.write("                        <span>Upload Songs</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>            </div>\n");
      out.write("        <!-- sidebar menu end-->\n");
      out.write("    </div>\n");
      out.write("</aside>\n");
      out.write("<!--sidebar end-->\n");
      out.write("<!--main content start-->\n");
      out.write("<section id=\"main-content\">\n");
      out.write("\t<section class=\"wrapper\">\n");
      out.write("                <div class=\"col-md-2\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-8\">\n");
      out.write("                        <h2>Add Songs</h2><br>\n");
      out.write("                    </div>\n");
      out.write("                     ");

                        String title=null;
                        String descs=null;
                        String artistid=null;
                        String id=request.getParameter("id");
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    Statement st1=cn1.createStatement();
                                    ResultSet rs1=st1.executeQuery("select * from songs where songid='"+id+"'");
                                    while(rs1.next()){ 
                                        artistid=rs1.getString("artists");
                    
      out.write("\n");
      out.write("                    <form method=\"post\" action=\"editsongdesc.jsp\">\n");
      out.write("                        <br><h3>Title</h3>\n");
      out.write("                        <input type=\"text\" name=\"title\" placeholder=\"Title\" value=\"");
      out.print(rs1.getString("title"));
      out.write("\" class=\"form-control\"><br><br>\n");
      out.write("                        <h3>Artist</h3>\n");
      out.write("                        <select class=\"form-control\" name=\"cat\">\n");
      out.write("                             ");

                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn3=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    Statement st3=cn3.createStatement();
                                    ResultSet rs3=st3.executeQuery("select * from artist where artistid='"+artistid+"'");
                                    while(rs3.next()){                                       
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs3.getString("artistid"));
      out.write("\" selected=\"\">");
      out.print(rs3.getString("artistname"));
      out.write("</option>\n");
      out.write("                            ");

                                    }
                                Class.forName("com.mysql.jdbc.Driver");
                                    Connection cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                                    Statement st2=cn2.createStatement();
                                    ResultSet rs2=st2.executeQuery("select * from artist");
                                    while(rs2.next()){                                       
                            
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(rs2.getString("artistid"));
      out.write('"');
      out.write('>');
      out.print(rs2.getString("artistname"));
      out.write("</option>\n");
      out.write("                            ");

                                    }
                                    cn2.close();
                            
      out.write("\n");
      out.write("                        </select><br><br> \n");
      out.write("                        <h3>Description</h3>\n");
      out.write("                        <textarea name=\"Desc\" placeholder=\"Description\"  class=\"form-control\">");
      out.print(rs1.getString("descs"));
      out.write("</textarea><br><br>\n");
      out.write("                        <input type=\"submit\" value=\"submit\" class=\"form-control btn btn-info\">\n");
      out.write("                    </form>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("        </section>\n");
      out.write("</section>\n");
      out.write("<!--main content end-->\n");
      out.write("</section>\n");
      out.write("<script src=\"js/bootstrap.js\"></script>\n");
      out.write("<script src=\"js/jquery.dcjqaccordion.2.7.js\"></script>\n");
      out.write("<script src=\"js/scripts.js\"></script>\n");
      out.write("<script src=\"js/jquery.slimscroll.js\"></script>\n");
      out.write("<script src=\"js/jquery.nicescroll.js\"></script>\n");
      out.write("<!--[if lte IE 8]><script language=\"javascript\" type=\"text/javascript\" src=\"js/flot-chart/excanvas.min.js\"></script><![endif]-->\n");
      out.write("<script src=\"js/jquery.scrollTo.js\"></script>\n");
      out.write("<!-- morris JavaScript -->\t\n");
      out.write("<script>\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t\t//BOX BUTTON SHOW AND CLOSE\n");
      out.write("\t   jQuery('.small-graph-box').hover(function() {\n");
      out.write("\t\t  jQuery(this).find('.box-button').fadeIn('fast');\n");
      out.write("\t   }, function() {\n");
      out.write("\t\t  jQuery(this).find('.box-button').fadeOut('fast');\n");
      out.write("\t   });\n");
      out.write("\t   jQuery('.small-graph-box .box-close').click(function() {\n");
      out.write("\t\t  jQuery(this).closest('.small-graph-box').fadeOut(200);\n");
      out.write("\t\t  return false;\n");
      out.write("\t   });\n");
      out.write("\t   \n");
      out.write("\t    //CHARTS\n");
      out.write("\t    function gd(year, day, month) {\n");
      out.write("\t\t\treturn new Date(year, month - 1, day).getTime();\n");
      out.write("\t\t}\n");
      out.write("\t\t\n");
      out.write("\t\tgraphArea2 = Morris.Area({\n");
      out.write("\t\t\telement: 'hero-area',\n");
      out.write("\t\t\tpadding: 10,\n");
      out.write("        behaveLikeLine: true,\n");
      out.write("        gridEnabled: false,\n");
      out.write("        gridLineColor: '#dddddd',\n");
      out.write("        axes: true,\n");
      out.write("        resize: true,\n");
      out.write("        smooth:true,\n");
      out.write("        pointSize: 0,\n");
      out.write("        lineWidth: 0,\n");
      out.write("        fillOpacity:0.85,\n");
      out.write("\t\t\tdata: [\n");
      out.write("\t\t\t\t{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},\n");
      out.write("\t\t\t\t{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},\n");
      out.write("\t\t\t\t{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},\n");
      out.write("\t\t\t\t{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},\n");
      out.write("\t\t\t\t{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},\n");
      out.write("\t\t\t\t{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},\n");
      out.write("\t\t\t\t{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},\n");
      out.write("\t\t\t\t{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},\n");
      out.write("\t\t\t\t{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t],\n");
      out.write("\t\t\tlineColors:['#eb6f6f','#926383','#eb6f6f'],\n");
      out.write("\t\t\txkey: 'period',\n");
      out.write("            redraw: true,\n");
      out.write("            ykeys: ['iphone', 'ipad', 'itouch'],\n");
      out.write("            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],\n");
      out.write("\t\t\tpointSize: 2,\n");
      out.write("\t\t\thideHover: 'auto',\n");
      out.write("\t\t\tresize: true\n");
      out.write("\t\t});\n");
      out.write("\t\t\n");
      out.write("\t   \n");
      out.write("\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- calendar -->\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/monthly.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(window).load( function() {\n");
      out.write("\n");
      out.write("\t\t\t$('#mycalendar').monthly({\n");
      out.write("\t\t\t\tmode: 'event',\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("\n");
      out.write("\t\t\t$('#mycalendar2').monthly({\n");
      out.write("\t\t\t\tmode: 'picker',\n");
      out.write("\t\t\t\ttarget: '#mytarget',\n");
      out.write("\t\t\t\tsetWidth: '250px',\n");
      out.write("\t\t\t\tstartHidden: true,\n");
      out.write("\t\t\t\tshowTrigger: '#mytarget',\n");
      out.write("\t\t\t\tstylePast: true,\n");
      out.write("\t\t\t\tdisablePast: true\n");
      out.write("\t\t\t});\n");
      out.write("\n");
      out.write("\t\tswitch(window.location.protocol) {\n");
      out.write("\t\tcase 'http:':\n");
      out.write("\t\tcase 'https:':\n");
      out.write("\t\t// running on a server, should be good.\n");
      out.write("\t\tbreak;\n");
      out.write("\t\tcase 'file:':\n");
      out.write("\t\talert('Just a heads-up, events will not work when run locally.');\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\t<!-- //calendar -->\n");
      out.write("        ");

        }
        
      out.write("\n");
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

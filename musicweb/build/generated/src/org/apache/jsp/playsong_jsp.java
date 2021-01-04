package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class playsong_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Music Player</title>\n");
      out.write("        <!--fonts-->\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Fredericka+the+Great' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("        <!--//fonts-->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <!-- for-mobile-apps -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"keywords\" content=\"Music World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <!-- //for-mobile-apps -->\t\n");
      out.write("        <!-- js -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("        <!-- js -->\n");
      out.write("        <!-- start-smoth-scrolling -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            jQuery(document).ready(function ($) {\n");
      out.write("                $(\".scroll\").click(function (event) {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function (e) {\n");
      out.write("                $(\"input\").change(function (e) {\n");
      out.write("                    var v = $(\"input\").val();\n");
      out.write("                    //alert(v);\n");
      out.write("                    $.post(\"search.jsp\", {id: v}, function (data) {\n");
      out.write("                        $(\"#change\").html(data);\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <!-- start-smoth-scrolling -->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- header -->\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"header-left\">\n");
      out.write("                    <a href=\"index.jsp\">MusicKC</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navigation\">\n");
      out.write("                    <nav class=\"navbar navbar-default\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"> </span>\n");
      out.write("                                <span class=\"icon-bar\"> </span>\n");
      out.write("                                <span class=\"icon-bar\"> </span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"collapse navbar-collapse nav-wil\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                            <ul class=\"nav navbar-nav\">\n");
      out.write("                                <li><input type=\"text\" id=\"search1\" placeholder=\"search\" style=\"font-size:18px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>\n");
      out.write("                                <li class=\"hvr-bounce-to-bottom\"><a href=\"index.jsp\">HOME <span class=\"sr-only\">(current)</span></a></li>\t\t\t\t\t\t\t\n");
      out.write("                                <li class=\"hvr-bounce-to-bottom\"><a href=\"album.jsp\">ALBUM</a></li>\n");
      out.write("                                <li class=\"hvr-bounce-to-bottom active\"><a href=\"songs.jsp\">SONGS</a></li>\n");
      out.write("                                <li class=\"hvr-bounce-to-bottom\"><a href=\"artist.jsp\">ARTIST</a></li>\n");
      out.write("                                <li class=\"hvr-bounce-to-bottom\"><a href=\"cat.jsp\">CATEGORY</a></li>\n");
      out.write("                                <li class=\"hvr-bounce-to-bottom\"><a href=\"about.jsp\">ABOUT</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <div class=\"clearfix\"> </div>\n");
      out.write("                        </div><!-- /.navbar-collapse -->\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");

            String id = request.getParameter("id");
        
      out.write("\n");
      out.write("        <!-- //header -->\n");
      out.write("        <!-- banner -->\n");
      out.write("        <div class=\"banner page-head\">\n");
      out.write("        </div>\n");
      out.write("        <!-- //banner -->\n");
      out.write("        <!--start-about-->\n");
      out.write("        <div id=\"change\">\n");
      out.write("            <div class=\"about two\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h3 class=\"tittle\">MUSIC PLAYER</h3>\n");
      out.write("                    <div class=\"about-top\">\n");
      out.write("                        <div class=\"col-md-5 about-top-left\">\n");
      out.write("                            <img src=\"songs/images/");
      out.print(id);
      out.write(".jpg\" class=\"img-responsive\" style=\"width:450px;height:350px\" alt=\"\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-7 about-top-right\">\n");
      out.write("                            ");

                                Class.forName("com.mysql.jdbc.Driver");
                                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/music", "root", "");
                                Statement st = cn.createStatement();
                                ResultSet rs = st.executeQuery("select * from songs where songid='" + id + "'");
                                if (rs.next()) {
                                    String artist = rs.getString("artists");
                                    String artists = null;
                                    Statement st1 = cn.createStatement();
                                    ResultSet rs1 = st1.executeQuery("select * from artist where artistid='" + artist + "'");
                                    if (rs1.next()) {
                                        artists = rs1.getString("artistname");
                                    }
                            
      out.write("\n");
      out.write("                            <h4>TITLE: ");
      out.print(rs.getString("title"));
      out.write("</h4><br>\n");
      out.write("                            <h5>ARTIST: ");
      out.print(artists);
      out.write("</h5>\n");
      out.write("                            <p>");
      out.print(rs.getString("descs"));
      out.write("</p><br><br><br><br>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                            <audio controls>                                                        \n");
      out.write("                                <source src=\"songs/");
      out.print(id);
      out.write(".mp3\" type=\"audio/mpeg\">\n");
      out.write("                            </audio>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\t \n");
      out.write("            </div>\n");
      out.write("            <!--start-team-->\n");
      out.write("            <div class=\"team\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h3 class=\"tittle\">You May Like Also</h3>\n");
      out.write("                    <div class=\"main\">\n");
      out.write("                        ");

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection cn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/music", "root", "");
                                Statement st1 = cn1.createStatement();
                                ResultSet rs1 = st1.executeQuery("select * from songs where status=0 and songid NOT LIKE'" + id + "'order by rand()");
                                while (rs1.next()) {
                        
      out.write("\t\t\n");
      out.write("                        <a href=\"playsong.jsp?id=");
      out.print(rs1.getString("songid"));
      out.write("\">   \n");
      out.write("                            <div class=\"col-md-4 view-grid\">               \n");
      out.write("                                <img src=\"songs/images/");
      out.print(rs1.getString("songid"));
      out.write(".jpg\" rel=\"title\" style=\"width:350px;height:250px\"/>\n");
      out.write("                                <br><br><br>\n");
      out.write("                                <h5 style=\"color:white\">");
      out.print(rs1.getString("title"));
      out.write("</h5>\n");
      out.write("                                <div class=\"mask\"></div>\n");
      out.write("                            </div> \n");
      out.write("                        </a>                                                \n");
      out.write("                        ");

                                }
                                cn.close();
                            } catch (Exception e) {
                            }
                        
      out.write("\n");
      out.write("                        <div class=\"clearfix\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--//team-->\n");
      out.write("            <!--start-camps-->\n");
      out.write("            <!-- footer -->\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"footer-grids\">\t\n");
      out.write("                        <div class=\"col-md-3 footer-grid\">\n");
      out.write("                            <h4>ADDRESS</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>MusicKC</li>\n");
      out.write("                                <li>11/432 mp colony,Bikaner </li>\n");
      out.write("                                <li>Zip code 334004</li>\n");
      out.write("                                <li>Hours: Mon-Fri 9am - 6:00pm</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 footer-grid\">\n");
      out.write("                            <h4>GET IN TOUCH</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Tel: +91 9509883480</li>\n");
      out.write("                                <li>Fax: +91 9509883480</li>\n");
      out.write("                                <li>Email: <a href=\"mailto:ketanchalana@gmail.com\">ketanchalana@gmail.com</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 footer-grid\">\n");
      out.write("                            <h4>SUBSCRIBE</h4>\n");
      out.write("                            <form>\n");
      out.write("                                <input type=\"email\" value=\"Enter your email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                    this.value = 'Enter your email';\n");
      out.write("                                                }\" required=\"\">\n");
      out.write("                                <input type=\"submit\" value=\" \">\n");
      out.write("                            </form>\n");
      out.write("                        </div>                    \n");
      out.write("                        <div class=\"col-md-3 footer-grid\">\n");
      out.write("                            <h3><a href=\"index.jsp\">MusicKC</a></h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //footer -->\n");
      out.write("            <!-- copy -->\n");
      out.write("            <div class=\"copy-right\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <p> &copy; 2019 MusicKC . All Rights Reserved.</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- copy -->\n");
      out.write("            <!-- smooth scrolling -->\n");
      out.write("            <script type=\"text/javascript\">\n");
      out.write("                $(document).ready(function () {\n");
      out.write("                    /*\n");
      out.write("                     var defaults = {\n");
      out.write("                     containerID: 'toTop', // fading element id\n");
      out.write("                     containerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("                     scrollSpeed: 1200,\n");
      out.write("                     easingType: 'linear' \n");
      out.write("                     };\n");
      out.write("                     */\n");
      out.write("                    $().UItoTop({easingType: 'easeOutQuart'});\n");
      out.write("                });\n");
      out.write("            </script>\n");
      out.write("            <a href=\"#\" id=\"toTop\" style=\"display: block;\"> <span id=\"toTopHover\" style=\"opacity: 1;\"> </span></a>\n");
      out.write("            <!-- //smooth scrolling -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- for bootstrap working -->\n");
      out.write("            <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        </div>\n");
      out.write("        <!-- //for bootstrap working -->\n");
      out.write("    </body>\n");
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

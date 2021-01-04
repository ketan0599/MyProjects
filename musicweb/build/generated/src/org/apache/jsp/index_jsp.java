package org.apache.jsp;

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Home</title>\n");
      out.write("<!--fonts-->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Fredericka+the+Great' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!--//fonts-->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- for-mobile-apps -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Music World Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //for-mobile-apps -->\t\n");
      out.write("<!-- js -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("<!-- js -->\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tjQuery(document).ready(function($) {\n");
      out.write("\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    $(document).ready(function(e){\n");
      out.write("\t$(\"input\").change(function(e){\n");
      out.write("            var v=$(this).val();\n");
      out.write("           // alert(v);\n");
      out.write("            $.post(\"search.jsp\",{id:v},function(data){\n");
      out.write("\t\t$(\"#change\").html(data);\n");
      out.write("            });\n");
      out.write("\t});\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- header -->\n");
      out.write("<div class=\"header\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"header-left\">\n");
      out.write("\t\t\t<a href=\"index.jsp\">MusicKC</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"navigation\">\n");
      out.write("\t\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t\t  <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"icon-bar\"> </span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"icon-bar\"> </span>\n");
      out.write("\t\t\t\t\t\t\t<span class=\"icon-bar\"> </span>\n");
      out.write("\t\t\t\t\t\t  </button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse nav-wil\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("\t\t\t\t\t\t  <ul class=\"nav navbar-nav\">\n");
      out.write("                                                        <li><input type=\"text\" id=\"search1\" placeholder=\"search\" style=\"font-size:18px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"hvr-bounce-to-bottom active\"><a href=\"index.jsp\">HOME <span class=\"sr-only\">(current)</span></a></li>\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<li class=\"hvr-bounce-to-bottom\"><a href=\"album.jsp\">ALBUM</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"hvr-bounce-to-bottom\"><a href=\"songs.jsp\">SONGS</a></li>\n");
      out.write("                                                        <li class=\"hvr-bounce-to-bottom\"><a href=\"artist.jsp\">ARTIST</a></li>\n");
      out.write("                                                        <li class=\"hvr-bounce-to-bottom\"><a href=\"cat.jsp\">CATEGORY</a></li>\n");
      out.write("                                                        <li class=\"hvr-bounce-to-bottom\"><a href=\"about.jsp\">ABOUT</a></li>\n");
      out.write("\t\t\t\t\t\t  </ul>\n");
      out.write("\t\t\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t\t</div><!-- /.navbar-collapse -->\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //header -->\n");
      out.write("<!-- banner -->\n");
      out.write("<div id=\"change\">\n");
      out.write("<div class=\"banner\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("\t\t\t<script>  \n");
      out.write("\t\t\t\t$(function () {\n");
      out.write("\t\t\t\t  $(\"#slider\").responsiveSlides({\n");
      out.write("\t\t\t\t\tauto: true,\n");
      out.write("\t\t\t\t\tnav: true,\n");
      out.write("\t\t\t\t\tspeed: 500,\n");
      out.write("\t\t\t\t\tnamespace: \"callbacks\",\n");
      out.write("\t\t\t\t\tpager: true,\n");
      out.write("\t\t\t\t  });\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t  </script>\n");
      out.write("\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t<div class=\"slider\">\n");
      out.write("\t\t\t\t\t<div class=\"callbacks_container\">\n");
      out.write("\t\t\t\t\t\t    <ul class=\"rslides\" id=\"slider\">\n");
      out.write("\t\t\t\t\t\t\t\t<li><h3>THE MUSIC WORLD</h3></li>\t\n");
      out.write("\t\t\t\t\t\t\t\t<li><h3>WORLDS BEST MUSIC</h3></li>\t\n");
      out.write("\t\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t\t\t<p>Which Have You Never Seen Before!!</p>\n");
      out.write("\t\t\t\t\t\t    <a class=\"hvr-bounce-to-bottom morebtn\" href=\"about.jsp\">MORE</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //banner -->\n");
      out.write("<!-- banner-bottom -->\n");
      out.write("<!-- //banner-bottom -->\n");
      out.write("<!-- welcome -->\n");
      out.write("<div class=\"welcome\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"welcome-head\">\n");
      out.write("\t\t\t<h3>WELCOME</h3>\n");
      out.write("\t\t\t<p>For your free time, and they are independent to us the most important is that \n");
      out.write("                            which is well pleasing in his option of choosing when they are enabled to do\n");
      out.write("                            nothing to stop it were not so, every pleasure is to be welcomed and every \n");
      out.write("                            pain avoided. But in certain circumstances and the needs of its duties, \n");
      out.write("                            will frequently occur that pleasures have to be repudiated, or avoids \n");
      out.write("                            pleasure and annoyance to some of things have not been accepted.</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //welcome -->\n");
      out.write("<!-- popular -->\n");
      out.write("<div class=\"popular\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"popular-head\">\n");
      out.write("\t\t\t<h3>MY ALBUM</h3>\n");
      out.write("\t\t</div>\n");
      out.write("                <div class=\"popular-grids\">\n");
      out.write("            ");

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/music","root","");
                        Statement st=cn.createStatement();
                        ResultSet rs=st.executeQuery("select * from album where status=0 order by rand() limit 0,3");
                        while(rs.next()){
            
      out.write("\t\t\n");
      out.write("\t\t\t<div class=\"col-md-4 popular-grid\">\n");
      out.write("                            <a href=\"albumsongs.jsp?id=");
      out.print(rs.getString("albumid"));
      out.write("\">\n");
      out.write("                                <img src=\"album/");
      out.print(rs.getString("albumid"));
      out.write(".jpg\" alt=\"\" style=\"width:350px;height:350px\"/>\n");
      out.write("\t\t\t\t<div class=\"pop-desc\">\n");
      out.write("\t\t\t\t\t<p>");
      out.print(rs.getString("albumname"));
      out.write("</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                            </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("                        ");

                        }
                        cn.close();
                }
                catch(Exception e){}
                        
      out.write("\n");
      out.write("\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //popular -->\n");
      out.write("<!-- experience -->\n");
      out.write("<div class=\"we-focus\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"focus-grids\">\n");
      out.write("\t\t\t<div class=\"col-md-6 focus-grid\">\n");
      out.write("\t\t\t\t<h3>EXPERIENCE <span>THE FEEL OF GOOD MUSIC</span></h3>\n");
      out.write("\t\t\t\t<h4>Music is the greatest communication in the world. Even if people don't understand the language that you're singing in, they still know good music when they hear it.</h4>\n");
      out.write("                                <p style=\"color: blue\">Lou Rawls</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 focus-grid\">\n");
      out.write("\t\t\t\t<div class=\"focus-border\">\n");
      out.write("\t\t\t\t\t<div class=\"focus-layout\">\n");
      out.write("\t\t\t\t\t\t<div class=\"focus-image a\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-music\" aria-hidden=\"true\"></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<h4>DRUM STICKS</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 focus-grid\">\n");
      out.write("\t\t\t\t<div class=\"focus-border\">\n");
      out.write("\t\t\t\t\t<div class=\"focus-layout\">\n");
      out.write("\t\t\t\t\t\t<div class=\"focus-image b\"><span class=\"glyphicon glyphicon-volume-up\" aria-hidden=\"true\"></span></div>\n");
      out.write("\t\t\t\t\t\t<h4>SAXOPHONE</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 focus-grid\">\n");
      out.write("\t\t\t\t<div class=\"focus-border\">\n");
      out.write("\t\t\t\t\t<div class=\"focus-layout\">\n");
      out.write("\t\t\t\t\t\t<div class=\"focus-image c\"><span class=\"glyphicon glyphicon-film\" aria-hidden=\"true\"></span></div>\n");
      out.write("\t\t\t\t\t\t<h4>NOICE</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 focus-grid\">\n");
      out.write("\t\t\t\t<div class=\"focus-border\">\n");
      out.write("\t\t\t\t\t<div class=\"focus-layout\">\n");
      out.write("\t\t\t\t\t\t<div class=\"focus-image d\"><span class=\"glyphicon glyphicon-facetime-video\" aria-hidden=\"true\"></span></div>\n");
      out.write("\t\t\t\t\t\t<h4>GUITAR</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 focus-grid\">\n");
      out.write("\t\t\t\t<div class=\"focus-border\">\n");
      out.write("\t\t\t\t\t<div class=\"focus-layout\">\n");
      out.write("\t\t\t\t\t\t<div class=\"focus-image e\"><span class=\"glyphicon glyphicon-headphones\" aria-hidden=\"true\"></span></div>\n");
      out.write("\t\t\t\t\t\t<h4>SILHOUETTE</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 focus-grid\">\n");
      out.write("\t\t\t\t<div class=\"focus-border\">\n");
      out.write("\t\t\t\t\t<div class=\"focus-layout\">\n");
      out.write("\t\t\t\t\t\t<div class=\"focus-image f\"><span class=\"glyphicon glyphicon-play\" aria-hidden=\"true\"></span></div>\n");
      out.write("\t\t\t\t\t\t<h4>DRUM SET</h4>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- experience -->\n");
      out.write("<!-- full -->\n");
      out.write("<div class=\"full\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"col-md-4 full-grid\">\n");
      out.write("\t\t\t<div class=\"full-text\">\n");
      out.write("\t\t\t\t<div class=\"full-left\">\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-music\" aria-hidden=\"true\"></span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"full-right\">\n");
      out.write("\t\t\t\t\t<h3>FULL QUALITY AUDIO</h3>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<p>Music is a moral law. It gives soul to the universe, wings to the mind, flight to the imagination, and charm and gaiety to life and to everything. </p><br>\n");
      out.write("\t\t\t<a class=\"hvr-bounce-to-bottom read-more\" href=\"album.jsp\">MORE</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-md-4 full-grid\">\n");
      out.write("\t\t\t<div class=\"full-text\">\n");
      out.write("\t\t\t\t<div class=\"full-left\">\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-play\" aria-hidden=\"true\"></span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"full-right\">\n");
      out.write("\t\t\t\t\t<h3>ALL FORMATS</h3>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<p>The world is full of poetry. The air is living with its spirit; and the waves dance to the music of its melodies, and sparkle in its brightness. </p><br>\n");
      out.write("\t\t\t<a class=\"hvr-bounce-to-bottom read-more\" href=\"album.jsp\">MORE</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"col-md-4 full-grid\">\n");
      out.write("\t\t\t<div class=\"full-text\">\n");
      out.write("\t\t\t\t<div class=\"full-left\">\n");
      out.write("\t\t\t\t\t<span class=\"glyphicon glyphicon-film\" aria-hidden=\"true\"></span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"full-right\">\n");
      out.write("\t\t\t\t\t<h3>FULL QUALITY VIDEO</h3>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<p>If you write great songs with meaning and emotion, they will last for ever because songs are the key to everything. Songs will outlast the artist and they will go on for ever if they are good. </p>\n");
      out.write("\t\t\t<a class=\"hvr-bounce-to-bottom read-more\" href=\"album.jsp\">MORE</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<!-- //full -->\n");
      out.write("<!-- footer -->\n");
      out.write("<div class=\"footer\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"footer-grids\">\t\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h4>ADDRESS</h4>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li>MusicKC</li>\n");
      out.write("\t\t\t\t\t<li>11/432 mp colony,Bikaner </li>\n");
      out.write("\t\t\t\t\t<li>Zip code 334004</li>\n");
      out.write("\t\t\t\t\t<li>Hours: Mon-Fri 9am - 6:00pm</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h4>GET IN TOUCH</h4>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li>Tel: +91 9509883480</li>\n");
      out.write("\t\t\t\t\t<li>Fax: +91 9509883480</li>\n");
      out.write("\t\t\t\t\t<li>Email: <a href=\"mailto:ketanchalana@gmail.com\">ketanchalana@gmail.com</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h4>SEARCH</h4>\n");
      out.write("                                    <input type=\"text\" style=\"font-size:18px\" placeholder=\"SEARCH\" required=\"\" id=\"search\">\n");
      out.write("\t\t\t</div>                    \n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h3><a href=\"index.jsp\">MusicKC</a></h3>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- //footer -->\n");
      out.write("<!-- copy -->\n");
      out.write("<div class=\"copy-right\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<p> &copy; 2019 MusicKC . All Rights Reserved.</p>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- copy -->\n");
      out.write("<!-- smooth scrolling -->\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t/*\n");
      out.write("\t\t\tvar defaults = {\n");
      out.write("\t\t\tcontainerID: 'toTop', // fading element id\n");
      out.write("\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("\t\t\tscrollSpeed: 1200,\n");
      out.write("\t\t\teasingType: 'linear' \n");
      out.write("\t\t\t};\n");
      out.write("\t\t*/\t\t\t\t\t\t\t\t\n");
      out.write("\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\t<a href=\"#\" id=\"toTop\" style=\"display: block;\"> <span id=\"toTopHover\" style=\"opacity: 1;\"> </span></a>\n");
      out.write("<!-- //smooth scrolling -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- for bootstrap working -->\n");
      out.write("\t\t<script src=\"js/bootstrap.js\"></script>\n");
      out.write("<!-- //for bootstrap working -->\n");
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
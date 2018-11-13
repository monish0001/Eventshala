package org.apache.jsp.userPanel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/userPanel/header.jsp");
    _jspx_dependants.add("/userPanel/footer.jsp");
  }

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

 if (session.getAttribute("userName") == null) {
        out.println("<script type=\"text/javascript\">");
        out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Somthing Went Wrong';");
        out.println("</script>");
    }

      out.write("\r\n");
      out.write("<html class=\"loading\" lang=\"en\" data-textdirection=\"ltr\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\r\n");
      out.write("    <meta name=\"description\" content=\"Chameleon Admin is a modern Bootstrap 4 webapp &amp; admin dashboard html template with a large number of components, elegant design, clean and organized code.\">\r\n");
      out.write("    <meta name=\"keywords\" content=\"admin template, Chameleon admin template, dashboard template, gradient admin template, responsive admin template, webapp, eCommerce dashboard, analytic dashboard\">\r\n");
      out.write("    <meta name=\"author\" content=\"ThemeSelect\">\r\n");
      out.write("    <title>Dashboard | Eventshala</title>\r\n");
      out.write("    <link rel=\"apple-touch-icon\" href=\"theme-assets/images/ico/apple-icon-120.png\">\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"theme-assets/images/ico/favicon.ico\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i%7CComfortaa:300,400,700\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- BEGIN VENDOR CSS-->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme-assets/css/vendors.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme-assets/vendors/css/charts/chartist.css\">\r\n");
      out.write("    <!-- END VENDOR CSS-->\r\n");
      out.write("    <!-- BEGIN CHAMELEON  CSS-->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme-assets/css/app-lite.css\">\r\n");
      out.write("    <!-- END CHAMELEON  CSS-->\r\n");
      out.write("    <!-- BEGIN Page Level CSS-->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme-assets/css/core/menu/menu-types/vertical-menu.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme-assets/css/core/colors/palette-gradient.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme-assets/css/pages/dashboard-ecommerce.css\">\r\n");
      out.write("    <!-- END Page Level CSS-->\r\n");
      out.write("    <!-- BEGIN Custom CSS-->\r\n");
      out.write("    <!-- END Custom CSS-->\r\n");
      out.write("  </head>\r\n");
      out.write("  <body class=\"vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar\" data-open=\"click\" data-menu=\"vertical-menu\" data-color=\"bg-chartbg\" data-col=\"2-columns\">\r\n");
      out.write("\r\n");
      out.write("    <!-- fixed-top-->\r\n");
      out.write("    <nav class=\"header-navbar navbar-expand-md navbar navbar-with-menu navbar-without-dd-arrow fixed-top navbar-semi-light\">\r\n");
      out.write("      <div class=\"navbar-wrapper\">\r\n");
      out.write("        <div class=\"navbar-container content\">\r\n");
      out.write("          <div class=\"collapse navbar-collapse show\" id=\"navbar-mobile\">\r\n");
      out.write("            <ul class=\"nav navbar-nav mr-auto float-left\">\r\n");
      out.write("              <li class=\"nav-item d-block d-md-none\"><a class=\"nav-link nav-menu-main menu-toggle hidden-xs\" href=\"#\"><i class=\"ft-menu\"></i></a></li>\r\n");
      out.write("              <li class=\"nav-item d-none d-md-block\"><a class=\"nav-link nav-link-expand\" href=\"#\"><i class=\"ficon ft-maximize\"></i></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <ul class=\"nav navbar-nav float-right\">\r\n");
      out.write("             \r\n");
      out.write("              <li class=\"dropdown dropdown-user nav-item\"><a class=\"dropdown-toggle nav-link dropdown-user-link\" href=\"#\" data-toggle=\"dropdown\">             <span class=\"avatar avatar-online\"><img src=\"theme-assets/images/portrait/small/download.png\" alt=\"avatar\"><i></i></span></a>\r\n");
      out.write("                <div class=\"dropdown-menu dropdown-menu-right\">\r\n");
      out.write("                  <div class=\"arrow_box_right\"><a class=\"dropdown-item\" href=\"#\"><span class=\"avatar avatar-online\"><img src=\"theme-assets/images/portrait/small/download.png\" alt=\"avatar\"><span class=\"user-name text-bold-700 ml-1\">");
 out.println(session.getAttribute("userName")); 
      out.write(" </span></span></a>\r\n");
      out.write("                    <div class=\"dropdown-divider\"></div><a class=\"dropdown-item\" href=\"../Request?Logout\"><i class=\"ft-power\"></i> Logout</a>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    <!-- ////////////////////////////////////////////////////////////////////////////-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"main-menu menu-fixed menu-light menu-accordion    menu-shadow \" data-scroll-to-active=\"true\" data-img=\"theme-assets/images/backgrounds/02.jpg\">\r\n");
      out.write("      <div class=\"navbar-header\">\r\n");
      out.write("        <ul class=\"nav navbar-nav flex-row\">       \r\n");
      out.write("          <li class=\"nav-item mr-auto\"><a class=\"navbar-brand\" href=\"index.jsp\"><img class=\"brand-logo\" alt=\"Chameleon admin logo\" src=\"theme-assets/images/logo/logo.png\"/>\r\n");
      out.write("              <h3 class=\"brand-text\">Eventshala</h3></a></li>\r\n");
      out.write("          <li class=\"nav-item d-md-none\"><a class=\"nav-link close-navbar\"><i class=\"ft-x\"></i></a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"main-menu-content\">\r\n");
      out.write("        <ul class=\"navigation navigation-main\" id=\"main-menu-navigation\" data-menu=\"menu-navigation\">\r\n");
      out.write("          <li class=\"active\"><a href=\"index.jsp\"><i class=\"ft-home\"></i><span class=\"menu-title\" data-i18n=\"\">Dashboard</span></a>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li class=\" nav-item\"><a href=\"postEvent.jsp\"><i class=\"ft-layers\"></i><span class=\"menu-title\" data-i18n=\"\">Post newEvent</span></a>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li class=\" nav-item\"><a href=\"event.jsp\"><i class=\"ft-layers\"></i><span class=\"menu-title\" data-i18n=\"\">Events</span></a>\r\n");
      out.write("          </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"navigation-background\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- eCommerce statistic -->\r\n");
      out.write("    <div class=\"app-content content\">\r\n");
      out.write("      <div class=\"content-wrapper\">\r\n");
      out.write("        <div class=\"content-wrapper-before\"></div>\r\n");
      out.write("        <div class=\"content-header row\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"content-body\"><!-- Chart -->\r\n");
      out.write("<div class=\"row match-height\">\r\n");
      out.write("    <div class=\"col-12\">\r\n");
      out.write("        <div class=\"\">\r\n");
      out.write("            <div id=\"gradient-line-chart1\" class=\"height-250 GradientlineShadow1\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- Chart -->\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-xl-4 col-lg-6 col-md-12\">\r\n");
      out.write("        <div class=\"card pull-up ecom-card-1 bg-white\">\r\n");
      out.write("            <div class=\"card-content ecom-card2 height-180\">\r\n");
      out.write("                <h5 class=\"text-muted danger position-absolute p-1\">Total Events</h5>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <i class=\"ft-pie-chart danger font-large-1 float-right p-1\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"progress-stats-container ct-golden-section height-75 position-relative pt-3  \">\r\n");
      out.write("                    <div id=\"progress-stats-bar-chart\"></div>\r\n");
      out.write("                    <div id=\"progress-stats-line-chart\" class=\"progress-stats-shadow\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-xl-4 col-lg-6 col-md-12\">\r\n");
      out.write("        <div class=\"card pull-up ecom-card-1 bg-white\">\r\n");
      out.write("            <div class=\"card-content ecom-card2 height-180\">\r\n");
      out.write("                <h5 class=\"text-muted info position-absolute p-1\">Active Events</h5>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <i class=\"ft-activity info font-large-1 float-right p-1\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"progress-stats-container ct-golden-section height-75 position-relative pt-3\">\r\n");
      out.write("                    <div id=\"progress-stats-bar-chart1\"></div>\r\n");
      out.write("                    <div id=\"progress-stats-line-chart1\" class=\"progress-stats-shadow\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-xl-4 col-lg-12\">\r\n");
      out.write("        <div class=\"card pull-up ecom-card-1 bg-white\">\r\n");
      out.write("            <div class=\"card-content ecom-card2 height-180\">\r\n");
      out.write("                <h5 class=\"text-muted warning position-absolute p-1\">Total Registration</h5>\r\n");
      out.write("                <div>\r\n");
      out.write("                    <i class=\"ft-shopping-cart warning font-large-1 float-right p-1\"></i>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"progress-stats-container ct-golden-section height-75 position-relative pt-3\">\r\n");
      out.write("                    <div id=\"progress-stats-bar-chart2\"></div>\r\n");
      out.write("                    <div id=\"progress-stats-line-chart2\" class=\"progress-stats-shadow\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!--/ eCommerce statistic -->\r\n");
      out.write("\r\n");
      out.write("<!-- Statistics -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!--/ Statistics -->\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ////////////////////////////////////////////////////////////////////////////-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("   ");
      out.write(" <footer class=\"footer footer-static footer-light navbar-border navbar-shadow\">\r\n");
      out.write("      <div class=\"clearfix blue-grey lighten-2 text-sm-center mb-0 px-2\"><span class=\"float-md-left d-block d-md-inline-block\">2018  &copy; Copyright <a class=\"text-bold-800 grey darken-2\" href=\"http://localhost:8080/ITWEBSITE/\" target=\"_blank\">Eventshala</a></span>\r\n");
      out.write("      </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("\r\n");
      out.write("    <!-- BEGIN VENDOR JS-->\r\n");
      out.write("    <script src=\"theme-assets/vendors/js/vendors.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- BEGIN VENDOR JS-->\r\n");
      out.write("    <!-- BEGIN PAGE VENDOR JS-->\r\n");
      out.write("    <script src=\"theme-assets/vendors/js/charts/chartist.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- END PAGE VENDOR JS-->\r\n");
      out.write("    <!-- BEGIN CHAMELEON  JS-->\r\n");
      out.write("    <script src=\"theme-assets/js/core/app-menu-lite.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <script src=\"theme-assets/js/core/app-lite.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- END CHAMELEON  JS-->\r\n");
      out.write("    <!-- BEGIN PAGE LEVEL JS-->\r\n");
      out.write("    <script src=\"theme-assets/js/scripts/pages/dashboard-lite.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <!-- END PAGE LEVEL JS-->\r\n");
      out.write("  </body>\r\n");
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

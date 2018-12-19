package org.apache.jsp.vista.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class administrador_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 public String usuario;
            public String control;
        
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Administrador</title>\n");
      out.write("    <title>Alumno</title>\n");
      out.write("        <link href=\"../../font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/bootstrap.min.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"../../js/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"../../js/funciones.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            #sal li{\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            #men{\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("            #men div:hover{\n");
      out.write("                display: inline;\n");
      out.write("                padding-left: 0px;\n");
      out.write("                background: black;\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
 usuario = request.getParameter("usuario");
           control = request.getParameter("control");
        
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\"><h2><i class=\"fa fa-graduation-cap\"></i></h2></a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo02\" aria-controls=\"navbarTogglerDemo02\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarTogglerDemo02\">\n");
      out.write("                <ul class=\"navbar-nav mr-auto mt-2 mt-lg-0\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\" onclick=\"materiasAl()\">Agregar usuario <i class=\"fa fa-caret-down\" onclick=\"materiasAl()\"></i><span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\" onclick=\"materiasDis()\">Mis materias <i class=\"fa fa-caret-down\"></i><span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"#\">Materias disponibles <i class=\"fa fa-caret-down\"></i> <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <div class=\"form-inline my-2 my-lg-0\">\n");
      out.write("                    <ul id=\"sal\">\n");
      out.write("                        <li><a href=\"#\" id=\"ic\"><i class=\"fa fa-user\"></i></a></li>\n");
      out.write("                        <li><div>");
      out.print( usuario);
      out.write("</div></li>\n");
      out.write("                        <li><div id=\"men\">\n");
      out.write("                                <a href=\"http://localhost:8080/examenes_final/\"><div>salir</div></a>\n");
      out.write("                            </div></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <section style=\"padding-top: 25px;\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <input type=\"hidden\" class=\"form-control\" value=\"");
      out.print( control);
      out.write("\" id=\"ctrl\">\n");
      out.write("                    <div class=\"jumbotron\">\n");
      out.write("                        <h2>Bienvenido</h2>\n");
      out.write("                    </div>                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
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

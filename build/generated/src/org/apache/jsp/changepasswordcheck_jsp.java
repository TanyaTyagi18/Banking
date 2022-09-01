package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class changepasswordcheck_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DBCON.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String connURL = "jdbc:mysql://localhost:3306/soprabanking";
                String dbuser = "root";
                String dbpass = "root";
                con = DriverManager.getConnection(connURL,dbuser,dbpass);
                
                out.println("Connection Successful");
            }
            catch(Exception e)
            {
                out.println("Connection Failed");
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <h1>Change password check Page</h1>\n");
      out.write("        \n");
      out.write("        Welcome Dear:\n");
      out.write("        ");

            out.println(session.getAttribute("loginame"));
            out.println("                   " + session.getAttribute("accountno") + "<br>");
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

        
            
            String op = request.getParameter("oldpassw");
            String np = request.getParameter("newpassw");
            String cnp = request.getParameter("cnpassw");
            
            
            //out.println(np);
            //out.println(cnp);
            
            try
            {
                if(np.equals(cnp))
                {
                    if (session.getAttribute("loginpassword").equals(op))
                    {
                        try
                        {
                            String updateQuery="Update account set password = ? where accno = '"+session.getAttribute("accountno")+"'";
                            
                            
                            PreparedStatement p = con.prepareStatement(updateQuery);
                            p.setString(1, np);
                            p.executeUpdate();
                            out.println("Dear "+session.getAttribute("accountno")+ "Password Changed");
                        }
                        catch(Exception ee)
                        {
                            out.println("Password not change "+ee);
                        }
                    }
                    else
                    {
                        out.println("<br>Old password not match.");
                    }
                }
                else
                {
                    out.println("<br> New password and confirm password doesn't match ");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
            
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
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

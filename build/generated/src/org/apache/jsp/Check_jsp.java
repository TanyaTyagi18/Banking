package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Check_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        Check Page\n");
      out.write("        ");

            String role = request.getParameter("role");
            String accountnumber = request.getParameter("accountno");
            String upass = request.getParameter("password");
            String loginname="";
            try
            {
                String userIdQuery = "Select * from account";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(userIdQuery);
                int count=0;
                while(rs.next())
                {
                    //rs.getString(1);
                    
                    if(accountnumber.equalsIgnoreCase(rs.getString(1)) && upass.equalsIgnoreCase(rs.getString(8)))
                    {
                        loginname = rs.getString(2);
                        count++;
                        break;
                    }
                    
                    
                }
                if(count>0)
                {
                    session.setAttribute("accountno", accountnumber);
                    session.setAttribute("loginame", loginname);
                    session.setAttribute("loginpassword", upass);
                    
                    if (role.equalsIgnoreCase("ADMIN"))
                    {
                        response.sendRedirect("Admin.jsp");
                    }
                    else
                    {
                        response.sendRedirect("CustomerLogin.jsp");
                    }
                }
                else
                {
                    RequestDispatcher d = request.getRequestDispatcher("Login.jsp");
                    d.forward(request, response);
                    out.println("<br>Invalid login and password");
                }
            }
            
            catch(Exception e)
            {
                out.println("recoed not found"+e);
            }
            
            
            
            /*if(id.equalsIgnoreCase("Mohit@soprasteria.com") && username.equalsIgnoreCase("Mohit")&& password.equalsIgnoreCase("123"))
            {
                response.sendRedirect("Success.jsp");
            }
            else
            {
                RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
                dis.include(request, response);
                out.println("<br>Invalid username or password");
            }
            */
        
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

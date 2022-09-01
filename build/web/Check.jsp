<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        Check Page
        <%
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
        %>
    </body>
    
</html>
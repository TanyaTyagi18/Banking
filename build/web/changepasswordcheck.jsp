<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Change password check Page</h1>
        
        Welcome Dear:
        <%
            out.println(session.getAttribute("loginame"));
            out.println("                   " + session.getAttribute("accountno") + "<br>");
        %>
        
        
        <%
        
            
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
            
            
        %>
    </body>
    
</html>
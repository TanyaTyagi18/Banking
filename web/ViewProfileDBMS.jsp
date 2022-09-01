<%@include file="DBCON.jsp" %>



<html>
    <body>
        <h1>View Profile DBMS</h1>
        <%
            out.println("Welcome " + session.getAttribute("loginame"));
            out.println("                   " + session.getAttribute("accountno") + "<br>");
            
            
            try
            {
          
                String viewquery = "Select * from account where accno = '"+session.getAttribute("accountno")+"'";
                
                
                Statement stmt = con.createStatement();
                
                ResultSet rs  = stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println("<html>");
                    out.println("<body>");
                    out.println("<form action = 'EditPage.jsp' method = 'post'>");
                    out.println("<table border='2'>");
                    out.println("<tr><td>Account Number</td>");
                    out.println("<td>" + rs.getString(1)+"</td></tr> ");
                    out.println("<tr><td>Name</td>");
                    out.println("<td>" + rs.getString(2)+"</td></tr> ");
                    out.println("<tr><td>Gender</td>");
                    out.println("<td>" + rs.getString(3)+"</td></tr> ");
                    out.println("<tr><td>Date Of Birth</td>");
                    out.println("<td>" + rs.getString(4)+"</td></tr> ");
                    out.println("<tr><td>Address</td>");
                    out.println("<td>" + rs.getString(5)+"</td></tr> ");
                    out.println("<tr><td>Mobile</td>");
                    out.println("<td>" + rs.getInt(6)+"</td></tr> ");
                    out.println("<tr><td>Role</td>");
                    out.println("<td>" + rs.getString(7)+"</td></tr> ");
                    out.println("<tr><td>Password</td>");
                    out.println("<td>" + rs.getString(8)+"</td></tr> ");
                    out.println("<tr><td>Special Question</td>");
                    out.println("<td>" + rs.getString(9)+"</td></tr> ");
                    out.println("<tr><td>Special Answer</td>");
                    out.println("<td>" + rs.getString(10)+"</td></tr> ");
                    out.println("<br>");
                    out.println("</table><br>");
                    out.println("<input type='submit' name='b1' value='EDIT'>");
                    out.println("</form>");
                    out.println("</body>");
                    out.println("</html>");
                    
                    
                }
            }
            catch(Exception e)
            {
                
            }
            
            
        %>
        
    </body>
</html>
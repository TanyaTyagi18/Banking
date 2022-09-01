<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1>View Customer DBMS</h1>
        
        <%
            String choice = request.getParameter("choice");
            
            try
            {
                String viewquery = "";
                if (choice.equalsIgnoreCase("Accountno"))
                {
                    String ac = request.getParameter("txt1");
                    viewquery = "Select * from account where accno = '"+ac+"'";
                }
                else
                {
                    viewquery = "Select * from account";
                }
                
                Statement stmt = con.createStatement();
                
                ResultSet rs  = stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println(rs.getString(1));
                    out.println(rs.getString(2));
                    out.println(rs.getString(3));
                    out.println(rs.getString(4));
                    out.println(rs.getString(5));
                    out.println(rs.getInt(6));
                    out.println(rs.getString(7));
                    out.println(rs.getString(8));
                    out.println(rs.getString(9));
                    out.println(rs.getString(10));
                    out.println("<br>");
                    
                    
                }
            }
            catch(Exception e)
            {
                
            }
            
        %>
        
        
    </body>
</html>

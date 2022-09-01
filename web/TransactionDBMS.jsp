<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1>View Transaction DBMS</h1>
        
        <%
            String choice = request.getParameter("choice");
            
            try
            {
                String viewquery = "";
                String ac = request.getParameter("txt1");
                if (choice.equalsIgnoreCase("Accountno"))
                {
                    
                    viewquery = "Select * from transactionbank where accountno = '"+ac+"'";
                }
                else if (choice.equalsIgnoreCase("Date"))
                {
                    
                    viewquery = "Select * from transactionbank where dotrans = '"+ac+"'";
                }
                else if (choice.equalsIgnoreCase("Amount"))
                {
                    
                    viewquery = "Select * from transactionbank where depamount = "+ac+" or wdrwamount = "+ac;
                    
                }
                else if (choice.equalsIgnoreCase("ID"))
                {
                    
                    viewquery = "Select * from transactionbank where transid = '"+ac+"'";
                    
                }  
                else
                {
                    viewquery = "Select * from transactionbank";
                }
                
                Statement stmt = con.createStatement();
                
                ResultSet rs  = stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println(rs.getString(1));
                    out.println(rs.getString(2));
                    out.println(rs.getString(3));
                    out.println(rs.getString(4));
                    out.println(rs.getInt(5));
                    out.println(rs.getInt(6));
                    out.println(rs.getInt(7));
                    out.println("<br>");
                    
                    
                }
            }
            catch(Exception e)
            {
                
            }
            
        %>
        
        
    </body>
</html>
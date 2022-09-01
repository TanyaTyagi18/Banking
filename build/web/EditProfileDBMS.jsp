<%@include file="DBCON.jsp" %>
<%@include file="CustomerLogin.jsp" %>
<html>
    <body>
        <h1>Edit Profile DBMS</h1>
        
        <%
            out.println("Welcome " + session.getAttribute("loginame"));
            out.println("                   " + session.getAttribute("accountno") + "<br>");
            String choice = request.getParameter("choice");
            
            try
            {
                String updatequery = "";
                String ac = request.getParameter("txt1");
                if (choice.equalsIgnoreCase("name"))
                {
                    updatequery = "update account set cname = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                }
                else if (choice.equalsIgnoreCase("gender"))
                {
                updatequery = "update account set gender = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                }
                else if (choice.equalsIgnoreCase("dob"))
                {
                    
                    updatequery = "update account set dob = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                    
                }
                else if (choice.equalsIgnoreCase("Address"))
                {
                    
                    updatequery = "update account set address = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                    
                }
                else if (choice.equalsIgnoreCase("mob"))
                {
                    updatequery = "update account set mob = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                
                }
                else if (choice.equalsIgnoreCase("sques"))
                {
                    response.sendRedirect("squesChange.jsp");
                    
                
                }
                else if (choice.equalsIgnoreCase("sans"))
                {
                    
                    updatequery = "update account set ans = '"+ac+"' where accno = '"+session.getAttribute("accountno")+"'";
                
                }
                
                PreparedStatement ps = con.prepareStatement(updatequery);
                
                ps.executeUpdate();
                out.println("Update Done");
                
            }
            catch(Exception e)
            {
                out.println(e);
                
            }
            
        %>
        
        
    </body>
</html>
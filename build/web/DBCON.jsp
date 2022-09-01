
<%@page import="java.sql.*"%>
<html>
    
    <body>
        <%! Connection con;%>
        <%
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
        %>
    </body>
</html>
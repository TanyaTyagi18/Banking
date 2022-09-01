<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1>Fund Transfer DBMS Page</h1>
        <%
            String transid = request.getParameter("transID");
            String accountfrom = request.getParameter("accountfrom");
            String accountto = request.getParameter("accountto");
            String date = request.getParameter("date");
            String amount = request.getParameter("amount");
            
            /*
            out.println(transid);
            out.println(accountfrom);
            out.println(accountto);
            out.println(date);
            out.println(amount);
            */
            
            try {
                
                String viewquery = "select * from " + accountfrom;
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                int lastbal = 0;
                while(rs.next()) {
                    lastbal = rs.getInt(7);
                }
                
                String depositquery = "insert into " + accountfrom + " values(?,?,?,?,?,?,?);";
                PreparedStatement pst = con.prepareStatement(depositquery);
                
                pst.setString(1, accountfrom);
                pst.setString(2, accountto);
                pst.setString(3, date);
                pst.setString(4, transid);
                pst.setInt(5, 0);
                pst.setInt(6, Integer.parseInt(amount));
                pst.setInt(7, lastbal - Integer.parseInt(amount));
                
                pst.executeUpdate();
                
                out.println("Fund transfer successful from " + accountfrom);
                
                
                
                //---------------------------------------------------------------------------------------
                
                String viewqueryto = "select * from " + accountto;
                Statement st2 = con.createStatement();
                ResultSet rs2 = st2.executeQuery(viewqueryto);
                
                int lastbalto = 0;
                while(rs2.next()) {
                    lastbalto = rs2.getInt(7);
                }
                
                String depositqueryto = "insert into " + accountto + " values(?,?,?,?,?,?,?);";
                PreparedStatement pst2 = con.prepareStatement(depositqueryto);
                
                pst2.setString(1, accountto);
                pst2.setString(2, accountfrom);
                pst2.setString(3, date);
                pst2.setString(4, transid);
                pst2.setInt(5, 0);
                pst2.setInt(6, Integer.parseInt(amount));
                pst2.setInt(7, lastbal + Integer.parseInt(amount));
                
                pst2.executeUpdate();
                
                out.println("Fund successful received from " + accountfrom);
                
            } catch(Exception e) {
                
                out.println("Fund transfer failed.");
            }
        %>
    </body>
</html>
<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1>Withdraw DBMS</h1>
        <%
            String accountno= request.getParameter("accountno");
            String ref= request.getParameter("ref");
            String date= request.getParameter("date");
            String transid=request.getParameter("transID");
            String amount=request.getParameter("amount");
            
            
            /*out.println(accountno);
            out.println(ref);
            out.println(date);
            out.println(transid);
            out.println(amount);*/
           try
            {
                String viewquery="select * from transactionbank";
                Statement stmt=con.createStatement();
                 
                ResultSet rs=stmt.executeQuery(viewquery);
                int lastbal=0;
                while(rs.next())
                {
                    lastbal=rs.getInt(7);
                     
                }
                 
               
                 
                String cashdepquery="insert into transactionbank values(?,?,?,?,?,?,?);";
                PreparedStatement pst=con.prepareStatement(cashdepquery);
                
                pst.setString(1, accountno);
                pst.setString(2, ref);
                pst.setString(3, date);
                pst.setString(4, transid);
                pst.setInt(5, 0);
                pst.setInt(6, Integer.parseInt(amount));
                pst.setInt(7,lastbal-Integer.parseInt(amount));
                       
                pst.executeUpdate();
                out.println("Transaction Done.....Cash Withdraw");
                
                
                
                String viewquerycustomer ="select * from "+accountno;
                Statement stmt2=con.createStatement();
                 
                ResultSet rs1=stmt2.executeQuery(viewquerycustomer);
                int lastbalcust=0;
                while(rs1.next())
                {
                    lastbalcust=rs1.getInt(7);
                     
                }
                 
               
                 
                String cashdepqueryincustomer = "insert into "+accountno+" values(?,?,?,?,?,?,?);";
                PreparedStatement pst1 = con.prepareStatement(cashdepqueryincustomer);
                
                
                pst1.setString(1, accountno);
                pst1.setString(2, ref);
                pst1.setString(3, date);
                pst1.setString(4, transid);
                pst1.setInt(5, 0);
                pst1.setInt(6, Integer.parseInt(amount));
                pst1.setInt(7,lastbalcust-Integer.parseInt(amount));
                       
                pst1.executeUpdate();
                out.println("Transaction Done.....Cash Withdrwan");
                
                
                
                
            }
            catch(Exception e)
                    {
                        out.println("Transaction Not Done"+e);
                    }
            
            
        %>
    </body>
</html>


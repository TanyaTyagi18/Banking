<%@include file="DBCON.jsp" %>
<%@include file="CustomerLogin.jsp" %>
<html>
    
    <%
        String updatequery = "update account set sques = '"+request.getParameter("sq") +"' where accno = '"+session.getAttribute("accountno")+"'";
        PreparedStatement p = con.prepareStatement(updatequery);
        p.executeUpdate();
    %>
</html>

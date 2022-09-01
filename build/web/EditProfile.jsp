<html>
    
    <body>
        <h1>EditPage</h1>
        <%
            out.println("Welcome " + session.getAttribute("loginame"));
            out.println("                   " + session.getAttribute("accountno") + "<br>");
        %>
        
        <form action="EditPageDBMS.jsp" method="post">
            <h3 align="center">
                Select <select name="choice">
                    <option value="Name">Name</option>
                    <option value="Gender">Gender</option>
                    <option value="dob">Date of Birth</option>
                    <option value="address">Address</option>
                    <option value="mob">Mobile Number</option>
                    <option value="sques">Secret Question</option>
                    <option value="sans">Secret Answer</option>
                </select>
                <input type="text" name="txt1">
                <input type="submit" name="b1" value="Edit">
            </h3>
        </form>
        
    </body>
</html>


<html>
    <body>
        <h1>Change Password Page</h1>
        <% 
            out.println(session.getAttribute("user_id"));
            %>
            <form action="changepasswordcheck.jsp" method="post">
                Enter old Password <input type="text" name="old password"><br>
                Enter New Password <input type="text" name="new password"><br>
                Enter Confirm Password <input type="text" name="conf password"><br>
                
                <input type="submit" value="click">
                
            </form>
        
    </body>
</html>
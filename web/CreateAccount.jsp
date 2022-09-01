<html>



   <body bgcolor="Aqua">
       
        <h1>Create Account</h1>
        <form action="CreateAccountDBMS.jsp" method="post">
       
            <table border="2" bgcolor="cyan">
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accno"></td>
                </tr>
                <tr>
                    <td>Customer Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                        </select></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="DOB"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>Contact Number</td>
                    <td><input type="text" name="contactno"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td><select name="sques">
                            <option>First Car</option>
                            <option>First Bank</option>
                            <option>First School</option>
                            <option>First Job</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td><input type="text" name="answer"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="create"></td>
                    <td><input type="reset" name="b2" value="reset"></td>
                </tr>
            
        </table>
        </form>
    </body>
</html>


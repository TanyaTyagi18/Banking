<html>
    <body>
        <h1>Withdraw</h1><br>
        <form action="WithdrawDBMS.jsp" method="post">
            <table border ="2" bgcolor="yellow">
                
                <tr>
                    <td>
                        Account Number
                    </td>
                    <td>
                        <input type="text" name="accountno">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Reference
                    </td>
                    <td>
                        <input type="text" name="ref">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Date of Transaction
                    </td>
                    <td>
                        <input type="date" name="date">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Transaction ID
                    </td>
                    <td>
                        <input type="text" name="transID">
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Deposit Amount
                    </td>
                    <td>
                        <input type="text" name="amount">
                    </td>
                </tr>
                
                
                
                <tr>
                    <td>
                        <input type="submit" name="b1" value="Submit">
                    </td>
                    <td>
                        <input type="reset" name="b2" value="RESET">
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
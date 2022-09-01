<html>
    <body>
        <h1>Fund Transfer page</h1>
        <form action="FundTransferDBMS.jsp" method="post">
            <table border="2" bgcolor="yellow">
                <tr>
                    <td>Transaction ID</td>
                    <td><input type="text" name="transID"></td>
                </tr>
                <tr>
                    <td>Account From</td>
                    <td><input type="text" name="accountfrom"></td>
                </tr>
                <tr>
                    <td>Account To</td>
                    <td><input type="text" name="accountto"></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="date"></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Transfer Now"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
<html>
    <body>
        <h1>View Transaction</h1>
        
        
        <form action="TransactionDBMS.jsp" method="post">
            <h3 align="center">
                Select <select name="choice">
                    <option value="ALL">ALL</option>
                    <option value="ACCOUNTNO">Account number</option>
                    <option value="date">Date</option>
                    <option value="tid">Transaction ID</option>
                    <option value="Amount">Amount</option>
                </select>
                <input type="text" name="txt1">
                <input type="submit" name="b1" value="View">
            </h3>
        </form>
        
        
        
    </body>
</html>
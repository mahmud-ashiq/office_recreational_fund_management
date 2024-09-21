<?php
include '../controllers/expense.php';
?>

<html>

<head>
    <title>Expense</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
    <h1>Expense List</h1>
    <table border="1">
        <tr>
            <th>Expense ID</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Expense Date</th>
        </tr>
        <?php echo $str ?>
    </table>
</body>

</html>
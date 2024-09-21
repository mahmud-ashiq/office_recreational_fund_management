<?php
include '../layouts/header.php';
include '../controllers/reports.php';
?>

<html>

<head>
    <title>Reports</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
    <h1>Report List</h1>
    <table border="1">
        <tr>
            <th>Report ID</th>
            <th>Amount</th>
            <th>Report Date</th>
            <th>Department ID</th>
            <th>Event Name</th>
            <th>Department ID</th>
        </tr>
        <?php echo $str ?>
    </table>
</body>

</html>
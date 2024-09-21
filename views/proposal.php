<?php
include '../controllers/proposal.php';
?>

<html>

<head>
    <title>Proposals</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
    <h1>Proposal List</h1>
    <table border="1">
        <tr>
            <th>Proposal ID</th>
            <th>Description</th>
            <th>Propose Date</th>
            <th>Budget</th>
            <th>Status</th>
            <th>Manager ID</th>
            <th>Department ID</th>
        </tr>
        <?php echo $str ?>
    </table>
</body>

</html>
<?php
include '../layouts/header.php';
include '../controllers/events.php';
?>

<html>

<head>
    <title>Events</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
    <h1>Events List</h1>
    <table border="1">
        <tr>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Event Date</th>
            <th>Budget</th>
            <th>Description</th>
            <th>Manager ID</th>
        </tr>
        <?php echo $str ?>
    </table>
</body>

</html>
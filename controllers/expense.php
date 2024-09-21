<?php
include '../models/mydb.php';
$str='';
$mydb= new Model();
$conobj= $mydb->OpenCon();
$result=$mydb->viewExpense($conobj);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) 
        $str = $str . "<tr><td>" . $row['exp_id']."</td><td>" . $row['description']."</td><td>".$row['amount']."</td><td>". $row['expense_date']. "</tr>";
    }
else {
    echo "Error Occurred: " . $conobj->error;
}
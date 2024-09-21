<?php
include '../models/mydb.php';
$str='';
$mydb= new Model();
$conobj= $mydb->OpenCon();
$result=$mydb->viewReport($conobj);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) 
        $str = $str . "<tr><td>" . $row['r_id']."</td><td>" . $row['amount'] . "</td><td>" . $row['r_date']. "</td><td>". $row['d_name']. "</td><td>".$row['e_name']."</td><td>".$row['d_id']."</td></tr>";
    }
else {
    echo "Error Occurred: " . $conobj->error;
}
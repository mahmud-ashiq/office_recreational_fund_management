<?php
include '../models/mydb.php';
$str='';
$id=0;
$mydb= new Model();
$conobj= $mydb->OpenCon();
$result=$mydb->viewProposal($conobj);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) 
        $str = $str . "<tr><td>" . $row['p_id']."</td><td>" . $row['description'] . "</td><td>" . $row['p_date']. "</td><td>". $row['p_budget']. "</td><td>".$row['status']."</td><td>".$row['manager_id']."</td><td>".$row['d_id']."</td></tr>";       
    }
else {
    echo "Error Occurred: " . $conobj->error;
}
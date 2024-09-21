<?php
include '../models/mydb.php';
$str='';
$mydb= new Model();
$conobj= $mydb->OpenCon();
$result=$mydb->viewEvent($conobj);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) 
        $str = $str . "<tr><td>" . $row['e_id']."</td><td>" . $row['e_name'] . "</td><td>" . $row['event_date']. "</td><td>". $row['budget']. "</td><td>".$row['description']."</td><td>".$row['manager_id']."</td></tr>";
    }
else {
    echo "Error Occurred: " . $conobj->error;
}
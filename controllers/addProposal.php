<?php 
include '../models/mydb.php';

if (isset($_REQUEST['submit'])) {
    echo "clicked";
    $mydb = new Model();
    $conObj = $mydb->OpenCon();
    $result = $mydb->addProposal($conObj, $_REQUEST['description'], $_REQUEST['propose_date'], $_REQUEST['budget'], $_REQUEST['manager_id'], $_REQUEST['department_id']);
    if ($result == 1) {
        header("Location: ../views/proposal.php");
    }
}
?>
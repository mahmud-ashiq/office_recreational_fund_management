<?php
class Model
{    
    function OpenCon(){
      $conn= new mysqli("localhost","root","","office_recreational_fund_management");
      return $conn;
    }
    function viewEvents($conn){
        $sql="SELECT * FROM events";
        $result= $conn->query($sql);
        return $result;
    }

}

?>
<?php
class Model
{    
    function OpenCon(){
      $conn= new mysqli("localhost","root","","office_recreational_fund_management");
      return $conn;
    }
    function viewEvent($conn){
        $sql="SELECT * FROM events";
        $result= $conn->query($sql);
        return $result;
    }
    function viewExpense($conn){
      $sql="SELECT * FROM expense";
      $result= $conn->query($sql);
      return $result;
  }
  function viewProposal($conn){
    $sql="SELECT * FROM proposal";
    $result= $conn->query($sql);
    return $result;
}
function viewReport($conn){
  $sql="SELECT * FROM report";
  $result= $conn->query($sql);
  return $result;
}

}

?>
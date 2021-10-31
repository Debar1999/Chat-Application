<?php
  session_start();
  $outgoing_id = $_SESSION['unique_id'];
  
  include_once "config.php";
  $sql = mysqli_query($conn,"SELECT * FROM users WHERE NOT unique_id = $outgoing_id");
  $output = " ";
  if(mysqli_num_rows($sql) == 0) {
      $output .= "No users are available to chat";
  } 
  else if(mysqli_num_rows($sql) > 0 ) {
      include "data.php";
  } 

  echo $output;

?>
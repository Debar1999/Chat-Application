<?php
  $conn = mysqli_connect("localhost","root","","chat");
  if(!$conn) {
      echo "Database Conected" .mysqli_connect_error();
  } 
?>
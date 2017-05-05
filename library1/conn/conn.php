<?php
     $conn=mysqli_connect("localhost","root","") or die("数据库服务器连接错误".mysqli_error());
     mysqli_select_db($conn,"db_database29") or die("数据库访问错误".mysqli_error());
     mysqli_query($conn,"set names utf8");
?>

<?php
        include("connection.php");
        $ID=$_GET['sid'];
        $str="delete from tbl_sub_community where Sub_Community_ID =".$ID;
        mysqli_query($conn,$str);
        header('location:subcomunnityshow.php');
                          
?>
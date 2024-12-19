<?php
        include("connection.php");
        $ID=$_GET['cid'];
        $str="delete from tbl_community where Community_ID =".$ID;
        mysqli_query($conn,$str);
        header('location:community_list.php');
                          
?>



    


<?php 
include("../admin/connect.php");
    include("../action.php");
    $phantrang=new action();
    if(isset($_GET['page'])){
        $result=$phantrang->tiramisu($_GET['page']);
        echo $result;
        
    }
    
    
    ?>  
   
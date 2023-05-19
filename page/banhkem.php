
<?php 
include("../admin/connect.php");
    include("../action.php");
    $phantrang=new action();
    if(isset($_GET['page']) && isset($_GET['theloai'])){
        $result=$phantrang->banhkem($_GET['page'],$_GET['theloai']);
        echo $result;
        
    }
    
    
    ?>  
   
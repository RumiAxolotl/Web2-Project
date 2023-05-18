<?php 

include("./admin/connect.php");
$name=$_POST['name'];
$phone=$_POST['phone'];
$address=$_POST['address']; 
    if (empty($name) || empty($phone) || empty($address) )

    {
        ?>
        
        <script>
        window.location.href="index.php?action=info";
        alert("Vui lòng nhập đầy đủ thông tin ");
        
        </script>
        
        <?php 
    } else 
    {

        ?>
         
        <script>
            var answer = window.confirm(" Bạn chắc chắn muốn thay đổi thông tin !");
                if (answer)
                {
                    <?php 
                        $id=$_SESSION['id_customer'];
                        $sql1="UPDATE `tbl_cutomer` SET `name`='$name' , `address`='$address' , `phone`='$phone' WHERE  id_customer='$id'";
                        $result=$connect->query($sql1); 
                    ?>
                    window.location.href="index.php?action=info";
                    alert ("Cập nhật thành công");
                } else 
                {
                    window.location.href="index.php?action=info";
                }
        </script>
        <?php 
    }
    
    ?>
     
    

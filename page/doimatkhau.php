<?php 

include("./admin/connect.php");
$matkhau1=$_POST['matkhau1'];
$matkhau2=$_POST['matkhau2'];
$matkhau3=$_POST['matkhau3']; 
$id=$_SESSION['id_customer'];
$sql="SELECT * FROM `tbl_cutomer` WHERE id_customer='$id'";
         $result=mysqli_query($connect,$sql); 
         $row=mysqli_fetch_array($result);
         $username  = $row['username'];
$sql1 = " SELECT * FROM `tbl_account` WHERE username ='$username' "; 
$result1=mysqli_query($connect,$sql1); 
         $row1=mysqli_fetch_array($result1); 
         $password = $row1['password'];
         if ($password == $matkhau1)
         {
            if ($matkhau2 == $matkhau3)
             {
                $sql1="UPDATE `tbl_account` SET `password`='$matkhau2' WHERE  username ='$username'";
                        $result=$connect->query($sql1); 
                        ?>
                <script>
                    alert("Đổi mật khẩu thành công ");
                    window.location.href="index.php?action=changepass";
                </script>
                <?php
             } else 
             {
                ?>
                <script>
                    alert("Xác nhận mật khẩu không đúng ");
                    window.location.href="index.php?action=changepass";
                </script>
    
                <?php
             }
         } 
         else 
         {
            ?>
            <script>
                alert("Sai mật khẩu ");
                window.location.href="index.php?action=changepass";
            </script>
            <?php
         }
?>
<!DOCTYPE html>
<head>
<link rel="stylesheet" href="css/info.css">  
</head>
<body>

      <!-- body-->  

      
      <?php
         include("./admin/connect.php"); 
        $dem=0;
        $id=$_SESSION['id_customer'];
         $sql="SELECT * FROM `tbl_cutomer` WHERE id_customer='$id'";
         $result=mysqli_query($connect,$sql); 
         $row=mysqli_fetch_array($result);
         ?>
        
      <form action="index.php?action=xulithongtin" method = "post">
      <div class="account-container">
        <ul class="group-left">
            <li class="group-left-item"><h2>TÀI KHOẢN</h2></li>
            <li class="divider"></li>
            <li class="group-left-item"><a href="index.php?action=info"><i class="fas fa-user"></i>Thông tin tài khoản</a></li>
            <li class="group-left-item"><a href="index.php?action=changepass"><i class="fas fa-key"></i>Đổi mật khẩu</a></li>
            <li class="group-left-item"><a href="index.php?action=listorder"><i class="fas fa-list"></i>Quản lí đơn hàng</a></li>
            <li onclick="logout()" class="group-left-item"><a href="index.php"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a></li>     
        </ul> 
        <ul class="group-right">
            <li class="group-right-item"><h2>Thông tin tài khoản</h2></li>
            <li class="divider-1"></li>
            <li class="group-right-item">
                <h4>Họ và tên</h4>
                    <input class="info-input" value ="<?=$row['name']?>" type="text" id="info-name" name = "name" >
            </li>
            <li class="group-right-item">
                <h4>Số điện thoại</h4>
                    <input class="info-input" type="text" id="info-phone" value ="<?=$row['phone']?>" name = "phone" >
            </li>
               
            <li class="group-right-item">
                <h4>Địa chỉ</h4>
                    <input class="info-input" type="text" id="info-address"  value ="<?=$row['address']?> " name = "address">
            </li>  
            <li class="group-right-item">
                <button onclick="update()" class="btn-update">Cập nhật</button>
            </li>
        </ul>
      </div>
      </form>
    
      
      
     
</body>
</html>
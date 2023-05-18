<!DOCTYPE html>
<head>
<link rel="stylesheet" href="css/changepass.css">  
</head>
<body>

      <!-- body-->  
      
      <form action="index.php?action=doimatkhau" method = "post">
      <div class="changle-container">
        <ul class="group-left">
            <li class="group-left-item"><h2>QUẢN LÍ MẬT KHẨU</h2></li>
            <li class="divider"></li>
            <li class="group-left-item"><a href="index.php?action=info"><i class="fas fa-user"></i>Thông tin tài khoản</a></li>
            <li class="group-left-item"><a href="index.php?action=changepass"><i class="fas fa-key"></i>Đổi mật khẩu</a></li>
            <li class="group-left-item"><a href="index.php?action=listorder"><i class="fas fa-list"></i>Quản lí đơn hàng</a></li>
            <li onclick="logout()" class="group-left-item"><a href="index.html"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a></li>     
        </ul>
        <ul class="group-right">
            <li class="group-right-item"><h2>Thay đổi mật khẩu</h2></li>
            <li class="divider-1"></li>
            <li class="group-right-item"> 
                <h4>Mật khẩu hiện tại</h4>
                    <input class="info-input" type="text" id="info-name" name = "matkhau1" required="required">
            </li>
            <li class="group-right-item">
                <h4>Mật khẩu mới</h4>
                    <input class="info-input" type="text" id="info-phone" name = "matkhau2" required="required">
            </li>
               
            <li class="group-right-item">
                <h4>Xác nhận mật khẩu mới</h4>
                    <input class="info-input" type="text" id="info-address" name = "matkhau3" required="required">
            </li>  
            <li class="group-right-item">
                <button onclick="update()" class="btn-update">Cập nhật</button>
            </li>
        </ul>
      </div>
      </form>
    

      
     
</body>
</html>
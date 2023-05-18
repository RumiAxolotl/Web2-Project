<head>
<link rel="stylesheet" href="css/listorder.css">  
</head>

<div class="listorder-container">
        <ul class="group-left">
            <li class="group-left-item"><h2>ĐƠN ĐÃ ĐẶT</h2></li>
            <li class="divider"></li>
            <li class="group-left-item"><a href="index.php?action=info"><i class="fas fa-user"></i>Thông tin tài khoản</a></li>
            <li class="group-left-item"><a href="index.php?action=changepass"><i class="fas fa-key"></i>Đổi mật khẩu</a></li>
            <li class="group-left-item"><a href="index.php?action=listorder"><i class="fas fa-list"></i>Quản lí đơn hàng</a></li>
            <li onclick="logout()" class="group-left-item"><a href="index.html"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a></li> 
        </ul>
        <div class="group-right">
        <table  >
    <tr style="background:#CCFFFF;height:40px;" >
        <td width="100px" ><b>STT</b></td>
        <td width="100px" ><b>MaHD</b></td>
        <td width="250px" ><b>Ngày lập</b></td>
        <td width="200px" ><b>Tổng Tiền</b></td>
        <td width="200px" ><b>CTDH</b></td>
        <td width="200px" ><b>Tinh Trang don hang</b></td>
        <td width="200px" ><b>Xoa</b></td>
    </tr>
     <?php
         include("./admin/connect.php"); 
        $dem=0;
        $id=$_SESSION['id_customer'];
         $sql="SELECT * FROM `tbl_order` WHERE id_customer='$id'";
         $result=mysqli_query($connect,$sql);
         while($row=mysqli_fetch_array($result)){?>
     <tr  >
             <td><?=$dem++?></td>
            <td><?=$row['id_order']?></td>
            <td><?= date('d/m/Y H:i')?></td>
           <td><?=$row['total_money']?></td>
           <td><a href="index.php?action=ctdh&mahd=<?=$row['id_order']?>">CTDH</a></td>
           <?php if($row['status']==0){ ?>
           <td>Chua xu ly</td>
           <?php } else{ ?>
            <td>da xu ly</td>
            <?php } ?>
            <td><button onclick="xoa(<?=$row['id_order']?>,<?=$row['status']?>)" id="xoa">huy</button></td>
            
    </tr>   
        <?php  } ?>     
        </table>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

    function xoa(id,status){
        if(status==0){
        var check=confirm("Ban co muon huy hay khong");
        $.ajax({
            type:"get",
            url:"./page/xoadh.php",
            data:{id:id,status:status,check:check},
            success:function(data){
                alert(data);
               location.reload();
                // if(){
                //     $("span").html("hi");
                // }
            }
        })
        }
        else{
            $.ajax({
            type:"get",
            url:"./page/xoadh.php",
            data:{id:id,status:status},
            success:function(data){
                alert(data);
               location.reload();
                // if(){
                //     $("span").html("hi");
                // }
            }
        })
        }
        
    }
  
</script>
        </div>
      </div>




<div class="container-fluid">

<!-- Breadcrumbs-->
<ol class="breadcrumb">
  <li class="breadcrumb-item active">Quản lý khách hàng</li>
</ol>

<!-- Area Chart Example-->
<div class="card mb-3">
  <div class="card-header">
    <i class="fas fa-users-cog"></i>
    Thông tin khách hàng</div>
  <div class="card-body">

  <table  >
    <tr style="background:#CCFFFF;height:40px;" >
        <td width="100px" ><b>STT</b></td>
        <td width="100px" ><b>Tên tài khoản</b></td>
        <td width="400px" ><b>Tên khách hàng</b></td>
        <td width="400px" ><b>Địa chỉ</b></td>
        <td width="250px" ><b>Số điện thoại</b></td>
        <td> <b>Block</b> </td>
    </tr>
    <?php include("connect.php"); 
        $dem=0;
        $sql="SELECT `tbl_cutomer`.`id_customer`,`tbl_cutomer`.`name`,`tbl_cutomer`.`phone`,`tbl_cutomer`.`address`,`tbl_cutomer`.`username`,`tbl_account`.`status` FROM `tbl_cutomer`,`tbl_account` WHERE `tbl_cutomer`.`username`=`tbl_account`.`username`";
        $result=mysqli_query($connect,$sql);
        while($row=mysqli_fetch_array($result)){

    ?>   
    <tr  >
             <td><?=$dem++?></td>
            <td><?=$row['username']?></td>
            <td><?=$row['name']?></td>
           <td><?=$row['address']?></td>
           <td><?=$row['phone']?></td>
            <td><input type="checkbox" name="" id="action"  onclick="xulykh(<?=$row['id_customer']?>,<?=$row['status']?>)" <?php if($row['status']==0){ ?> checked="true" <?php } ?>></td>
    </tr>   
        <?php  } ?>     
        </table>



  </div>
  <div class="card-footer small text-muted">Cập nhật ngay lập tức... </div>
</div>

<p class="small text-center text-muted my-5">
  <em></em>
</p>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
  function xulykh(id,status){
    if(status==1){
      $.ajax({
            type:"get",
            url:"./page/xulykh.php",
            data:{id:id,status:status},
            success:function(data){
              //alert(data);
               location.reload();
              //  $(".small-container .row1").html(data);
                // if(){
                //     $("span").html("hi");
                // }
            }
        });
    }
    else{
      $.ajax({
            type:"get",
            url:"./page/xulykh.php",
            data:{id:id,status:status},
            success:function(data){
              //alert(data);

              location.reload();
               
              //  $(".small-container .row1").html(data);
                // if(){
                //     $("span").html("hi");
                // }
            }
        });
    }
    
  }
</script>




<?php
session_start();
    $idsp=$_GET['idsp'];
    $quantity=$_GET['quantity'];
   $price=$_GET['price'];
  
    $i=$_GET['i'];
   // echo $i;
   if(isset($_GET['action'])){
       if($_GET['action']=="tang"){
        $_SESSION['idsp'][$idsp]["quantity"][$i]+=1;
        $_SESSION['idsp'][$idsp]["tongtien"][$i]+=$price;

        $_SESSION['tonghoadon'][0]+=$price;
       }
       if($_GET['action']=="giam"){
           if($_SESSION['idsp'][$idsp]['quantity'][$i]<=1){
            $_SESSION['idsp'][$idsp]['quantity'][$i]=1;
            $_SESSION['idsp'][$idsp]['tongtien'][$i]=$price;
           }
           else{
            $_SESSION['idsp'][$idsp]["quantity"][$i]-=1;
            $_SESSION['idsp'][$idsp]["tongtien"][$i]-=$price;
            $_SESSION['tonghoadon'][0]-=$price;
           }
        
        
       }
   }
   
    

?>
<table>
            <tr>
                <th>Sản phẩm</th>
                <th>Size</th>
                <th>Màu</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
            </tr>
            <?php
          // var_dump($_SESSION['idsp'][$id]['quantity']);
               foreach($_SESSION['idsp'] as $key => $value){
                    for($i=0;$i<count($_SESSION['idsp'][$key]['quantity']);$i++){
                        if(isset($_SESSION['idsp'][$key]['quantity'][$i])){
               ?>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src="./admin/images/<?=$_SESSION['idsp'][$key]['image'][$i]?>">
                        <div>
                            <p><?=$_SESSION['idsp'][$key]['name'][$i]?></p>
                            <small>Price: <?=$_SESSION['idsp'][$key]['price'][$i]?></small>
                            <br>
                            <a href="./page/test1.php?id=<?=$_SESSION['idsp'][$key]['idsp1'][$i]?>&size=<?=$_SESSION['idsp'][$key]['size'][$i]?>&color=<?=$_SESSION['idsp'][$key]['color'][$i]?>&quantity=<?=$_SESSION['idsp'][$key]['size'][$i]?>&tongtien=<?=$_SESSION['idsp'][$key]['tongtien'][$i]?>&index=<?=$i?>">Removed</a>
                        </div>
                    </div>
                </td>
                    
                    <td><div class="productSize"><?=$_SESSION['idsp'][$key]['size'][$i]?></div></td>
                    <td><div class="productColor"><?=$_SESSION['idsp'][$key]['color'][$i]?></div></td>
                    <td>
                        <input type="text" <?php if($_SESSION['idsp'][$key]["quantity"][$i]<=0) $_SESSION['idsp'][$key]["quantity"][$i]=1; ?> value="<?=$_SESSION['idsp'][$key]['quantity'][$i]?>">
                        <button onclick="giam(`<?=$_SESSION['idsp'][$key]['idsp1'][$i]?>`,`<?=$_SESSION['idsp'][$key]['quantity'][$i]?>`,`<?=$_SESSION['idsp'][$key]['price'][$i]?>`,`<?=$i?>`)" class="removebutton">-</button>
                        <button onclick="tang(`<?=$_SESSION['idsp'][$key]['idsp1'][$i]?>`,`<?=$_SESSION['idsp'][$key]['quantity'][$i]?>`,`<?=$_SESSION['idsp'][$key]['price'][$i]?>`,`<?=$i?>`)" class="addbutton">+</button>
                    </td>
                    <td><?=number_format($_SESSION['idsp'][$key]['tongtien'][$i],0,",",".")?> VNĐ</td>
                     
                
                
                        
            </tr>
           
            <?php } } }?>
        </table>

        <div class="total-price">
            <table>
                <tr>
                    <td>Tổng :</td>
                    <td><?=number_format($_SESSION['tonghoadon'][0],0,",",".")?> VNĐ</td>
                    
                </tr>
            </table>

        </div>

        
        

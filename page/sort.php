
 <?php include("../action.php");
    $phantrang=new action();
    $i1=$phantrang->banhkem1($_GET['theloai']);
    
    
    ?>  

        <div>
            <form action="index.php?action=search" method="post">
                    <input type="text" name="namesp" class="searchbar" placeholder="Tìm kiếm sản phẩm của bạn">
                    <input type="submit" name="search" value="Tìm kiếm" class="btnsearch">  
            </form> 
        </div>
        <div class="row row1"><?php echo $phantrang->banhkem($_GET['page'],$_GET['theloai']); ?>
        </div>
        <?php if(ceil($i1/8)>1){ ?>
            <h3 style="color:black;font-size:15px;">Có <?=$i1?> san pham tren <?=ceil($i1/8);?> trang</h3>
        <?php } ?>
        <div class="page-btn">
       
       <?php for($i=1;$i<=ceil($i1/8);$i++){ ?>
       <span onclick="hello(<?=$i?>)" page="<?=$i?>"><?=$i?></span>
       <?php } ?>
       </div>



  
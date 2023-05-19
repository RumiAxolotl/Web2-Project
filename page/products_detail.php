
    

    <!-- ---------- single Products detail ----------- -->
    <?php 
                 include("action.php");
                 include("./admin/connect.php");
                 $id=$_GET['id'];
                
               
                 $details=new action();
                 $row=$details->details($_GET['id'])->fetch_assoc();

         
            ?>
    <div class="small-container single-product">
        <div class="row">
            <div class="col-2">
                <div class = "product-imgs" style="flex-direction: column; justify-content: center;">
                    <div class = "img-display" style="overflow: hidden; ">
                        <div class = "img-showcase" style="display: flex; width: 100%">
                            <img id="show-case-1" src = "./admin/images/<?=$row['image']?>" alt = "shoe image" style="min-width: 100%">
                            <img id="show-case-2" src = "./admin/images/<?=$row['image2']?>" alt = "shoe image" style="min-width: 100%">
                            <img id="show-case-3" src = "./admin/images/<?=$row['image3']?>" alt = "shoe image" style="min-width: 100%">
                            <img id="show-case-4" src = "./admin/images/<?=$row['image4']?>" alt = "shoe image" style="min-width: 100%">
                        </div>
                    </div>
                    <div class = "img-select" style="display: flex">
                    
          </div>
        </div>

            </div>
    
            <div class="col-2">
                <h1><?=$row['name']?></h1>
                <h4><?=number_format($row['price'],0,",",".")?> VNĐ</h4> 
                <form action="index.php?action=xulidh" method="post">
                   <input type="hidden" name="idsp" value="<?=$_GET['id']?>" id="">
                   

                                <select name="size">
                                <option>Chọn Size...</option>

                                    <?php
                                    $sql1="SELECT id_size FROM tbl_product_size_color WHERE id_product='$id' GROUP BY id_size";
                                    $result1=$connect->query($sql1);
                                    while($row1=$result1->fetch_array()){
                                        $id_size=$row1['id_size'];
                                       $sql2="SELECT `name` FROM tbl_size WHERE id_size='$id_size'";
                                       $result2=$connect->query($sql2);
                                       $row2=$result2->fetch_assoc();
                                    ?>
                                    <option><?=$row2['name']?></option>
                                  
                                    <?php } ?>
                                </select>

                                <select name="color">
                                <option>Chọn màu...</option>

                                <?php 
                                 $sql3="SELECT id_color FROM tbl_product_size_color WHERE id_product='$id' GROUP BY id_color";
                                 $result3=$connect->query($sql3);
                                 while($row3=$result3->fetch_array()){
                                     $id_color=$row3['id_color'];
                                    $sql4="SELECT `name` FROM tbl_color WHERE id_color='$id_color'";
                                    $result4=$connect->query($sql4);
                                    $row4=$result4->fetch_assoc();
                                ?>
                                    <option><?=$row4['name']?></option>
                                <?php  } ?>
                                </select>
                                    <input min=1 type="number" value="1" id="quantity" name="quantity">
                                    <input type="submit" value="Thêm vào giỏ hàng" name="add_card" class="btn">
                </form>
                    <h3>Giới thiệu sản phẩm
                        <i class="fa fa-indent"></i>
                    </h3>
                    <br>
                    <p><?=$row['details']?></p>
            </div>
        </div>
    </div>

  <div style="height: 300px;"></div>

        <script>
            var MenuItems = document.getElementById("MenuItems");

            MenuItems.style.maxHeight = "0px";

            function menutoggle() {
                if (MenuItems.style.maxHeight == "0px") {
                    MenuItems.style.maxHeight = "200px";
                }
                else {
                    MenuItems.style.maxHeight = "0px";
                }
            }

        </script>
        <script>
        </script>

<!-- ------------------- JS for  product gallery------------------------         -->
        <script>
            var ProductImg = document.getElementById("productImg");
            var SmallImg = document.getElementsByClassName("small-img");

            SmallImg[0].onclick = function()
            {
                ProductImg.src = SmallImg[0].src;
            }
            SmallImg[1].onclick = function()
            {
                ProductImg.src = SmallImg[1].src;
            }
            SmallImg[2].onclick = function()
            {
                ProductImg.src = SmallImg[2].src;
            }
            SmallImg[3].onclick = function()
            {
                ProductImg.src = SmallImg[3].src;
            }     
        </script>
</body>
    
<script>
    const imgs = document.querySelectorAll('.img-select a');
    const imgBtns = [...imgs];
    console.log(imgBtns)
    imgBtns.forEach((imgItem) => {
    imgItem.addEventListener('click', (event) => {
        event.preventDefault();
        imgId = imgItem.dataset.id;
        slideImage();
    });
});

function slideImage(){
    const displayWidth = document.querySelector('.img-showcase img:first-child').clientWidth;

    document.querySelector('.img-showcase').style.transform = `translateX(${- (imgId - 1) * displayWidth}px)`;
}
</script>

</html>
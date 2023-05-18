<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bakery Shop </title>
    <link rel="stylesheet" href="css/style31.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/styleA.css">
    <link rel="stylesheet" href="css/header.css">   
    <link href="fontawesome/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
</head>

<body>

<!--
<script>
    function dropdownFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
    }

    // Close the dropdown menu if the user clicks outside of it
    window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {
        var dropdowns = document.getElementsByClassName("dropdown-content");
        var i;
        for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
        }
        }
    }
    }
</script> -->
<div class="header">
    <div class="container">
        <div class="first">
            <ul>
                
                <?php
                        session_start();
                        if(isset($_SESSION['dadangnhap'])){ ?>
                        <li><a href="index.php?action=logout_user"> Đăng xuất</a></li>
                        <li><a href="index.php?action=info"><?=$_SESSION['name_cus']?></a></li>
                        
                        <?php } else{ ?>
                            <li><a href="index.php?action=account">Đăng nhập</a></li>
                            
                <?php } ?>
                <li><i class="fab fa-facebook-f"></i></a></li>
                <li><i class="fab fa-instagram"></i></a></li>
                <li><i class="fab fa-twitter"></i></a></li>
                <li><i class="fab fa-pinterest-p"></i></a></li>
            </ul>
        </div>
        <div class="row">
            <div class="header_top logo">
                <a href="index.php"><img src="images/logoT.png" style="width:200px ; height:100px" alt="logo"></a>
            </div>
            <div class="header_top title">
                <ul>
                    <li><a href="index.php">Trang Chủ</a></li>
                    <li><a href="index.php?action=productclassification">Sản Phẩm</a></li>
                    <li><a href="index.php?action=">Bảo Hành</a></li>
                    <li><a href="index.php?action=contact">Liên Hệ</a></li>
                    
                    <li><a href="index.php?action=">Giới Thiệu </a></li>
                </ul>
            </div>
                
            <div class="header_top search_1">
                <ul>
                <li class="header_top_1 fas"><a href="index.php?action="><i class="far fa-heart" style="font-size:25px; color:black;"></i></a></li>
                <li class="header_top_1 fas"><a href="index.php?action=cart" class="btncart"><img src="images/cart.png" width="30px" height="30px"></a></li>
                <img src="images/menu.png" class="menu-icon" 
                onclick="menutoggle()">
                </ul>
        </div>
    </div>
</div>
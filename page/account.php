
    <!-- ------------Account-page------------------- -->
    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="./images/dangnhap.jpg" width="100%">
                </div>

                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            <span onclick="login()">Đăng nhập</span>
                            <span onclick="register()">Đăng ký</span>
                            <hr id="Indicator">
                        </div>

                        <form action="" id="LoginForm">
                            <input type="text" id="username" placeholder="Tên tài khoản">
                            <input type="password" id="password" placeholder="Mật khẩu">
                            <button id="xulydn" class="btn">Login</button>
                        </form>

                        <div id="RegForm">
                            <input type="text" id="user" placeholder="Tên tài khoản">
                            <div id="error1"></div>
                            <input type="password" id="pass" placeholder="Mật khẩu">
                            <input type="password" id="pass" placeholder="Nhập lại mật khẩu">
                            <div id="error2"></div>
                            <input type="text" id="name" placeholder="Họ và tên" id="">
                            <div id="error3"></div>
                            <input type="text" id="address" placeholder="Địa chỉ">
                            <div id="error4"></div>
                            <input type="text" id="phone" placeholder="Số điện thoại">
                            <div id="error5"></div>
                            <button id="xulydk" onclick="checkFunction()" class="btn">Đăng ký</button>
                        </div>
                    </div>
                    <!-- <button  onclick="checkFunction()">Check</button> -->
                </div>
            </div>
        </div>
    </div>
    <!-- ------------footer----------- -->

        <!-- ------------------- js for legitimacy check-------------- -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript">
            function checkFunction(){

                var phoneformat = /((09|03|07|08|05)+([0-9]{8})\b)/g;

                if(document.getElementById("user").value.length == 0){
                    document.getElementById("error1").innerHTML = "Vui lòng nhập tên tài khoản!";
                } else{
                    document.getElementById("error1").innerHTML = "";
                }
                if(document.getElementById("pass").value.length == 0){
                    document.getElementById("error2").innerHTML = "Mật khẩu không được để trống!";
                } else{
                    document.getElementById("error2").innerHTML = "";
                }
                if(document.getElementById("name").value.length == 0){
                    document.getElementById("error3").innerHTML = "Chưa nhập tên!";
                } else{
                    document.getElementById("error3").innerHTML = "";
                }
                if(document.getElementById("address").value.length == 0){
                    document.getElementById("error4").innerHTML = "Bạn ở đâu?";
                } else{
                    document.getElementById("error4").innerHTML = "";
                }
                if(document.getElementById("phone").value.match(phoneformat)){
                    document.getElementById("error5").innerHTML = "";
                } else {
                    document.getElementById("error5").innerHTML = "Số không hợp lệ";
                }
                if((document.getElementById("user").value.length!=0) && 
                    (document.getElementById("pass").value.length!=0) && 
                    (document.getElementById("name").value.lenghth!=0) && 
                    (document.getElementById("address").value.length!=0) &&
                    (document.getElementById("phone").value.match(phoneformat).lenghth!=0)) {
                        var username=$("#user").val();
                        var password=$("#pass").val();
                        var name=$("#name").val();
                        var address=$("#address").val();
                        var phone=$("#phone").val();

                        $.ajax({
                            type:"post",
                            url:"./page/xulydk.php",
                            data:{username:username,password:password,name:name,address:address,phone:phone},
                            success:function(data){
                            alert(data);
               
                //     $("span").html("hi");
                // }
            }
        });
       
                }

            }
        </script>
    
        <!-- ------------------- js for toggle menu-------------- -->
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
        <!-- ------------------- js for Account form-------------- -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <script>
            var LoginForm = document.getElementById("LoginForm");
            var RegForm = document.getElementById("RegForm");
            var Indicator = document.getElementById("Indicator");

            function register() {
                RegForm.style.transform = "translateX(0px)";
                LoginForm.style.transform = "translateX(0px)";
                Indicator.style.transform = "translateX(100px)";

            }
            function login() {
                RegForm.style.transform = "translateX(300px)";
                LoginForm.style.transform = "translateX(300px)";
                Indicator.style.transform = "translateX(0px)";
            }

            $(document).ready(function(){
                $("#xulydn").click(function(){
                    var username=$("#username").val();
                    var password=$("#password").val();
                    $.ajax({
                        type:"post",
                        url:"./page/xulydn.php",
                        data:{username:username,password:password},
                        success:function(data){
                            if(data==1){
                                alert("Đăng nhập thành công");
                                window.location.href="index.php";
                            }
                            else if(data==2){
                                alert("Xin chào admin");
                                window.location.href="./admin/index.php";
                            }
                            else if(data==0){
                                alert("Tài khoản đã bị khóa");
                                window.location.href="index.php?action=account";

                            }
                            else{
                                alert("Tài khoản hoặc mật khẩu không chính xác!!!");
                                window.location.href="index.php?action=account";

                            }
                        }
                            });
                })
                $("#xulydk").click(function(){
                    var user=$("#user").val();
                    var pass=$("#pass").val();
                    var name=$("#name").val();
                    var email=$("#email").val();
                    var address=$("#address").val();
                    var phone=$("#phone").val();
                    if(empty(user)){
                        alert("Không hợp lệ");
                    }
                })
            })



        </script>


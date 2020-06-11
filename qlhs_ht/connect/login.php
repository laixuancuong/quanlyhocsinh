<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/icon-logo" href="img/logo.png">
    <!--------------------------------css---------------------------------------------->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <!--------------------------------js---------------------------------------------->
    
    <title>Đăng nhập</title>
</head>

<body>
    <div class="header">
        <div class="wrap">
            <div class="header-left">
                <a href="#"><img class="logo" src="img/logo.png" /></a>
                <h4>Trường THPT chuyên Đại học Vinh</h4>
            </div>
            
        </div>
    </div>
    <!--end--header-->
<div class="main-login">
        <div class="login">
            <form class="form-login" action="/index.php" style="max-width:500px;margin:auto">
                <h2>Mời bạn đăng nhập</h2>
                <div class="input-container">
                    <i class="fa fa-user icon"></i>
                    <input class="input-field" type="text" placeholder="Username" name="username">
                </div>

                <div class="input-container">
                    <i class="fa fa-key icon"></i>
                    <input class="input-field" type="password" placeholder="Password" name="password">
                </div>

                <button type="submit" class="btn" name="dangnhap">Đăng nhập</button>
            </form>
            <div class="mk">
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Nhớ mật khẩu &emsp;&emsp;
                </label>
                <a href="#">Quên mật khẩu?</a>
            </div>
            <div class="sp">
                <h4>Hỗ trợ tư vấn:</h4>
                <p>Hotline: 0987654321</p>
                <p>Email: lxc@gmail.com</p>
            </div>
            <?php require 'xuly.php';?>
        </div>
        <!--end--login-->

        <div class="gt">
            <h4>Trường THPT chuyên Đại học Vinh</h4>
            <img src="img/bg_login.jpg" alt="">
        </div>
        <!--end--gt-->

    </div>

</body>

</html>
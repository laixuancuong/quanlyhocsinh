<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/icon-logo" href="img/logo.png">
    <!--------------------------------css---------------------------------------------->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/menu.css">
    <link rel="stylesheet" type="text/css" href="css/box_show.css">
    <link rel="stylesheet" type="text/css" href="css/news.css">
    <link rel="stylesheet" type="text/css" href="css/list_row.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
        integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <!--------------------------------js---------------------------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Cổng học sinh trường THPT chuyên đại học vinh</title>
</head>
<?php
    $conn = new mysqli("localhost", "root", "", "qlhocsinh") or die("kết nối thất bại");
?>
<body>
    <div class="header">
        <div class="wrap">
            <div class="header-left">
                <a href="#"><img class="logo" src="img/logo.png" /></a>
                <h4>Trường THPT chuyên Đại học Vinh</h4>
            </div>
            <div class="header-right">
                <ul class="nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                            aria-expanded="false"><i class="fas fa-th"></i></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-item">
                                <a href="#">
                                    <span class="item-icon-small">
                                        <img src="img/logo.png"></span>
                                    <span class="item-icon-title">Trang Web</span>
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a href="#">
                                    <span class="item-icon-small">
                                        <img src="img/thong_bao.png"></span>
                                    <span class="item-icon-title">Thông báo</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                            aria-expanded="false"><i class="fa fa-user"></i></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-item">
                                <table class="list-item" style="width: 100%">
                                    <tbody>
                                        <tr>
                                            <td colspan="2" style="text-align: center">
                                                <span id="lbFullName" class="fullName"><b>LẠI XUÂN CƯỜNG</b></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="#"><i class="fa fa-address-card" aria-hidden="true"
                                                        style="margin-right: 10px"></i><span class="item-icon-title">Hồ
                                                        sơ</span></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="#"><i class="fa fa-cogs" aria-hidden="true"
                                                        style="margin-right: 10px"></i><span
                                                        class="item-icon-title">Thiết lập</span></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="#"><i class="fa fa-question-circle" aria-hidden="true"
                                                        style="margin-right: 10px"></i><span class="item-icon-title">Hồ
                                                        sơ</span></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </li>
                            <li class="dropdown-item">
                                <a href="#" style="text-align: center">
                                    <button onclick="" id="btnLogout" type="button" class="btn btn-primary"><i
                                            class="fa fa-sign-out" aria-hidden="true" style="margin-right: 5px"></i>Đăng
                                        xuất</button>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--end--header-->
<?php require "header.php"; ?>
<div class="main">
    <div class="wrap-main">
        <?php require "menu.php"; ?>
        <!--end-menu-main-->
        <div class="list-main">
            <div class="list-row">
                <div class="panel-header" style="background: white; border-bottom: 1px solid #dddddd">
                    <table style="width: 100%">
                        <tbody>
                            <tr>
                                <td>
                                    <h4>Quản lý lớp học</h4>
                                </td>
                                <td style="float: right">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td><span style="margin-right: 10px">Học kỳ: </span></td>
                                                <td>
                                                    <select class="subject-select" style="width:150px;">
                                                        <option selected="selected" value="2_2019-2020">2_2019-2020
                                                        </option>
                                                        <option value="2_2018-2019">2_2018-2019</option>
                                                        <option value="1_2019-2020">1_2019-2020</option>
                                                        <option value="1_2018-2019">1_2018-2019</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--end-panel-header-->
                <?php
                    $sql = "select * from giaovien" ;
                    $giaovien = $conn->query($sql);
                    $sql = "select * from khoi" ;
                    $khoi = $conn->query($sql);
                ?>
                <form action="" method="POST">
                    <div class="panel-body">
                        <table cellpadding="10">
                            <tbody>
                                <tr>
                                    <td><span>Tên lớp: </span></td>
                                    <td>
                                        <input type="text" name="tenlop">
                                    </td>
                                    <td><span>Giáo viên chủ nhiệm: </span></td>
                                    <td>
                                        <select name="magv" id="">
                                            <option value="">--chọn--</option>
                                            <?php 
                                                    foreach($giaovien as $row ){
                                                        echo "
                                                        <option value=".$row['magv'].">".$row['hoten']."</option>
                                                        ";
                                                    }
                                                ?>
                                        </select>
                                    </td>
                                    <td><span>Khối: </span></td>
                                    <td>
                                        <select name="makhoi" id="">
                                            <option value="">--chọn--</option>
                                            <?php 
                                                    foreach($khoi as $row ){
                                                        echo "
                                                        <option value=".$row['makhoi'].">".$row['tenkhoi']."</option>
                                                        ";
                                                    }
                                                ?>
                                        </select>
                                    </td>
                                    <td><span>Danh sách học sinh: </span></td>
                                    <td>
                                        <input type="text" name="sohs">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--end-panel-body-->
                </div>
                <!--end-list-row-->
                <div class="btn-control">
                    <!-- <input class="btn-ct success" type="submit" value="Thêm" name="addData" /> -->
                    <button class="btn-ct success" name="addData" >Thêm</button>
                    <button class="btn-ct info">Cập nhật</button>
                    <button class="btn-ct danger" onclick="tai_lai_trang()">Huỷ</button>
                </div>
            </form>
            <?php 
                if (isset($_POST['addData'])){
                    $data['tenlop'] = isset($_POST['tenlop']) ? $_POST['tenlop'] : '';
                    $errors = array();
                    if (empty($data['tenlop'])){
                        $errors['tenlop'] = 'Chưa nhập tên lớp';
                    }
                    if(!$errors){
                        $sql_add = "INSERT INTO `lop` (`malh`, `tenlop`, `magv`, `makhoi`, `sohs`) VALUES (NULL,'".$_POST['tenlop']."','".$_POST['magv']."','".$_POST['makhoi']."','".$_POST['sohs']."')";
                        $conn->query($sql_add);
                    }
                }
            ?> <!--thêm-->
            
            <script>
                function tai_lai_trang(){
                    location.reload();
                }
            </script><!--huỷ-->
            <div class="list-row">
                <div class="topnav">
                    <a class="active" href="index.php">Trang chủ</a>

                    <div class="search-container">
                        <form action="/action_page.php">
                            <input type="text" placeholder="Search.." name="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
                <!--end--topnav-->
                <?php
                    $sql = 'SELECT * FROM lop l INNER JOIN giaovien gv ON gv.magv = l.magv INNER JOIN khoi k ON k.makhoi = l.makhoi';
                    $dulieu = $conn->query($sql);
                ?>
                <form action="" method="POST">
                    <div class="panel-body">
                        <table class="table table-bordered" cellspacing="0" cellpadding="5" rules="all" border="1">
                            <tbody>
                                <tr>
                                    <th class="center-header" scope="col" style="width:1%;">Chọn</th>
                                    <th class="center-header" scope="col" style="width:20%;">Tên lớp</th>
                                    <th class="center-header" scope="col" style="width:10%;">Chủ nhiệm</th>
                                    <th class="center-header" scope="col" style="width:15%;">Khối</th>
                                    <th class="center-header" scope="col" style="width:15%;">Số học sinh</th>
                                </tr>
                                <tr>
                                    
                                    <?php
                                    foreach($dulieu as $row){
                                        echo "
                                        <tr>
                                            <td align='center'>
                                                <input type='radio' name='select' value=".$row['malh'].">
                                            </td>
                                            
                                            <td align='center'>".$row['tenlop']."</td>
                                            <td align='center'>".$row['hoten']."</td>
                                            <td align='center'>".$row['tenkhoi']."</td>
                                            <td align='center'>".$row['sohs']."</td>
                                        </tr>
                                        ";
                                    }
                                    ?>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--end-panel-body-->
                
            </div>
            <!--end--list-row-->
            <div class="btn-control">
                <button class="btn-ct info" name="editData">Sửa</button>
                <button class="btn-ct danger" name="deleteData">Xoá</button>
            </div>
        </div>
        <!--end--list-main-->
        </form>
        <?php
            if (isset($_POST['deleteData'])){
                $sql_xoa = "delete from lop where malh = '".$_POST['select']."'";
                $conn->query($sql_xoa);
            }
        ?>
    </div>
    <!--end--warp-main-->
</div>
<!--end--main-->
<?php require "footer.php"; ?>
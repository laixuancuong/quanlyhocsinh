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
                    $sql = "SELECT * FROM lop l INNER JOIN giaovien gv ON gv.magv = l.magv INNER JOIN khoi k ON k.makhoi = l.makhoi where malh ='".$_GET['id']."'";
                    $dulieu = $conn->query($sql);
                ?>
                <form action="" method="POST">
                    <div class="panel-body">
                        <table cellpadding="10">
                            <tbody>
                                <tr>
                                    <?php 
                                        foreach ($dulieu as $row){
                                            echo "
                                            <tr>
                                            <td><span>Tên lớp: </span></td>
                                            <td><input type='text' name='tenlop' value=".$row['tenlop']."></td>
                                            </tr>
                                            <td><span>Danh sách học sinh: </span></td>
                                            <td><input type='text' name='sohs' value=".$row['sohs']."></td>
                                            </tr>
                                            ";
                                        }
                                    ?>
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
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--end-panel-body-->
                </div>
                <!--end-list-row-->
                <div class="btn-control">
                    <button class="btn-ct info" name="updateData">Cập nhật</button>
                    <button class="btn-ct danger" onclick="tai_lai_trang()">Huỷ</button>
                </div>
            </form>
            <script>
                function tai_lai_trang(){
                    location.reload();
                }
            </script><!--huỷ-->
        </div>
        <!--end--list-main-->
        </form>
        <?php
            if (isset($_POST['updateData'])){
                $sql_update = "update `lop` set tenlop='".$_POST['tenlop']."', magv= '".$_POST['magv']."', makhoi= '".$_POST['makhoi']."', sohs= '".$_POST['sohs']."' where malop ='".$_POST['select']."'"; 
                $conn->query($sql_update);
            }
        ?>
    </div>
    <!--end--warp-main-->
</div>
<!--end--main-->
<?php require "footer.php"; ?>
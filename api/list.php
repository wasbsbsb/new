<?php
$servername = 'localhost'; //连接名字
$username = 'root'; //
$passname = ''; //密码；
$dbname = 'no5user'; //数据库的名字；

//建立连接；
$lianjies = new mysqli($servername, $username, $passname, $dbname);
//判断是否连接成功；
if ($lianjies->connect_error) {
    die('出错原因是：' . $lianjies->connect_error);
};

//发送一个请求，如果为接受到数据为零，则传送数据过去；
$jieshou = isset($_POST['leixin']) ? $_POST['leixin'] : '';
$dijihan = isset($_POST['yeshu']) ? $_POST['yeshu'] : '';
$shulian = isset($_POST['geshu']) ? $_POST['geshu'] : '';
$gouwuid = isset($_POST['gouwuid']) ? $_POST['gouwuid'] : '';


$dijihan = $dijihan * $shulian;


if ($jieshou == 'xuyao') {
    $cahxun = "SELECT * FROM sj LIMIT $dijihan,$shulian";
    $jieguo = $lianjies->query($cahxun);
    if ($jieguo) {
        $arr = $jieguo->fetch_all(MYSQLI_ASSOC); //得到结果集的内容部分
        echo json_encode($arr, JSON_UNESCAPED_UNICODE); //把结果集的内容部分进行转码；
    } else {
        echo 'no';
    }
} else if ($jieshou == 'gouwuc') {
    $cahxun = " SELECT * FROM sj WHERE wupid in($gouwuid)";
    $jieguo = $lianjies->query($cahxun);
    if ($jieguo) {
        $arr = $jieguo->fetch_all(MYSQLI_ASSOC); //得到结果集的内容部分
        echo json_encode($arr, JSON_UNESCAPED_UNICODE); //把结果集的内容部分进行转码；
    } else {
        echo 'no';
    };
};

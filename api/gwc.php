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
$username = isset($_POST['username']) ? $_POST['username'] : '';
$wpid = isset($_POST['wpid']) ? $_POST['wpid'] : '';
$times = isset($_POST['times']) ? $_POST['times'] : '';
$shulian = isset($_POST['shulian']) ? $_POST['shulian'] : '';



if ($jieshou == 'tuison') {
    $charu = "INSERT INTO gwc(username,wpid,times,shulian) VALUES('$username','$wpid','$times','$shulian')";
    $jieguo = $lianjies->query($charu);
    if ($jieguo) {
        echo '1';
    } else {
        echo '0';
    };
} else if ($jieshou == 'chaxun') {
    $cahxun = " SELECT * FROM gwc WHERE username='$username' AND wpid='$wpid'";
    $jieguo = $lianjies->query($cahxun);
    if ($jieguo->num_rows) {
        echo 'yes';
    } else {
        echo 'no';
    };
} else if ($jieshou == 'xiugai') {
    $zaixian = "UPDATE gwc set shulian='$shulian' WHERE username='$username' AND wpid='$wpid'";
    $jieguo = $lianjies->query($zaixian);
    if ($jieguo) {
        echo 'keyi';
    } else {
        echo 'meihao';
    }
} else if ($jieshou == 'qushuju') {
    $zaixian = " SELECT shulian FROM gwc WHERE username='$username' AND wpid='$wpid'";
    $jieguo = $lianjies->query($zaixian);
    if ($jieguo) {
        $arr = $jieguo->fetch_all(MYSQLI_ASSOC); //得到结果集的内容部分
        echo json_encode($arr, JSON_UNESCAPED_UNICODE); //把结果集的内容部分进行转码；
    } else {
        echo 'chucuo';
    }
} else if ($jieshou == 'huoqu') {
    $cahxun = " SELECT * FROM gwc WHERE username='$username'";
    $jieguo = $lianjies->query($cahxun);
    if ($jieguo) {
        $arr = $jieguo->fetch_all(MYSQLI_ASSOC); //得到结果集的内容部分
        echo json_encode($arr, JSON_UNESCAPED_UNICODE); //把结果集的内容部分进行转码；
        // echo 'yes';
    } else {
        echo 'no2';
    };
} else if ($jieshou == 'delyihan') {
    $cahxun = "DELETE FROM gwc WHERE username='$username' AND wpid='$wpid'";
    $jieguo = $lianjies->query($cahxun);
    if ($jieguo) {
        echo 'del';
    } else {
        echo 'nodel';
    };
}

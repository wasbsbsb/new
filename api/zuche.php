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
}

// echo '成功';
// $sql = "SELECT * FROM useres WHERE tell='14545216398'";//需要 查新的内容；
//         echo $sql;
//        $ansewrs = $lianjies->query($sql);//就是在我的数据库中用query查询这个我的数据库；
//        var_dump($ansewrs);  //打印这个字符；
//         $res = $lianjies->query($sql);
//         // var_dump($res);
//         $sss = $ansewrs->fetch_all(MYSQLI_ASSOC);//将中文的进行转码
//         var_dump($sss);
//         //将对象转成字符串；
//         echo json_encode($sss,JSON_UNESCAPED_UNICODE);//需要的整个的字符串数据


//        
//    $yanzen = $_POST['tell'];
//    $yanzenlei = $_POST['leixin'];
$leixin = isset($_POST['leixin']) ? $_POST['leixin'] : ''; //  接收前端的数据进行判别；

$email = isset($_POST['email']) ? $_POST['email'] : '';
$times = isset($_POST['time']) ? $_POST['time'] : '';

$passw = isset($_POST['passw']) ? $_POST['passw'] : ''; //密码；
$yanzhen = isset($_POST['username']) ? $_POST['username'] : ''; //判断数据中是否有该数据；(接收数据返回数据，若没有返回空)
//对传输过来的数据进行回复；
if ($leixin == 'yanzhen') {
  $chaxun = " SELECT * FROM useres WHERE username='$yanzhen'"; //查询 这个PROJACT这个是数据库中的这个数据；
  $jieguo = $lianjies->query($chaxun);
  //        //  var_dump($jieguo);
  if ($jieguo->num_rows) {
    $fans = 'no';
    echo $fans;
    //  $fans->close();
    //数据库中有本号码
  } else {
    $fans = 'ys';
    echo $fans;
    // echo 你好的;数据库中没有本号码 可以注册；
  };
  //            //关闭数据库
  //  $jieguo->close();
} else if ($leixin == 'yanzhenemail') {
  $chaxun = " SELECT * FROM useres WHERE email='$email'"; //查询 这个PROJACT这个是数据库中的这个数据；
  $jieguo = $lianjies->query($chaxun);
  //        //  var_dump($jieguo);
  if ($jieguo->num_rows) {
    $fans = 'no';
    echo $fans;
    //  $fans->close();
    //数据库中有本号码
  } else {
    $fans = 'ys';
    echo $fans;
    // echo 你好的;数据库中没有本号码 可以注册；
  };
  //            //关闭数据库
  //  $jieguo->close();
} else if ($leixin == 'zhuce') {
  $charu = "INSERT INTO useres(username,pasword,email,time,online) VALUES('$yanzhen','$passw','$email','$times','0')";
  $jieguo = $lianjies->query($charu);
  if ($jieguo) {
    echo '1';
  } else {
    echo '0';
  };
} else if ($leixin == 'denlu') {
  $chaxun = "SELECT * FROM useres WHERE pasword='$passw' AND username='$yanzhen'";
  $jieguo = $lianjies->query($chaxun);
  if ($jieguo->num_rows) {
    $onlineok = "SELECT ONLINE FROM useres WHERE username='$yanzhen'";
    $jieguos = $lianjies->query($onlineok);
    $suchus = $jieguos->fetch_all(MYSQLI_ASSOC); //进行转变；
    if ($suchus[0]['ONLINE'] == 1) {
      echo 'other_online';
    } else {
      $zaixian = "UPDATE useres set online='1' WHERE username='$yanzhen'";
      $jieguo = $lianjies->query($zaixian);
      if ($jieguo) {
        echo 'yes';
      } else {
        echo 'no';
      }
    }
  } else {
    echo 'not';
  };
} else if ($leixin == 'tuichu') {
  $chaxun = " SELECT * FROM useres WHERE username='$yanzhen'";
  $jieguo = $lianjies->query($chaxun);
  if ($jieguo->num_rows) {
    $zaixian = "UPDATE useres set online='0' WHERE username='$yanzhen'";
    $jieguo = $lianjies->query($zaixian);
    if ($jieguo) {
      echo 'yes';
    } else {
      echo 'no';
    };
  } else {
    echo 'notusername';
  };
};










   
   
           
   
//        //   进行登录；
//        //
//        $dianhua = isset($_POST['tell']) ? $_POST['tell'] : '';
//        $mima = isset($_POST['pas']) ? $_POST['pas'] : '';
//        $pasres = "SELECT * FROM projactsql WHERE tell='$dianhua' AND pas='$mima'";
//        $qucha = $lianjies -> query($pasres);//查询结果集
//        if($qucha->num_rows){
//           //查询到
//         echo '1';
//        //  $fans->close();
//        //数据库中有本号码
//         } else {
//          //没有查询到；
//          echo '0';
       
//        // echo 你好的;数据库中没有本号码 可以注册；
//        };
   
//        // var_dump($qucha);
//        //获取结果集的数据部分；
//        // $suchus = $qucha->fetch_all(MYSQLI_ASSOC);//进行转变；
//        // echo json_encode($suchus,JSON_UNESCAPED_UNICODE);//把对象转成字符串；
           
//        $qucha->close();
   
//        //列表页；
//        $cazhao = isset($_POST['tell']) ? $_POST['tell'] : '';//判断数据中是否有该数据；(接收数据返回数据，若没有返回空)
//        $geshi = "SELECT * FROM projactsql WHERE tell='$cazhao'";
//        $sscz = $lianjies -> query($geshi);
//        // if($sscz ->num_rows){
//        //    echo $sscz;
//           $suchus = $sscz->fetch_all(MYSQLI_ASSOC);//进行转变；    
//        //    echo ;//把对象转成字符串；
//        // }else{
//        //     echo '0';
//        // };
//           echo json_encode($suchus,JSON_UNESCAPED_UNICODE);
//           $sscz->close();
   
//    //mysql_num_rows() 函数返回结果集中行的数目。

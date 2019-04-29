$(function () {
    $('.opens').css('display', 'none');
    $('.nav_sele_lis').on('click', function () {
        var sss = $('.opens').eq($(this).index()).css('display');
        if (sss == 'none') {
            $('.nav_lis_logo').eq($(this).index()).css('background', 'url(http://photo.no5.com.cn/page_2014/images/detail.gif?v=20140610) no-repeat 0 -234px')
            $('.opens').eq($(this).index()).css('display', 'block');
        } else {
            $('.opens').eq($(this).index()).css('display', 'none');
            $('.nav_lis_logo').eq($(this).index()).css('background', 'url(http://photo.no5.com.cn/page_2014/images/detail.gif?v=20140610) no-repeat 0 -248px')
        }
    });
    //放大图的数据替换；
    var strs = window.location.search;
    strs = strs.slice(1);
    strs = strtoobj(strs);
    var stressss = strs;
    strs = strs.wpid;
    if (strs > 0) {
        $.ajax({
            type: "POST",
            url: "../api/xqy.php",
            data: `leixin=xuyao&fdt=${strs}`,
            success: function (msg) {
                msg = JSON.parse(msg);
                msg = msg[0];
                xxx(msg);

            }
        });
    } else {
    }
    //渲染接收到的数据；
    function xxx(msg) {
        let str = ` <li>
        <div class="small-img">
            <img src="${msg.img}" />
        </div>
    </li>
    <li>
        <div class="small-img">
            <img src="http://photo.no5.com.cn/product/sPhoto/prod_30534_S_150527152346_25101753.jpg" />
        </div>
    </li>
    <li>
        <div class="small-img">
            <img src="${msg.img3}" />
        </div>
    </li>`;
        var magnifierConfig = {
            magnifier: "#magnifier1",//最外层的大容器
            width: 400,//承载容器宽
            height: 260,//承载容器高
            moveWidth: null,//如果设置了移动盒子的宽度，则不计算缩放比例
            zoom: 5//缩放比例
        };
        $('.animation03').html(str);
        var _magnifier = magnifier(magnifierConfig);
        $('.aa1').html(msg.name + '<span>清爽洁净 软化角质 舒肤不干燥 适合混合偏油及油性肌肤</span>');
        $('.aa2_eng').html(msg.english);
        $('.aa2_bh').html(msg.wpbh);
        $('.aa2_price').html(msg.no5jia);
        $('.aa2_scj').html(msg.shicanjia);
        var zek = msg.no5jia / msg.shicanjia;
        zek = zek.toFixed(2);
        $('.aa2_zk').html(zek + '折');
        $('.sspp_aa2').html(msg.shuspp);
        $('.suosfls').html(msg.ssfl);
        $('.dspls').html(msg.pl);
        var tlss = '';
        for (var i = 0; i < msg.pf; i++) {
            tlss += `<a href=""></a>`;
        }
        $('.yhpfes').html(tlss);
    }

    // 切割成字符串
    function tostr(value) {
        var strs = '';
        for (var key in value) {
            strs += key + '=' + value[key] + '&';
        }
        strs = strs.slice(0, -1);
        // console.log(strs);
        return strs;
    };

    // 字符转对象
    function strtoobj(str) {
        var io = str.split('&');
        var jason = {};
        for (var i = 0; i < io.length; i++) {

            var juj = io[i].split('=');
            // console.log(juj);
            jason[juj[0]] = juj[1];
        }
        // console.log(jason);
        return jason;
    };
    $('.shuifu').eq(0).css('display', 'block');
    //详情页的切换；
    $('.gm_top_lft').on('click', function () {
        $('.shuifu').eq($(this).index()).css('display', 'block').siblings().css('display', 'none');
        $('.gm_top_lft').eq($(this).index()).css('color', '#fff').css('background', '#78b5f4').siblings().css('background', '').css('color', '');
    });
    $('#chakangenduo').on('click', function () {

    });
    var yes = 0;
    //点击的时候触发加载跟多；
    $('#chakangenduo').on('click', function () {
        yes++;
        huoqu(yes);
    });

    // 购买评论的渲染；
    $('#goumai_pl').on('click', function () {
        huoqu(0);
    });
    function huoqu(yeshu) {
        $.ajax({
            type: "POST",
            url: "../api/xqypj.php",
            data: `leixin=xuyao&yeshu=${yeshu}&geshu=${5}`,
            success: function (msg) {
                msg = JSON.parse(msg);
                if (msg == 0) {
                    sxxx('没有更多了');
                } else {
                    sxxx(msg);
                }

                console.log(msg);
            }
        });
    };
    //渲染评论；
    var ytr = '';

    function sxxx(msg) {
        if (msg == '没有更多了') {
            $('#chakangenduo').css('display', 'none');
            $('#chakangenduos').css('display', 'block');
        } else {

            $('#chakangenduo').html('请稍等...');
            setTimeout(function () {

                $('#chakangenduo').html('查看更多');
                for (var i = 0; i < msg.length; i++) {
                    var ttrs = '';
                    for (var k = 0; k < msg[i].xingxing; k++) {
                        ttrs += ` <a href=""></a>`;
                    };
                    ytr += `<li>
            <div class="pl_d1">
                <div id="yh_pl_yy">
                    ${msg[i].pinjia}
                </div>
                <div id="yh_pl_xx">
                    ${ttrs}
                </div>
            </div>
            <div class="pl_d2">
                <p class="username">${msg[i].username}</p>
                <p class="shifhuiy">${msg[i].huiyuan}</p>
                <p class="shijians">${msg[i].time}</p>
            </div></li>`
                };
                $('#pinlunshu').html(ytr);

            }, 500);
        };
    };
    //处理星星；
    var ddd = 0;
    $('.user_xs').on('click', function () {
        $('#user_plxx').children().attr('class', 'user_xs');
        ddd = $(this).index() + 1;
        for (var p = 0; p < ddd; p++) {
            $('#user_plxx').children().eq(p).attr('class', 'user_xson');
        };
    });

    //提交你的留言；
    $('#user_tijiao').on('click', function () {
        if (stressss.username == '0') {
            $('#user_plxx').html('已为你自动跳转到登录页!');
            setTimeout(function () {
                window.location.href = 'login.html';
            }, 1000);
        } else {
            if (ddd > 0) {
                var shijian = getTime();
                shijian = shijian.year + '/' + shijian.month + '/' + shijian.day + '/' + shijian.hours + ':' + shijian.minutes;
                var n1 = $('#user_pls').val();
                var n2 = shijian;
                var n3 = stressss.username;
                var n4 = ddd;
                var n5 = '[标准会员]';
                if ($('#user_pls').val()) {
                    //发送请求；
                    $.ajax({
                        type: "POST",
                        url: "../api/xqypj.php",
                        data: `leixin=charu&pinlun=${n1}&shijian=${n2}&yonhum=${n3}&xinxin=${n4}&huiyuan=${n5}`,
                        success: function (msg) {
                            if (msg == 1) {
                                $('#user_pls').val('');
                                $('#user_plxx').children().attr('class', 'user_xs');
                                $('.ly_ts').html('留言成功，请您刷新页面方可查看');
                            } else {
                                $('.ly_ts').html('很抱歉，留言失败！请您检查网络设置！');
                            }
                        }
                    });
                } else {
                    //不发送请求；
                    $('.ly_ts').html('输入内容不能为空');
                };
            } else {
                $('.ly_ts').html('请您点击评级星星！');
            }
        };
    });
    //留言提交；

});



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
    var suzi = 0;
    var ges = 10;
    $('.dijiges').html(suzi + 1);
    //点击下一页；
    $('.nav_hp_next').eq(0).on('click', function () {
        suzi++;
        places(suzi, ges);
        $('.dijiges').html(suzi + 1);
    });
    //点击上一页；
    var sjrs = $('.nav_hp_back').eq(0).on('click', function () {
        if (suzi == 0) {
            suzi = 0;
            $('.dijiges').html(suzi + 1);
            places(suzi, ges);
        } else {
            suzi--;
            $('.dijiges').html(suzi + 1);
            places(suzi, ges);
        }
    });

    //无数据请求数据；
    if ($('.nav_lis_hzp').eq(0).html() == 0) {
        places(suzi, ges);
    } else {
    }
    var zhuya = null;
    //请求数据
    function places(suzi, ges) {
        $.ajax({
            type: "POST",
            url: "../api/list.php",
            data: `leixin=xuyao&yeshu=${suzi}&geshu=${ges}`,
            success: function (msg) {
                msg = JSON.parse(msg);
                if (msg.length > 0) {
                    zhuya = msg;
                    xuanlan(zhuya);
                    $('#gonjg').html(zhuya.length);
                    console.log(zhuya);
                } else {
                }
            }
        });
    };

    //高亮；
    $('.ons').on('click', function () {
        $(this).css('background', '#fc1c5a').css('color', '#fff').siblings().css('background', '').css('color', '#666');
    });

    var isok = '';
    $('#jiage').on('click', function () {
        if (isok == 'ok') {
            $('#gonjg').html(zhuya.length);
            zhuya.sort(function (a, b) {
                var s = a.price;
                var l = b.price;
                return l - s;
            });
            xuanlan(zhuya);
            isok = 'no';

        } else {
            $('#gonjg').html(zhuya.length);
            zhuya.sort(function (a, b) {
                var s = a.price;
                var l = b.price;
                return s - l;
            });
            xuanlan(zhuya);
            isok = 'ok';
        }
    });

    var isoks = '';
    $('#xiaoliang').on('click', function () {
        if (isoks == 'ok') {
            $('#gonjg').html(zhuya.length);
            zhuya.sort(function (a, b) {
                var s = a.hot;
                var l = b.hot;
                return l - s;
            });
            xuanlan(zhuya);
            isoks = 'no';

        } else {
            $('#gonjg').html(zhuya.length);
            zhuya.sort(function (a, b) {
                var s = a.hot;
                var l = b.hot;
                return s - l;
            });
            xuanlan(zhuya);
            isoks = 'ok';
        }
    });

    var isokss = '';
    $('#haopd').on('click', function () {
        if (isokss == 'ok') {
            $('#gonjg').html(zhuya.length);
            zhuya.sort(function (a, b) {
                var s = a.isgood;
                var l = b.isgood;
                return l - s;
            });
            xuanlan(zhuya);
            isokss = 'no';

        } else {
            $('#gonjg').html(zhuya.length);
            zhuya.sort(function (a, b) {
                var s = a.isgood;
                var l = b.isgood;
                return s - l;
            });
            xuanlan(zhuya);
            isokss = 'ok';
        }
    });


    function xuanlan(msg) {
        var str = '';
        for (var i = 0; i < msg.length; i++) {
            str += ` <li class="list_bgs1">
            <img class='list_xqy_go'  data-id="${msg[i].wupid}" src="${msg[i].imgsrc}"
                alt="">
            <p>${msg[i].name}</p>
            <span class="prices">￥ <span class="prices_sp">${msg[i].price}</span> </span>
            <span class="prices_bj">${msg[i].discount}</span>
            <div class="goumai">
                <div class="jiarugoum">
                    加入购物车
                </div>
                <div class="souchans">
                    收藏
                </div>
            </div>
        </li>`;
        };
        $('.nav_lis_hzp').html(str);

    };

    // 点击的时候进入某个块；
    $('.nav_lis_hzp').hover(function () {
        $('.list_xqy_go').on('click', function () {
            var strppp = $('#username').html();
            if (strppp == 0) {
                var opps = 0;
            } else {
                var opps = strppp;
            };
            var huowu = $(this).attr('data-id');
            window.location = `particulars.html?username=${opps}&wpid=${huowu}`;
        });
    }, function () {
    });

    //点击加入购物车的时候，
    $('.nav_lis_hzp').on('click', function (ev) {
        if (ev.target.className == 'jiarugoum') {
            var datas = $(ev.target).parent().parent().children(1).attr('data-id');
            var strWindowFeatures = "width=1280,height=800,menubar=yes,location=yes,resizable=yes,scrollbars=true,status=true";
            var shijian = getTime();
            shijian = shijian.year + '/' + shijian.month + '/' + shijian.day + '/' + shijian.hours + ':' + shijian.minutes;
            // console.log(datas);
            $.ajax({
                type: "POST",
                url: "../api/gwc.php",
                data: `leixin=chaxun&username=${$('#username').html()}&wpid=${datas}`,
                success: function (msg) {
                    if (msg == 'no') {
                        $.ajax({
                            type: "POST",
                            url: "../api/gwc.php",
                            data: `leixin=tuison&username=${$('#username').html()}&wpid=${datas}&times=${shijian}&shulian=${'1'}`,
                            success: function (msg) {
                                // console.log(msg);
                                if (msg == '1') {
                                    window.open("../html/gwc.html", "B_page", strWindowFeatures);
                                } else {
                                    alert('失败，请检查网络设置！');
                                }
                            }
                        });
                    } else if (msg == 'yes') {
                        $.ajax({
                            type: "POST",
                            url: "../api/gwc.php",
                            data: `leixin=qushuju&username=${$('#username').html()}&wpid=${datas}`,
                            success: function (msg) {
                                msg = JSON.parse(msg);
                                msg = msg[0].shulian;
                                // console.log(msg);
                                msg = msg * 1 + 1;
                                $.ajax({
                                    type: "POST",
                                    url: "../api/gwc.php",
                                    data: `leixin=xiugai&username=${$('#username').html()}&wpid=${datas}&times=${shijian}&shulian=${msg}`,
                                    success: function (msg) {
                                        if (msg == 'keyi') {
                                            window.open("../html/gwc.html", "B_page", strWindowFeatures);
                                        } else {
                                            alert('失败，请检查网络设置！');
                                        };
                                    }
                                });
                            }
                        });


                    } else {

                    }
                }
            });

        } else {
        }
    });

});


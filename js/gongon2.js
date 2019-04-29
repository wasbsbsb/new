
$(function () {
    $('.tuichu_user').css('display', 'none');
    //回到顶部；
    $('#go_top').on('click', function () {
        //当点击的时候，窗口的scroolly值逐渐减小；
        var jianqu = window.scrollY / 40;
        var dinshi = setInterval(function () {
            window.scrollTo('0', `${window.scrollY - jianqu}`);
            // console.log(3);
        }, 12.5);
        setTimeout(function () {
            clearInterval(dinshi);
        }, 500);//到了时间就停止这个定时器；
    });


    //获取登录信息；

    function xunalan() {
        var yonhum = getCookie('username');
        if (yonhum) {
            $('#username').html(yonhum);
            $('#username').css('display', 'block');
            $('.denlu').css('display', 'none');
            $('.zhuce').css('display', 'none');
            $('.tuichu_user').css('display', 'block');
            console.log('已登录');
        } else {
            console.log('未登录');
            $('#username').css('display', 'none');
            $('#username').html('');
            $('.denlu').css('display', 'block');
            $('.zhuce').css('display', 'block');
            $('.tuichu_user').css('display', 'none');


        };

    };
    //点击发送请求退出；
    $('.tuichu_user').on('click', function () {
        removeCookie('username');
        removeCookie('gwcid');
        tuichuuser();
        window.location.href = window.location.href.split('?')[0];



    });
    //点击触发请求代表已经退出；
    function tuichuuser() {
        var suzi = $('#username').html();
        var namees = $('#yemian').html();
        if (namees == 'no5时尚广场') {
            var sere = 'api/zuche.php';
        } else {
            var sere = '../api/zuche.php';
        };
        $.ajax({
            type: "POST",
            url: sere,
            data: `leixin=tuichu&username=${suzi}`,
            success: function (msg) {
                if (msg == 'yes') {
                    xunalan();
                } else {
                }
            }
        });
    };
    xunalan();
    //判断是否登录；
    var dinshiqi = setInterval(function () {
        if (getCookie('username')) {
            //购物车发生改变时；
            var nameuser = getCookie('username');
            var namees = $('#yemian').html();
            if (namees == 'no5时尚广场') {
                var sere = 'api/gwc.php';
            } else {
                var sere = '../api/gwc.php';
            };
            $.ajax({
                type: "POST",
                url: sere,
                data: `leixin=huoqu&username=${nameuser}`,
                success: function (msg) {
                    msg = JSON.parse(msg);
                    $('.gwc_shulian').html(`${msg.length}`);
                }
            });
        } else {
        }
    }, 1000);

    //点击进入购物车界面；
    function dinjiGWC() {
        var strWindowFeatures = "width=1280,height=800,menubar=yes,location=yes,resizable=yes,scrollbars=true,status=true";
        var namees = $('#yemian').html();
        if (namees == 'no5时尚广场') {
            var sere = 'html/gwc.html';
            $('#jinajigwc').on('click', function () {
                // console.log('4');
                window.open(sere, "B_page", strWindowFeatures);
            });
        } else {
            var sere = 'gwc.html';
            $('#jinajigwc').on('click', function () {
                // console.log('4');
                window.open(sere, "B_page", strWindowFeatures);
            });
        };
    }
    dinjiGWC();
});

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
//请求数据



/*
      需求：
            * 边敲键盘边请求数据(onkeydown)
            * jsonp方法请求外部资源(创建script节点)
            * 
      bug:
            * 发送的请求过多：延时定时器应用
            * script标签太多
*/
var tex = document.getElementById('tex');
var list = document.getElementById('list');
var script = null;
var body = document.getElementById('body');
var timer = null;

function getdata(data) {
    //1.用于接收百度传来的数据,数据渲染
    //3.拿到数据后做渲染
    // console.log(data);

    var arr = data.g;

    var res = arr.map(function (item) {
        return `<li><a href="https://www.baidu.com/s?wd=${item.q}">${item.q}</a></li>`;
    }).join('');
    list.innerHTML = res;
    //4.渲染后就应该及时删除script标签：父节点.removechild(子节点)
    body.removeChild(script);

}


tex.onkeydown = function () {
    //2.按需加载资源:要用的时候再创建标签引入外部数据
    clearTimeout(timer);//清除定时器  h ht htm html html5
    timer = setTimeout(function () {
        script = document.createElement('script');
        script.src = 'https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su?json=1&cb=getdata&wd=' + tex.value.trim();
        //父节点.appendChild(子节点)
        body.appendChild(script);
    }, 800);

}


tex.onblur = function () {
    list.style.display = 'none';
}
tex.onfocus = function () {
    list.style.display = 'block';
}

//人工客服；
//点击药师咨询；
$('.kefu').eq(0).on('click', function () {
    $('#kefus').css('display', 'block');
});
//点击关闭按钮；
$('.kefus_colse').eq(0).on('click', function () {
    $('#kefus').css('display', 'none');
});
//点击放大按钮；
$('.kefus_kuoda').eq(0).on('click', function () {
    $('#kefus').css('height', '720');
    $('#kefus').css('width', '520');
});
//点击缩小；
$('.kefus_suoxiao').eq(0).on('click', function () {
    $('#kefus').css('display', 'none');
    $('#small_kefu').css('display', 'block');
});
//点击缩小的块放大客服窗口；
$('#small_kefu').on('click', function () {
    $('#kefus').css('display', 'block');
    $('#small_kefu').css('display', 'none');
});
//以下是当鼠标处在他们上面的时候，鼠标的光标发生改变；
//缩小；
$('.kefus_suoxiao').eq(0).hover(function () {
    $('.kefus_suoxiao').css('cursor', 'default');
}, function () {
});
//扩大；
$('.kefus_kuoda').eq(0).hover(function () {
    $('.kefus_kuoda').css('cursor', 'default');
}, function () {
});
//关闭；


//，经过就会触发样式；
//滑过登录与注册时候触发的事件；
//siteLoginHd  siteLogin
//aWrap  
//点击的时候出现客服的界面；
$('.kefuer').eq(0).on('click', function () {
    $('#kefus').css('display', 'block');
});


/*
     拖拽：
         * 按下的时候计算相对距离
         * 鼠标移动的过程不断计算新的left和top
         * 鼠标抬起的时候，停止运动
 */

var box = document.getElementsByClassName('kefus_top')[0];
// console.log(box);
box.onmousedown = function (ev) {
    //1.鼠标按下的时候计算相对距离
    var boxz = document.getElementById('kefus');
    var disX = ev.clientX - boxz.offsetLeft;
    var disY = ev.clientY - boxz.offsetTop;
    document.onmousemove = function (ev) {
        //2.鼠标移动的过程不断计算新的left和top
        var left = ev.clientX - disX;
        var top = ev.clientY - disY;
        if (left <= 50) {//吸附效果
            left = 0;
        } else if (left >= window.innerWidth - boxz.offsetWidth - 50) {
            left = window.innerWidth - boxz.offsetWidth;
        }
        //对于拖拽的处理；
        boxz.style.top = top + 'px';
        boxz.style.left = left + 'px';
    }
    document.onmouseup = function () {
        //3.鼠标抬起的时候，停止运动
        document.onmousemove = null;//空对象
    }
}




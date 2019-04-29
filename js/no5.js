$(function () {
    //轮播图；
    var dinsq = setInterval(qiehuan, 3000);
    var nums = 0;
    $('.lbt_bg').eq(0).css('display', 'block');
    $('.bg_color').eq(0).css('background', 'rgb(181, 226, 255)');
    var bg = ['rgb(181, 226, 255)', 'rgb(254, 234, 243)', 'rgb(246, 237, 228)', 'rgb(128, 211, 225)', 'rgb(42, 24, 66)'];
    function qiehuan() {
        nums++;

        if (nums >= 5) {
            nums = 0;
            showes(nums, bg, 0);
        } else {
            showes(nums, bg, 0);
        }
    };
    $('#lunbotu').hover(function () {
        clearInterval(dinsq);
        dinsq = null;
    }, function () {
        dinsq = setInterval(qiehuan, 3000);
    });
    $('.btns').hover(function () {
        clearInterval(dinsq);
        dinsq = null;
        var numes = $(this).index();
        nums = 0;
        showes(nums, bg, numes);
    }, function () {

    });
    $('.btns').eq(0).css('background', '#00b5ff').siblings().css('background', '');
    function showes(nums, bg, numes) {
        $('.lbt_bg').eq(nums + numes).css('display', 'block').siblings().css('display', 'none');
        $('.bg_color').eq(0).css('background', bg[nums + numes]);
        $('.jichenbg').css('background', bg[nums + numes]);
        $('.btns').eq(nums + numes).css('background', '#00b5ff').siblings().css('background', '');
    };
    setInterval(function () {
        $('.banna_xialb').eq(0).css('top', '-33px');
        setTimeout(function () {
            $('.banna_xialb').eq(0).css('top', '33px');
            $('.banna_xialb').eq(0).css('display', 'none');
        }, 1000);
        setTimeout(function () {
            $('.banna_xialb').eq(0).css('display', 'block');
        }, 1100);
        setTimeout(function () {
            $('.banna_xialb').eq(0).css('top', '0');
        }, 1200);
    }, 3000);
    //时间动起来
    var secons = 60;
    var timeer = setInterval(function () {
        var shijian = getTime();
        if (shijian.year == '2019' && shijian.day == '20' && shijian.hours == '12' && shijian.minutes == '30') {
            clearInterval(timeer);
        }
        //未来
        var daojd = 14 * 24 * 60 * 60;
        var daojh = 12 * 60 * 60;
        var daojm = 30 * 60;
        //现在
        var xianzd = shijian.day * 24 * 60 * 60;
        var xianzh = shijian.hours * 60 * 60;
        var xianzm = shijian.minutes * 60;
        var chaz = (daojd + daojh + daojm) - (xianzd + xianzh + xianzm);
        var dayss = chaz / 3600;//时
        var hshi = (chaz % 3600) / 60;//分
        // var fen = (chaz % 86400) % 3600 / 60;//分；
        secons = secons - 1;
        if (secons < 0) {
            secons = 60;
        };
        $('.qiang_hour').text(parseInt(dayss));
        $('.qiang_min').text(parseInt(hshi));
        $('.qiang_ss').text(parseInt(secons));
    }, 1000);
    function getTime() {
        // time接收系统时间
        var systemTime = new Date;
        // 时间对象(年月日时分秒毫秒)
        var timeObject = {
            year: systemTime.getFullYear(), //获取当前年
            month: systemTime.getMonth() + 1, //获取当前月
            day: systemTime.getDate(), //获取当前日
            hours: systemTime.getHours(), //获取当前小时
            minutes: systemTime.getMinutes(), //获取当前分钟
            seconds: systemTime.getSeconds(), //获取当前秒
            millisecond: systemTime.getMilliseconds() //获取当前毫秒
        }
        return timeObject; //返回对象
    }
    $('.tj_bg').css('display', 'none');
    $('.tj_bg').eq(0).css('display', 'block');
    $('.tj_btns').hover(function () {
        $('.tj_bg').css('display', 'none').eq($(this).index()).css('display', 'block').siblings().css('display', 'none');
    }, function () {
    });
    //点击跳转；
    $('.ximiann').on('click', function () {
        var naes = $('#username').html();
        window.location.href = `html/list.html?username=${naes}`;
    });

});
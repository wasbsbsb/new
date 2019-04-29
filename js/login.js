$(function () {
    //验证码区域；
    var yanzema = ranNum();
    //点击切换验证码；
    function qiege() {
        var s = randomNum(0, 9);
        var t = randomNum(0, 9);
        var r = randomNum(0, 9);
        return '#' + s + s + t + t + r + r;
    }
    var colores = qiege();
    $('#yanzenmakuan').html(yanzema);
    $('#yanzenmakuan').on('click', function () {
        yanzema = ranNum();
        $('#yanzenmakuan').html(yanzema);
        colores = qiege();
        $('#yanzenmakuan').css('background', colores);
    });
    $('#yanzenmakuan').css('background', colores).css('color', '#fff').css('cursor', 'pointer');
    // 用户名
    $('#yonhumin').focus(function () {
        $('#shibai').css('display', 'none');
        $('#yonhutis').css('color', '#58bc58');
        $('#yonhutis').html('请您输入用户名');
    });
    $('#yonhumin').blur(function () {
        var suzi = $('#yonhumin').val().trim();
        if (suzi) {
            if (checkReg.name(suzi)) {
                $('#yonhutis').css('color', '#58bc58');
                $('#yonhutis').html('用户名格式正确');
            } else {
                $('#yonhutis').css('color', 'red');
                $('#yonhutis').html('用户名的格式不对，请重新输入');
                $('#yonhumin').val('');
            }
        } else {
            $('#yonhutis').css('color', 'red');
            $('#yonhutis').html('用户名不能为空');
            $('#yonhumin').val('');
        }
    });
    // //密码
    $('#mima').focus(function () {
        $('#mimatis').css('color', '#58bc58');
        $('#mimatis').html('6~16位，首字母开头、数字的组合');
        $('#shibai').css('display', 'none');
    });
    $('#mima').blur(function () {
        var suzi = $('#mima').val().trim();
        if (suzi) {
            if (checkReg.psweasy(suzi)) {
                $('#mimatis').css('color', '#58bc58');
                $('#mimatis').html('输入完成');
            } else {
                $('#mimatis').css('color', 'red');
                $('#mimatis').html('用户名的长度应为6-20个字母与数字');
                $('#mimatis').val('');
            }
        } else {
            $('#mimatis').css('color', 'red');
            $('#mimatis').html('密码不能为空');
            $('#mima').val('');
        }
    });
    // //验证码
    $('#yanzhenma').blur(function () {
        $('#shibai').css('display', 'none');
        var suzi = $('#yanzhenma').val().trim();
        var suzis = $('#yanzenmakuan').html();
        if (suzi) {
            if (checkReg.pwwagain(suzi, suzis)) {
                $('#yanzemts').html('通过验证');
                $('#yanzemts').css('color', '#58bc58');
            } else {
                $('#yanzemts').css('color', 'red');
                $('#yanzemts').html('验证码错误，请重新输入验证码');
                $('#yanzhenma').val('');
            }
        } else {
            $('#yanzemts').css('color', 'red');
            $('#yanzemts').html('验证码不能为空');
            $('#yanzhenma').val('');
        }
    });

    $('#shibai').css('display', 'none');
    $('#logins').on('click', function () {
        if ($('#yonhumin').val() && $('#mima').val() && $('#yanzhenma').val()) {
            var shijan = getTime();
            $.ajax({
                type: "POST",
                url: "../api/zuche.php",
                data: `leixin=denlu&passw=${$('#mima').val()}&username=${$('#yonhumin').val()}`,
                success: function (msg) {
                    if (msg == 'not') {
                        $('#shibai').css('display', 'block');
                        $('#shibai').html('账号或者密码错误');
                    } else if (msg == 'yes') {
                        suces($('#yonhumin').val());
                    } else if (msg == 'other_online') {
                        $('#shibai').css('display', 'block');
                        $('#shibai').html('您已经在其它地方登录!请您换一个账号登录');
                    }
                    console.log(msg);
                }
            });
        } else {
            $('#shibai').css('display', 'block');
        }
    });
    //登录的时候设置cook
    //成功调用
    function suces(user) {
        setCookie('username', user);
        window.location = `../index.html`;
    }

});
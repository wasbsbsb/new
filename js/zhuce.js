$(function () {
    $('#nav_lis').css('display', 'none');//隐藏；
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
    //默认选中；
    $('#gouxuan').attr('checked', 'checked');
    //隐藏；
    $('#chengon').css('display', 'none');
    //聚焦时；
    //用户名
    $('#yonhumin').focus(function () {
        $('#shibai').css('display', 'none');
        $('#yonhutis').css('color', '#58bc58');
        $('#yonhutis').html('账号字母开头,6-20位组成');
    });
    $('#yonhumin').blur(function () {
        var suzi = $('#yonhumin').val().trim();
        if (suzi) {
            if (checkReg.name(suzi)) {
                $.ajax({
                    type: "POST",
                    url: "../api/zuche.php",
                    data: `leixin=yanzhen&username=${suzi}`,
                    success: function (msg) {
                        if (msg == 'ys') {
                            $('#yonhutis').css('color', '#58bc58');
                            $('#yonhutis').html('该用户名可以使用');
                        } else {
                            $('#yonhutis').css('color', 'red');
                            $('#yonhutis').html('用户名已被注册，请输入一个新的用户名');
                            $('#yonhumin').val('');
                        }
                    }
                });
            } else {
                $('#yonhutis').css('color', 'red');
                $('#yonhutis').html('用户名的长度应为6-20个字母与数字');
                $('#yonhumin').val('');
            }
        } else {
            $('#yonhutis').css('color', 'red');
            $('#yonhutis').html('用户名不能为空');
            $('#yonhumin').val('');
        }
    });
    //密码
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
                $('#mimatis').html('该密码可以使用');
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
    //再次确认密码是否正确；
    $('#mimas').blur(function () {
        var suzi = $('#mimas').val().trim();
        var suzis = $('#mima').val().trim();
        if (suzi) {
            if (checkReg.pwwagain(suzi, suzis)) {
                $('#chonfumima').css('color', '#58bc58');
                $('#chonfumima').html('密码正确');
            } else {
                $('#chonfumima').css('color', 'red');
                $('#chonfumima').html('密码错误，请重新输入');
                $('#mimas').val('');
            }
        } else {
            $('#chonfumima').css('color', 'red');
            $('#chonfumima').html('密码不能为空');
            $('#mimas').val('');
        }
    });
    //邮件
    $('#mails').blur(function () {
        var suzi = $('#mails').val().trim();
        if (suzi) {
            if (checkReg.email(suzi)) {
                $.ajax({
                    type: "POST",
                    url: "../api/zuche.php",
                    data: `leixin=yanzhenemail&email=${suzi}`,
                    success: function (msg) {
                        if (msg == 'ys') {
                            $('#tisiyjian').css('color', '#58bc58');
                            $('#tisiyjian').html('该邮箱可以使用');
                        } else {
                            $('#tisiyjian').css('color', 'red');
                            $('#tisiyjian').html('邮箱已被注册，请输入一个新的邮箱账户');
                            $('#mails').val('');
                        }
                    }
                });
            } else {
                $('#tisiyjian').css('color', 'red');
                $('#tisiyjian').html('邮箱格式不正确');
                $('#mails').val('');
            }
        } else {
            $('#tisiyjian').css('color', 'red');
            $('#tisiyjian').html('请输入邮箱！');
            $('#mails').val('');
        }
    });
    //验证码进行判断；
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
    $('#tijiao').on('click', function () {
        if ($('#gouxuan')[0].checked) {
            $('#xieyi').css('color', '#58bc58');
            if ($('#yonhumin').val() && $('#mima').val() && $('#mimas').val() && $('#mails').val() && $('#yanzhenma').val()) {
                var shijan = getTime();
                shijan = JSON.stringify(shijan);
                $.ajax({
                    type: "POST",
                    url: "../api/zuche.php",
                    data: `leixin=zhuce&email=${$('#mails').val()}&passw=${$('#mimas').val()}&username=${$('#yonhumin').val()}&time=${shijan}`,
                    success: function (msg) {
                        if (msg == '1') {
                            $('#chengon').css('display', 'block');
                            $('#shibai').css('display', 'none');
                        } else {
                            $('#tisiyjian').css('color', 'red');
                            $('#tisiyjian').html('注册失败');
                        }
                    }
                });
            } else {
                $('#shibai').css('display', 'block');
            }

        } else {
            $('#xieyi').css('color', 'red');
        }
    });
    $('#logins').on('click', function () {
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

    })
    //判断发送请求；
    function suces(user) {
        setCookie('username', user);
        window.location = `../index.html`;
    }

    //进行验证并提示；



});

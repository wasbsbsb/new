$(function () {

    //点击加入购物车；
    //获取COOK值；
    zuikais();
    function zuikais() {
        var nameuser = getCookie('username');
        if (nameuser) {
            $.ajax({
                type: "POST",
                url: "../api/gwc.php",
                data: `leixin=huoqu&username=${nameuser}`,
                success: function (msg) {
                    msg = JSON.parse(msg);
                    var ooooo = '';
                    for (var k = 0; k < msg.length; k++) {
                        ooooo += msg[k].wpid + ',';
                    };
                    console.log(msg);
                    huoqucook(ooooo.substring(0, ooooo.length - 1), msg);
                }
            });
        } else {
            alert('未登录！');
        };
    }

    function huoqucook(ooooo, bbbbb) {
        var strs = '';
        // console.log(str);
        $.ajax({
            type: "POST",
            url: "../api/list.php",
            data: `leixin=gouwuc&gouwuid=${ooooo}`,
            success: function (msg) {
                msg = JSON.parse(msg);
                for (var i = 0; i < msg.length; i++) {
                    strs += ` <tr class="gw_sp">
                    <td class="gw_spes">1</td>
                    <td class="gw_spes zitileft colors">
                       ${msg[i].name}
                    </td>
                    <td class="gw_spes">
                    ${msg[i].guige}
                    </td>
                    <td class="gw_spes">
                    ${msg[i].price + 33}
                    </td>
                    <td class="gw_spes no5jia">
                    ${msg[i].price}
                    </td>
                    <td class="gw_spes">
                        <input type="text" value="${bbbbb[i].shulian}" class="shulz" data_calss='${bbbbb[i].wpid}'>
                    </td>
                    <td class="gw_spes xiaoji">

                    </td>
                    <td class="gw_spes unline colors">
                        转入收藏夹
                    </td>
                    <td class="gw_spes unline colors dells" data_id='${bbbbb[i].wpid}'>
                        删除
                    </td></tr>`;
                }
                $('#hezi_zhuan').html(strs);
                sjxlpp();

            }
        });
    };

    function sjxlpp() {
        var cd = $('.gw_sp').length;
        cds(cd);
        function cds(cd) {
            var zonji = 0;
            for (var i = 0; i < cd; i++) {
                var jiaqian = $('.no5jia').eq(i).html();
                var shulian = $('.shulz').eq(i).val();
                var str = shulian * jiaqian;
                $('.xiaoji').eq(i).html(str);
                zonji += str;
            };
            $('#spzjs').html(zonji);
        };
        //扭转为数字；
        $('.shulz').on('blur', function () {
            var datas = $(this).val() * 1;
            var stry = $(this).attr('data_calss');
            $.ajax({
                type: "POST",
                url: "../api/gwc.php",
                data: `leixin=xiugai&username=${getCookie('username')}&wpid=${stry}&shulian=${datas}`,
                success: function (msg) {
                    console.log(msg);
                }
            });

            var str = $(this).parent().parent().index();
            if (isNaN($(this).val())) {
                $('.shulz').eq(str).val(1);
            } else {
                if ($(this).val() < 1) {
                    $('.shulz').eq(str).val(1);
                } else {
                    cds(cd);
                };
            };
        });
        //删除节点；
        $('.dells').on('click', function (ev) {
            var datas = $(this).attr('data_id');
            $.ajax({
                type: "POST",
                url: "../api/gwc.php",
                data: `leixin=delyihan&username=${getCookie('username')}&wpid=${datas}`,
                success: function (msg) {
                    console.log(msg);
                    if (msg == 'del') {
                        zuikais();
                    } else {

                    }
                }
            });
        });
    }

    $('.last_qinkon').eq(0).on('click', function () {
        window.location.href();
    });
    $('.last_qinkon').eq(1).on('click', function () {
        window.location.href();
    });



});


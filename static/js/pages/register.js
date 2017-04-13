/**$("#register").serialize()+"&a_id='111111'"
 * Created by wangcaimeng on 2017/3/22.
 */

(function ($) {
$.getUrlParam = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2].replace("/","")); return null;
}
})(jQuery);
var c = $.getUrlParam("code");

$(document).ready(function () {

    $("#code").val(c);
    $("#reg").click(function () {
        register();
    });
    $("#ok-close").click(function () {
        $("#msg-success").hide(100);
    });
    $("#error-close").click(function () {
        $("#msg-error").hide(100);
    });
});

//    $("#registerbt").click(function () {
//
//        $.post("/i1/",$("#register").serialize(),function (data) {
//            console.log(data);
//            var result = JSON.parse(data).result;
//            if(result=="0"){
//                alert("注册成功");
//                location.href = "/login/";
//            }else{
//                 alert("注册失败");
//                 location.href = "/register/";
//            }
//        });
//        return false;
//    });
//})
function register() {
    $.ajax({
        type: "POST",
        url: "/i1/",
        dataType: "json",
        data: {
            mail: $("#email").val(),
            userName: $("#name").val(),
            password: $("#passwd").val(),
            repasswd: $("#repasswd").val(),
            code: $("#code").val(),
            agree: $("#agree").val()
        },
        success: function (data) {
            var result = data.result;
            if (result == "0") {
                $("#msg-error").hide(10);
                $("#msg-success").show(100);
                $("#msg-success-p").html("注册成功");
                window.setTimeout("location.href='/login/'", 2000);
            } else {
                $("#msg-success").hide(10);
                $("#msg-error").show(100);
                $("#msg-error-p").html(data.msg);
            }
        },
        error: function (jqXHR) {
            $("#msg-error").hide(10);
            $("#msg-error").show(100);
            $("#msg-error-p").html("发生错误：" + jqXHR.status);
        }
    });

}
// $(document).ready(function () {
//
//
//        $("html").keydown(function (event) {
//            if (event.keyCode == 13) {
//                register();
//            }
//        });
//
//    })

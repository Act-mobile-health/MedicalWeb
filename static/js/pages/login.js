/**
 * Created by wangcaimeng on 2017/3/21.
 */
$(document).ready(function () {
    $("html").keydown(function(event){
        if(event.keyCode==13){
            login();
        }
    });
    $("#login").click(function(){
        login();
    });
    $("#ok-close").click(function(){
        $("#msg-success").hide(100);
    });
    $("#error-close").click(function(){
        $("#msg-error").hide(100);
    });
//    $("#loginbt").click(function () {
//        $.post("/i3/",$("#login").serialize(),function (data) {
//        console.log(data);
//            var result = JSON.parse(data).result;
//            if(result=="0"){
//                alert("登录成功");
//                location.href = "/";
//            }else{
//                 alert("登录失败");
//                 location.href = "/login/";
//            }
//        });
//        return false;
//    });
});

function login(){
    $.ajax({
        type:"POST",
        url:"/i3/",
        dataType:"json",
        data:{
            userName: $("#email").val(),
            password: $("#passwd").val(),
            remember_me: $("#remember_me").val()
        },
        success:function(data){
            if(data.result == "0"){
                $("#msg-error").hide(10);
                $("#msg-success").show(100);
                $("#msg-success-p").html("登陆成功");
                window.setTimeout("location.href='/'", 2000);
            }else{
                $("#msg-success").hide(10);
                $("#msg-error").show(100);
                $("#msg-error-p").html(data.msg);
            }
        },
        error:function(jqXHR){
            $("#msg-error").hide(10);
            $("#msg-error").show(100);
            $("#msg-error-p").html("发生错误："+jqXHR.status);
        }
    });
}

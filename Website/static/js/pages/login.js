/**
 * Created by wangcaimeng on 2017/3/21.
 */
$(document).ready(function () {
    $("#login").click(function () {
        $.post("",$("#loginForm").serialize(),function (result) {
            if(result==0){
                alert("登录成功");
                window.location();
            }else{
                 alert("登录失败");
                 window.location("#");
            }
        });
    });
})
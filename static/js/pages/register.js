/**
 * Created by wangcaimeng on 2017/3/22.
 */
$(document).ready(function () {
    $("#register").click(function () {
        $.post("",$("#registerForm").serialize(),function (result) {
            if(result==0){
                alert("注册成功");
                window.location();
            }else{
                 alert("注册失败");
                 window.location("#");
            }
        });
    });
})
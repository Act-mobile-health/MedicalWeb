/**
 * Created by wangcaimeng on 2017/3/21.
 */
$(document).ready(function () {
    $("#loginbt").click(function () {
        $.post("/i3/",$("#login").serialize(),function (data) {
        console.log(data);
            var result = JSON.parse(data).result;
            if(result=="0"){
                alert("登录成功");
                location.href = "/";
            }else{
                 alert("登录失败");
                 location.href = "/login/";
            }
        });
        return false;
    });
})

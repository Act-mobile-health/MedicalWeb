/**$("#register").serialize()+"&a_id='111111'"
 * Created by wangcaimeng on 2017/3/22.
 */
$(document).ready(function () {
    $("#registerbt").click(function () {

        $.post("/i1/",$("#register").serialize(),function (data) {
            var result = JSON.parse(data).result;
            if(result=="0"){
                alert("注册成功");
                location.href = "/login/";
            }else{
                 alert("注册失败");
                 location.href = "/register/";
            }
        });
        return false;
    });
})

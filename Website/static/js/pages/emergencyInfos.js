/**
 * Created by wangcaimeng on 2017/3/20.
 */
$(document).ready(function () {

    // searchPatient button on click
    $("#searchPatient").click(function () {
        var P_id = $("#P_id").val();
        console.debug(P_id);
        $.getJSON("/static/json/patient.json",{id:P_id},function (json_data) {
            var name = json_data[0].name;
            console.debug(name);
            $("#name").val(name);

        })
    });

    //submitEnmergencyInfos button on click
    $("#submitEmergencyInfos").click(function () {
        if(confirm("确定添加吗？")){
            $.post("",$("#EmergCallInfo").serialize(),function (result) {
                if(result==0){
                    alert("添加成功！");
                }else {
                    alert("添加失败，请重试！");
                }
            })
        }
    })

})

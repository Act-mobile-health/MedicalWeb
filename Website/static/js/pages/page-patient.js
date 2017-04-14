/**
 * Created by 91034 on 2017/3/19.
 */
$(document).ready(function () {
    appendAllPatientTable();
    $("#refresh").click(function () {
        clearAllPatientTable();
        appendAllPatientTable();
    });

    $("#PatientInfobt").click(function () {
        if(confirm("确定修改吗？")){
            $.post("/i17/",$("#PatientInfo").serialize(),function (data) {
            console.log(data);
            console.log($("#PatientInfo").serialize())
                var result = JSON.parse(data).result;
                console.log(result);
                if(result=="0"){
                    alert("修改成功！");
                    appendUserInfoTable();
                    appendUserDetailForm();
                }else {
                    alert("修改失败，请重试！");
                }

            });
        }

    });
})
    function appendAllPatientTable() {
        $.getJSON('/i15/',{},function (json_data) {
            $.each(json_data,function (index,item) {
                $("#patientInfoTable tbody").append(
                    "<tr>"+
                        "<td>"+item.P_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+SexParse(item.sex)+"</td>"+
                        "<td>"+item.age+"</td>"+
                        "<td>"+item.nation+"</td>"+
                        "<td>"+item.registerTime+"</td>"+
                        "<td>"+item.cellphone+"</td>"+
                        "<td>"+item.telephone+"</td>"+
                        "<td style='background:red'>"+item.o_time+"</td>"+
                        "<td style='background:#27dc27'>"+item.e_time+"</td>"+
                        "<td style='background:#549ce8'>"+item.h_time+"</td>"+
                        "<td>"+item.health+"</td>"+
                        "<td><a href=\"/patientDetails/?P_id="+item.P_id+"\" style='color:black;'><u>查看详情</u></a></td>"+
                    "</tr>");
            });
        });
    }
    function clearAllPatientTable() {
        $("#patientInfoTable tbody").clean();
    }

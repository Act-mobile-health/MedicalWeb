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
            $.ajax({
                type: "POST",
                url: "/i17/",
                data: $("#PatientInfo").serialize(),
                dataType: "json",
                success: function (data) {
                    successProcess(data);
                    appendUserInfoTable();
                    appendUserDetailForm();
                },
                error:function(data){
                    errorProcess(data);
                }
            });
        }

    });
})
    function appendAllPatientTable() {
        $.ajax({
            type: "GET",
            url: "/i15/",
            data: {},
            dataType: "json",
            success: function (json_data) {
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
            },
            error:function(data){
                    errorProcess(data);
            }
        });
        
    }
    function clearAllPatientTable() {
        $("#patientInfoTable tbody").clean();
    }

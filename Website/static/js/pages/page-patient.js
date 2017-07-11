/**
 * Created by 91034 on 2017/3/19.
 */
$(document).ready(function () {
    appendAllPatientTable();
    $("#refresh").click(function () {
        appendAllPatientTable();
    });

    $("#PatientInfobt").click(function () {
        if(confirm("确定提交吗？")){
            $.ajax({
                type: "POST",
                url: "/i17/",
                data: $("#PatientInfo").serialize(),
                dataType: "json",
                success: function (data) {
                    successProcess(data);
                    appendAllPatientTable();
                },
                error:function(data){
                    errorProcess(data);
                }
            });
        }

    });
})
    function appendAllPatientTable() {
        var time;
        var temp;
        $("#patientInfoTable tbody").empty();
        $.ajax({
            type: "GET",
            url: "/i15/",
            data: {},
            dataType: "json",
            success: function (json_data) {
                $.each(json_data,function (index,item) {
                time = parseInt(item.o_time) + parseInt(item.h_time) + parseInt(item.e_time);
                temp = time.toString()+"("+item.o_time+"/"+item.e_time+"/"+item.h_time+")";
                $("#patientInfoTable tbody").append(
                    "<tr>"+
                        "<td>"+item.P_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+SexParse(item.sex)+"</td>"+
                        "<td>"+item.age+"</td>"+
                        "<td>"+item.IDCardNum+"</td>"+
                        "<td>"+item.registerTime+"</td>"+
                        "<td>"+item.cellphone+"</td>"+
//                        "<td>"+item.telephone+"</td>"+
                        "<td style='background:"+colorInfo(time, 0)+"'>"+temp+"</td>"+
                        "<td style='color:"+colorInfo(time, 0)+"'>"+colorInfo(time, 1)+"</td>"+
                        "<td>"+"56%"+"</td>"+
                        "<td><a href=\"/patientDetails/?P_id="+item.P_id+"\" style='color:black;'><u>查看详情</u></a></td>"+
                    "</tr>");
                });
            },
            error:function(data){
                errorProcess(data);
            }
        });
        
    }

    function colorInfo(input, index){
        var a = [["#d9534f","高危"],["#f0ad4e","风险较大"],["#5cb85c","健康"]];
        if(input > 5){
            return a[0][index];
        }
        else if(input > 3){
            return a[1][index];
        }
        else{
            return a[2][index];
        }
    }

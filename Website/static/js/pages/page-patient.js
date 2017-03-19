/**
 * Created by 91034 on 2017/3/19.
 */
$(document).ready(function () {
    appendAllPatientTable();
    $("#refresh").click(function () {
        clearAllPatientTable();
        appendAllPatientTable();
    });
})
    function appendAllPatientTable() {
        $.getJSON('/static/AllPatient.json/',function (json_data) {
            $.each(json_data,function (index,item) {
                $("#patientInfoTable tbody").append(
                    "<tr>"+
                        "<td>"+item.id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+item.sex+"</td>"+
                        "<td>"+item.age+"</td>"+
                        "<td>"+item.health+"</td>"+
                        "<td><a href=\"/patientDetail/?id="+item.id+"\">查看详情</a></td>"+
                    "</tr>");
            });
        });
    }
    function clearAllPatientTable() {
        $("#patientInfoTable tbody").clean();
    }
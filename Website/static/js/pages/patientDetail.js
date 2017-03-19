/**
 * Created by 91034 on 2017/3/16.
 */
$(document).ready(function () {
    appendPatDetailInfoTable();
    $("#refresh").click(function () {
        appendPatDetailInfoTable();
    });
})
    function appendPatDetailInfoTable() {
        $.getJSON('/static/patDetail.json',function (json_data) {
            $.each(json_data,function (index,item) {
                $("#patDetailInfoTable tbody").append(
                    "<tr>"+
                        "<td>"+item.P_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+item.sex+"</td>"+
                        "<td>"+item.birthday+"</td>"+
                        "<td>"+item.age+"</td>"+
                        "<td>"+item.nation+"</td>"+
                        "<td>"+item.height+"</td>"+
                        "<td>"+item.weight+"</td>"+
                        "<td>"+item.registerTime+"</td>"+
                        "<td>"+item.homeAddr+"</td>"+
                        "<td>"+item.telephone+"</td>"+
                        "<td>"+item.cellphone+"</td>"+
                        "<td>"+item.partnerPhone+"</td>"+
                    "</tr>");
                $("#patDetailInfoTable2 tbody").append(
                    "<tr>"+
                        "<td>"+item.education+"</td>"+
                        "<td>"+item.career+"</td>"+
                        "<td>"+item.marriage+"</td>"+
                        "<td>"+item.birthAddr+"</td>"+
                        "<td>"+item.activityAddr1+"</td>"+
                        "<td>"+item.activityAddr2+"</td>"+
                        "<td>"+item.actionAddr+"</td>"+
                        "<td>"+item.diastolicPressure+"</td>"+
                        "<td>"+item.systolicPressure+"</td>"+
                        "<td>"+item.neckCircu+"</td>"+
                        "<td>"+item.payment+"</td>"+
                    "</tr>");
            });
        });
    }
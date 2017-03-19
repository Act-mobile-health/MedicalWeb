/**
 * Created by 91034 on 2017/3/19.
 */
$(document).ready(function () {
    appendPatientInfo();
})
    function appendPatientInfo() {
        $.getJSON('/static/PatientInfo.json/',function (json_data) {
            $.each(json_data,function (index,item) {
                $("#P_id").val(item.P_id);
                $("#name").val(item.name);
                // $("#sign").val(item.sign);
                $("#age").val(item.age);
                $("#nation").val(item.nation);
            });
        });
    }
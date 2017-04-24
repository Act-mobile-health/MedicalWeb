
$(document).ready(function(){

    $("#hospitalbt").click(function(){
        submitHospitalInfo();
    });

    $("#searchbt").click(function(){
        searchPatient($("#P_id").val());
    });

});

function submitHospitalInfo(){
    if(confirm("确定提交？")==1){
        $.ajax({
            type: "POST",
            url: "/i22/",
            data: $("#InHospitalInfo").serialize()+"&type="+"2",
            dataType: "json",
            success: function (data) {
                successProcess(data);
                location.href="/patientDetails/?P_id="+$("#P_id");
            },
            error:function(a){
                errorProcess(a);
            }
        });
        return false;
    }
}

function searchPatient(P_id){
    $.ajax({
        type: "GET",
        url: "/i36/",
        data: {P_id:P_id},
        dataType: "json",
        success: function (data) {
             $("#name").val(data.name);
        },
        error:function(a){
                errorProcess(a);
        }
    });
}

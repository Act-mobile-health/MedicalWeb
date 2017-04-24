
$(document).ready(function(){

    $("#emergencybt").click(function(){
        submitEmergencyInfo();
    });

    $("#searchbt").click(function(){
        searchPatient($("#P_id").val());
    });

});

function submitEmergencyInfo(){
    if(confirm("确定提交？")==1){
        $.ajax({
            type: "post",
            url: "/i22/",
            data: $("#EmergCallInfo").serialize()+"&type="+"1",
            dataType: "json",
            success: function (data) {
                successProcess(data);
            },
            error:function(data){
            errorProcess(data);
        }
        });
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
        error:function(data){
            errorProcess(data);
        }
    });
}

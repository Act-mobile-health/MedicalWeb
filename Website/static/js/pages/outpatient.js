
$(document).ready(function(){

    $("#outpatientbt").click(function(){
        submitOutpatientInfo();
    });

    $("#searchbt").click(function(){
        console.log($("#P_id").val());
        console.log("!111");
        searchPatient($("#P_id").val());
    });

});

function submitOutpatientInfo(){
    if(confirm("确定提交？")==1){
        $.ajax({
            type: "POST",
            url: "/i22/",
            data: $("#OutPatientServiceInfo").serialize()+"&type="+"0",
            dataType: "json",
            success: function (data) {
                successProcess(data);
            },
            error:function(data){
                errorProcess(data);
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
        error:function(data){
                errorProcess(data);
        }
    });
}

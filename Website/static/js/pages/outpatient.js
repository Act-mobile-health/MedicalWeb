
$(document).ready(function(){

    $("#outpatientbt").click(function(){
        submitOutpatientInfo();
    });

    $("#searchbt").click(function(){
        searchPatient($("#P_id").val());
    });

//    var p1 = document.getElementById("outinfos");
//    if(window.innerWidth>1600){
//        p1.setAttribute("class", "row col-md-offset-3 col-md-6");
//	}
//	else if(window.innerWidth>1300){
//        p1.setAttribute("class", "row col-md-offset-2 col-md-8");
//	}
//	else if(window.innerWidth>1100){
//        p1.setAttribute("class", "row col-md-offset-1 col-md-10");
//	}
//	else{
//        p1.setAttribute("class", "row");
//	}

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

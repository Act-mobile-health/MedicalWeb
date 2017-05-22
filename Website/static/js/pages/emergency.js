
$(document).ready(function(){

    $("#emergencybt").click(function(){
        submitEmergencyInfo();
    });

    $("#searchbt").click(function(){
        searchPatient($("#P_id").val());
    });
    forWizard("acuteExac", "disease", 0);
    forWizard("byxCheck", "byxResult", 1);
    forWizard("useAbt", "useAbtconfirm", 1);
    forWizard_ecDate();
    forWizard("hospital", "treatMethod", 0);
    forWizard("treatMethod", "medicine", 1);

//    var p1 = document.getElementById("eminfos");
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

function forWizard_ecDate(){
    $(".mycheckbox").change(function(){
        var val=$('input:radio[name="ecMethod"]:checked').val();
        console.log(val);
        if(val){
            if(val == 3)
            {
            console.log("AAA")
               $("#ecDate").show();
            }
            else
            {
               $("#ecDate").hide();
            }
        }
    })
}

function submitEmergencyInfo(){
    if(confirm("确定提交？")==1){
        $.ajax({
            type: "POST",
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

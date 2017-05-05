
$(document).ready(function(){

    $("#outpatientbt").click(function(){
        submitOutpatientInfo();
    });

    $("#searchbt").click(function(){
        console.log($("#P_id").val());
        console.log("!111");
        searchPatient($("#P_id").val());
    });

    var p1 = document.getElementById("outinfos");
    if(window.innerWidth>1600){
        p1.setAttribute("class", "row col-md-offset-3 col-md-6");
	}
	else if(window.innerWidth>1300){
        p1.setAttribute("class", "row col-md-offset-2 col-md-8");
	}
	else if(window.innerWidth>1100){
        p1.setAttribute("class", "row col-md-offset-1 col-md-10");
	}
	else{
        p1.setAttribute("class", "row");
	}

//    if(window.innerWidth>1600){
//        var p1 = document.getElementById("p1");
//        p1.style.width = "70%"
//        var p2 = document.getElementById("p2");
//        p2.style.width = "70%"
//        var p3 = document.getElementById("p3");
//        p3.style.width = "70%"
//	}
//	else if(window.innerWidth>1000){
//        var p1 = document.getElementById("p1");
//        p1.style.width = "80%"
//        var p2 = document.getElementById("p2");
//        p2.style.width = "80%"
//        var p3 = document.getElementById("p3");
//        p3.style.width = "80%"
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

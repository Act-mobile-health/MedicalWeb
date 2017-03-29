
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
        $.post("/i22/",$("#OutPatientServiceInfo").serialize()+"&type="+"0",function(data){
            var result = JSON.parse(data).result;
            if(result=="0"){
                alert("添加成功");
                location.href="/patientDetails/?P_id="+$("#P_id");
            }
            else{
                alert("添加失败");
            }
        });
        return false;
    }
}

function searchPatient(P_id){
    $.getJSON("/i36/", {P_id:P_id}, function(data){
        console.log(data);
        $("#name").val(data.name);
    });
}

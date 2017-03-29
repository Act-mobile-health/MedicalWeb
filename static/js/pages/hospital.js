
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
        $.post("/i22/",$("#InHospitalInfo").serialize()+"&type="+"2",function(data){
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

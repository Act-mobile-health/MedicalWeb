$(document).ready(function(){

    $("#LungFuncbt").click(function(){
        submitLungFunc();
    });
    $("#BloodGasAnalysisbt").click(function(){
        submitBloodGasAnalysis();
    });
    $("#LungCTbt").click(function(){
        submitLungCT();
    });
    $("#SleepDetectResultbt").click(function(){
        submitSleepDetectResult();
    });
    $("#UCGbt").click(function(){
        submitUCG();
    });
    $("#Cardiogrambt").click(function(){
        submitCardiogram();
    });
});

function editLungFunc(id, type){
    $.ajax({
        type: "GET",
        url: "/i71/",
        data: {AE_id:id, AE_type:type},
        dataType: "json",
        success: function (json_data) {
            var item = json_data;
            console.log(item)
            $("#LungFuncDetails input[name='AE_id']").val(id);
            $("#LungFuncDetails input[name='head'][value='"+item.head+"']").attr("checked",true);
            $("#LungFuncDetails input[name='date']").val(item.date);
            $("#LungFuncDetails input[name='FVC1']").val(item.FVC1);
            $("#LungFuncDetails input[name='FVC2']").val(item.FVC2);
            $("#LungFuncDetails input[name='FVC3']").val(item.FVC3);
            $("#LungFuncDetails input[name='FEV11']").val(item.FEV11);
            $("#LungFuncDetails input[name='FEV12']").val(item.FEV12);
            $("#LungFuncDetails input[name='FEV13']").val(item.FEV13);
            $("#LungFuncDetails input[name='FEV1_FVC1']").val(item.FEV1_FVC1);
            $("#LungFuncDetails input[name='FEV1_FVC2']").val(item.FEV1_FVC2);
            $("#LungFuncDetails input[name='FEV1_FVC3']").val(item.FEV1_FVC3);
            $("#LungFuncDetails input[name='FEV1change']").val(item.FEV1change);
            $("#LungFuncDetails input[name='RV_TLC1']").val(item.RV_TLC1);
            $("#LungFuncDetails input[name='RV_TLC2']").val(item.RV_TLC2);
            $("#LungFuncDetails input[name='RV_TLC3']").val(item.RV_TLC3);
            $("#LungFuncDetails input[name='GOLD'][value='"+item.GOLD+"']").attr("checked",true);
        },
        error: function(data){
            errorProcess(data);
        }
    });
}
function submitLungFunc(){
    if(confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i72/",
            data: $("#LungFunc").serialize(),
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

function editBloodGasAnalysis(id, type){
    $.ajax({
        type: "GET",
        url: "/i71/",
        data: {AE_id:id, AE_type:type},
        dataType: "json",
        success: function (json_data) {
            var item = json_data;
            $("#BloodGasAnalysisDetails input[name='AE_id']").val(id);
            $("#BloodGasAnalysisDetails input[name='head'][value='"+item.head+"']").attr("checked",true);
            $("#BloodGasAnalysisDetails input[name='date']").val(item.date);
            $("#BloodGasAnalysisDetails input[name='useOxygen'][value='"+item.useOxygen+"']").attr("checked",true);
            $("#BloodGasAnalysisDetails input[name='oxygen']").val(item.oxygen);
            $("#BloodGasAnalysisDetails input[name='PH']").val(item.PH);
            $("#BloodGasAnalysisDetails input[name='PaO2']").val(item.PaO2);
            $("#BloodGasAnalysisDetails input[name='PaCO2']").val(item.PaCO2);
            $("#BloodGasAnalysisDetails input[name='HCO3']").val(item.HCO3);
            $("#BloodGasAnalysisDetails input[name='A_aDO2']").val(item.A_aDO2);
            $("#BloodGasAnalysisDetails input[name='BEecf']").val(item.BEecf);
            $("#BloodGasAnalysisDetails input[name='Lac']").val(item.Lac);
            $("#BloodGasAnalysisDetails input[name='SaO2']").val(item.SaO2);

        },
        error:function(data){
                errorProcess(data);
        }
    });
}
function submitBloodGasAnalysis(){
console.log($("#BloodGasAnalysis").serialize());
    if(confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i73/",
            data: $("#BloodGasAnalysis").serialize(),
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

function editLungCT(id, type){
    $.ajax({
        type: "GET",
        url: "/i71/",
        data: {AE_id:id, AE_type:type},
        dataType: "json",
        success: function (json_data) {
            var item = json_data;
            console.log(item)
            $("#LungCTDetails input[name='AE_id']").val(id);
            $("#LungCTDetails input[name='date']").val(item.date);
            $("#LungCTDetails input[name='head'][value='"+item.head+"']").attr("checked",true);
            analyzeCheckBox("LungCT","content",item.content);
            $("#LungCTDetails input[name='other']").val(item.other);


        },
        error:function(data){
                errorProcess(data);
        }
    });
}
function submitLungCT(){
    if(confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i74/",
            data: $("#LungCT").serialize(),
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

function editSleepDetectResult(id, type){
    $.ajax({
        type:"GET",
        url:"/i71/",
        data:{AE_id:id, AE_type:type},
        dataType: "json",
        success:function (json_data) {
            item=json_data;
            $("#SleepDetectResult input[name='AE_id']").val(id);
            $("#SleepDetectResult input[name='head'][value='"+item.head+"']").attr("checked",true);
            $("#SleepDetectResult input[name='date']").val(item.date);
            $("#SleepDetectResult input[name='detectTime']").val(item.detectTime);
            $("#SleepDetectResult input[name='sleep']").val(item.sleep);
            $("#SleepDetectResult input[name='AHI']").val(item.AHI);
            $("#SleepDetectResult input[name='ODI']").val(item.ODI);
            $("#SleepDetectResult input[name='avgSpO2']").val(item.avgSpO2);
            $("#SleepDetectResult input[name='lowSpO2']").val(item.lowSpO2);
            $("#SleepDetectResult input[name='relaSpO2']").val(item.relaSpO2);
            $("#SleepDetectResult input[name='avgBreath']").val(item.avgBreath);
            $("#SleepDetectResult input[name='wake']").val(item.wake);
            $("#SleepDetectResult input[name='R']").val(item.R);
            $("#SleepDetectResult input[name='N2']").val(item.N2);
            $("#SleepDetectResult input[name='N3']").val(item.N3);
        },
        error: function(data){
            errorProcess(data);
        }
    });
}
function submitSleepDetectResult() {
    if(confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i75/",
            data: $("#SleepDetectResult").serialize(),
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

function editUCG(id, type){
    $.ajax({
        type:"GET",
        url:"/i71/",
        data:{AE_id:id, AE_type:type},
        dataType: "json",
        success:function (json_data) {
            item=json_data;
            $("#UCG input[name='AE_id']").val(id);
            $("#UCG input[name='head'][value='"+item.head+"']").attr("checked",true);
            $("#UCG input[name='date']").val(item.date);
            $("#UCG input[name='LVEF']").val(item.LVEF);
            $("#UCG input[name='PASP'][value='"+item.PASP+"']").attr("checked",true);
            $("#UCG input[name='symptom']").val(item.symptom);
            $("#UCG input[name='left'][value='"+item.left+"']").attr("checked",true);
            $("#UCG input[name='right'][value='"+item.right+"']").attr("checked",true);
            $("#UCG input[name='other']").val(item.other);
        },
        error:function (data) {
            errorProcess(data);
        }
    });
}
function submitUCG() {
    if(confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i76/",
            data: $("#UCG").serialize(),
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

function editCardiogram(id, type){
    $.ajax({
        type:"GET",
        url:"/i71/",
        data:{AE_id:id, AE_type:type},
        dataType: "json",
        success:function (json_data){
            item=json_data;
            $("#Cardiogram input[name='AE_id']").val(id);
            $("#Cardiogram input[name='date']").val(item.date);
            $("#Cardiogram input[name='isNormal'][value='"+item.isNormal+"']").attr("checked",true);
            analyzeCheckBox("Cardiogram","content",item.content);
            $("#Cardiogram input[name='other']").val(item.other);
        },
        error:function (data) {
            errorProcess(data);
        }
    })
}
function submitCardiogram() {
    if(confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i77/",
            data: $("#Cardiogram").serialize(),
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

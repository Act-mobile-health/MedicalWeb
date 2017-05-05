
function successProcess(info){
    if(info.result=="0"){
        alert("成功");
    }
    else{
        alert("失败");
    }
}

function errorProcess(info){
    alert(info);
}

function Parse(num, attr, input){
    for(i = 1;i<=num;i++){
        if(input==i.toString()){
            return attr[i-1]
        }
    }
}

function userGroupParse(input){
    return Parse(3,['管理员','医生','学生'],input)
}

function SexParse(input){
    return Parse(2,['男','女'],input)
}

function userNameParse(input){
    var str = '';
    $.ajax({
        type:"GET",
        url:"/i66/",
        dataType:"json",
        data:{D_id:input},
        async :false,
        success(data){
            str = data.userName;
            console.log(str)
        },
        error(data){
            errorProcess(data);
        }
    });
    return str;
}

function educationParse(input){
    return Parse(6,['小学','初中','高中/中专','大学专科（大专）','大学本科（大本）','研究生（硕士/博士）'],input)
}

function careerParse(input){
    return Parse(13,['农、林、牧、渔、水利业','工业','地质普查和勘探业','建筑业','交通运输业、邮电通信业','商业、公共饮食业、物资供应和仓储业','房地产管理、公用事业、居民服务和咨询服务业','卫生、体育和社会福利事业','教育、文化艺术和广播电视业','科学研究和综合技术服务业','金融、保险业','国家机关、党政机关和社会团体','其他行业'],input)

}

function marriageParse(input){
    return Parse(4,['未婚','已婚','离异','丧偶'],input)
}

function paymentParse(input){
return Parse(13,['城镇居民基本保险','城镇职工基本保险','新型农村合作医疗','商业医疗保险','全公费','全自费','其他'],input)

}
function checkboxParse(input){

}

function AEtypeParse(input){
    return Parse(6,['肺功能','血气分析','肺CT','睡眠监测结果','心脏彩超','心电图'],input);
}

function AEtypeParse2(input){
    return Parse(6,['LungFunc','BloodGasAnalysis','LungCT','SleepDetectResult','UCG','Cardiogram'],input);
}


function analyzeCheckBox(modal,name,item) {
    for (var i = 0;i<item.length;i++){
            $("#"+modal+" input[name='"+name+"'][value='"+item[i]+"']").attr('checked',true);
    }
}
function analyseRadio(input){
        if(input == "1")
            return "是";
        else if(input=="2")
            return "否";
        else
            return "error";
}

$(document).ready(function(){
    try{
        a = document.getElementById("WebName")
        a.innerHTML = "iBreathCare " + '<i class="fa fa-coffee"></i> ACT-BUAA';
    }
    catch(err){
        console.log(err)
    }
})

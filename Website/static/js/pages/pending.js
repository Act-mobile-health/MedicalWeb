$(document).ready(function(){
    showAppInfo();

});

function showAppInfo(){
    $("#appInfo tbody").empty;
    $.ajax({
        type:"GET",
        url:"/i96/",
        dataType:"json",
        success: function(json_data){
            $.each(json_data,function(index,item){
                $("#appInfo tbody").append(
                "<tr>"+
                "<td style=\"text-align:center;\">"+item.P_id+"</td>"+
                "<td style=\"text-align:center;\">"+patientNameParse(item.P_id)+"</td>"+
                "<td style=\"text-align:center;\">"+item.date_upload+"</td>"+
                "<td style=\"text-align:center;\">"+item.date+"</td>"+
                "<td style=\"text-align:center;color:"+parseTypeColor(item.type)+"\">"+parseType(item.type)+"</td>"+
                "<td style=\"text-align:center;\"><a style=\"color:"+
                parseSignColor(item.sign)+"\"href =\"/patientDetails/?P_id="+item.P_id+"\"><u>"+parseSign(item.sign)+"</u></a></td>"+
                "</tr>");
            })
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    });
}

function parseType(input){
    if(input == "0"){
        return "门诊";
    }
    else if(input == "1"){
        return "急诊";
    }
    else{
        return "住院";
    }
}

function parseSign(input){
    if(input == "1"){
        return "未处理";
    }
    else{
        return "已处理";
    }
}

function parseTypeColor(input){
    if(input == "0"){
        return "#5cb85c";
    }
    else if(input == "1"){
        return "#f0ad4e";
    }
    else{
        return "#d9534f";
    }
}


function parseSignColor(input){
    if(input == "1"){
        return "#d9534f";
    }
    else{
        return "#5cb85c";
    }
}

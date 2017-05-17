$(document).ready(function(){
    showAppInfo();
    showMessage();

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
            });
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    });
}

function showMessage(){
    $("#message tbody").empty();
    $.ajax({
        type:"GET",
        url:"/i97/",
//        data:{P_id:patientId},
        dataType:"json",
        success: function(json_data){
            $.each(json_data, function(index, item){
                var str_temp = "onclick =\"messageProcessed("+item.id+","+item.type+")\"" + 'href = \"\"';
                if(item.sign=="0"){
                    str_temp = ""
                }
                $("#message tbody").append(
                "<tr>"+
                "<td style=\"text-align:center;\">"+item.P_id+"</td>"+
                "<td style=\"text-align:center;\">"+patientNameParse(item.P_id)+"</td>"+
                "<td style=\"text-align:center;\">"+item.date_upload+"</td>"+
                "<td style=\"text-align:center;\">"+item.date+"</td>"+
                "<td style=\"text-align:center;\">"+parseMessage(item.id, item.type, item.content)+"</td>"+
                "<td style=\"text-align:center;\"><a "+str_temp+" style=\"color:"+
                parseSignColor(item.sign)+"\"><u>"+parseSign(item.sign)+"</u></a></td>"+
                "</tr>");
            });
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    });
}

function messageProcessed(id, type){
    if(confirm("确定已经处理过该留言？")){
        $.ajax({
            type:"GET",
            url:"/i98/",
            data:{id: id, type:type},
            dataType:"json",
            success: function(json_data){
                console.log(json_data);
                successProcess(json_data);
            },
            error: function(json_data){
                errorProcess(json_data);
            }
        })
    }
}

function audioBegin(dir){
    console.log(dir);
    var audio1 = document.getElementById(dir);
    audio1.play();
}
function audioStop(dir){
    console.log(dir);
    var audio1 = document.getElementById(dir);
    audio1.pause();
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

function parseMessage(id, type, content){
    str1 = "<audio id=\"bgMusic"+id+"\"><source  src=\"/media/"+content+"\" type=\"audio/mp3\"></audio>"
    str2 = "语音留言 <a style ='color:black' onclick=\"audioBegin('"+"bgMusic"+id+"')\"><i class='fa fa-play' style ='color:black'></i> 播放 </a>";
    str3 = "<a style ='color:black' onclick=\"audioStop('"+"bgMusic"+id+"')\"><i class='fa fa-pause' style ='color:black'></i> 停止 </a>";
    if(type == "0"){
        return content;
    }
    else{
        return str1 + str2 + str3;
    }

}


$(document).ready(function(){
    sfRecord();
    usebox();
    showMessage_top();

})

function usebox(){
    try{
        var temp = for_userbox();
        a = document.getElementById("WebName")
        a.innerHTML = "iBreathCare " + '<i class="fa fa-coffee"></i> ACT-BUAA';

        b = document.getElementById("userName_s")
        b.innerHTML = temp.userName;

        c = document.getElementById("title_s")
        c.innerHTML = temp.title;
    }
    catch(err){
        console.log(err)
    }
}

function sfRecord(){
    var o = 0, h = 0, e = 0;
    try{
    $.ajax({
        type:"GET",
        url:"/i96/",
//        async:false,
        dataType:"json",
        success: function(json_data){
            $.each(json_data,function(index,item){
                if(item.type=="0" && item.sign == "1"){
                    o = o + 1;
                }
                else if(item.type=="1" && item.sign == "1"){
                    e = e + 1;
                }
                else if(item.type=="2" && item.sign == "1"){
                    h = h + 1;
                }
            });
            $("#outPat").html("有"+o+"条新添加的门诊记录");
            $("#emGen").html("有"+e+"条新添加的急诊记录");
            $("#inHos").html("有"+h+"条新添加的住院记录");
            $("#sfSum").html(o+e+h);
            $("#sum").html(o+e+h);
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    });
    }
    catch(err){
        console.log(err);
    }
}

function showMessage_top(){
    var sum = 0;
    $.ajax({
        type:"GET",
        url:"/i97/",
//        data:{P_id:patientId},
        dataType:"json",
//        async:false,
        success: function(json_data){
            $.each(json_data, function(index, item){
                if(item.sign == "1"){
                    sum = sum + 1;
                    $("#message_top").append(
                        "<li class=\"avatar\">"+
                        "<a href=\"/pending/\">"+
                        "<img class=\"avatar\" src=\"/static/img/avatar.jpg\" />"+
                        "<div><div class=\"point point-primary point-lg\"></div>"+patientNameParse(item.P_id)+attachInfo(item.type)+"</div>"+
                        "<span><small>"+item.date_upload+"</small></span>"+
                        "</a>"+
                        "</li>");
				}
            });
            $("#message_top").append(
			"<li class=\"dropdown-menu-footer text-center\">"+
			"<a href=\"/pending/\">查看全部留言</a>"+
			"</li>");
			$("#message_topSum").html(sum);
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    });
}

function attachInfo(type){
    if(type == "0"){
        return "有新文本留言";
    }
    else{
        return "有新语音留言";
    }
}

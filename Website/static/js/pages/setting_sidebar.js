
$(document).ready(function(){
    sfRecord();
})


function showSettings(){
    var setting = document.getElementById("sidebar");
    setting.innerHTML = setting.innerHTML + '<li><a href="/setting/"><i class="fa fa-cog" aria-hidden="true"></i><span>管理面板</span></a></li>';

}

function sfRecord(){
    var o = 0, h = 0, e = 0;
    try{
    $.ajax({
        type:"GET",
        url:"/i96/",
        async:false,
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
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    });
    $("#outPat").html("有"+o+"条新添加的门诊记录");
    $("#emGen").html("有"+e+"条新添加的急诊记录");
    $("#inHos").html("有"+h+"条新添加的住院记录");
    $("#sfSum").html(o+e+h);
    $("#sum").html(o+e+h);
    }
    catch(err){
        console.log(err);
    }
}
//function getGroup(){
//    $.ajax({
//        type:"GET",
//        url:"/i63/",
//        dataType:"json",
//        data:{
//        },
//        success:function(data){
//            if(data.result == "1"){
//               showSettings();
//            }
//        },
//        error:function(d){
//            console.log(d);
//        }
//    });
//}

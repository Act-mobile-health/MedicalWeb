
$(document).ready(function(){
console.log("###")
//    getGroup();
})


function showSettings(){
    var setting = document.getElementById("sidebar");
    setting.innerHTML = setting.innerHTML + '<li><a href="/setting/"><i class="fa fa-cog" aria-hidden="true"></i><span>管理面板</span></a></li>';

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

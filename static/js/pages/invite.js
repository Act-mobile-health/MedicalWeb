
$(document).ready(function(){
    showInvitations();
    console.log("111");
    $("#invitebt").click(function(){
        submitNewInvitation();
    });
});

//#34495E
function showInvitations(){
    $("#invitations tbody").empty();
    $.getJSON('/i60/',{},function(json_data){
    console.log(json_data);
        $.each(json_data,function(index,item){
            $("#invitations tbody").append(
                '<tr>'+
                '<td>'+item.id+'</td>'+
                '<td><a style="color:#29b6f6;" href="/register?code='+item.code+'">'+item.code+'</a></td>'+
                '<td>可用</td>'+
                '</tr>');
        });
    });

}

function submitNewInvitation(){
    console.log($("#prefix").val())
    $.ajax({
        type:"GET",
        url:"/i61/",
        dataType:"json",
        data:{
            prefix: $("#prefix").val(),
            uid: $("#uid").val(),
            num: $("#num").val()
        },
        success:function(data){
            var result = data.result;
            if(result=="0"){
                alert("添加成功");
            }
            else{
                alert("添加失败");
            }
        },
        error:function(jqXHR){

        }
    });
    showInvitations();
}

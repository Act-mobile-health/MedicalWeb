
$(document).ready(function(){
    showUsers();
});

function showUsers(){
    $.ajax({
        type:"GET",
        url:"/i65/",
        dataType:"json",
        data:{},
        success(json_data){
            $("#allUserInfoTable tbody").empty();
            $.each(json_data,function(index, data){
                $("#allUserInfoTable tbody").append(
                    "<tr>"+
                    "<td>"+data.id+"</td>"+
                    "<td>"+data.userName+"</td>"+
                    "<td>"+userGroupParse(data.userGroup)+"</td>"+
                    "<td>"+data.name+"</td>"+
                    "<td>"+SexParse(data.sex)+"</td>"+
                    "<td>"+data.title+"</td>"+
                    "<td>"+data.hospital+"</td>"+
                    "<td>"+data.cellphone+"</td>"+
                    "<td>"+data.mail+"</td>"+
                    "<td><a onclick='editUserDetail("+data.id+")'><i class='fa fa-edit'></i></a>"+
                    "<a onclick='deleteUser("+data.id+")'><i class='fa fa-times'></i></a></td>"+
                    +"</tr>");
            });
        },
        error(data){
            errorProcess(data);
        }
    });
}

function editUserDetail(id){

}

function deleteUser(id){

}

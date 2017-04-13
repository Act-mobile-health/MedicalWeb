
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

function userGroupParse(input){
    str = ''
    if(input=="1"){
        str = '管理员';
    }
    else if(input=="2"){
        str = '医生';
    }
    else{
        str = '学生';
    }
    return str
}

function SexParse(input){
    str = ''
    if(input=="1"){
        str = '男';
    }
    else{
        str = '女';
    }
    return str
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


$(document).ready(function(){

    showExperimentGroup();
    getGroup();

    $("#experimentGroupbt").click(function(){
    		submitExperimentGroup();
    });

});


function showExperimentGroup(){
    group = document.getElementById("experimentGroup");
    group.innerHTML = '<li><a data-toggle="modal" onclick = "addExperimentGroup()" href="#ExperimentGroupDetails">添加实验组</span></a></li>';
    $.ajax({
        type: "GET",
        url: "/i37/",
        data: {},
        dataType: "json",
        success: function (json_data) {
            $.each(json_data,function(index,item){
            if(G_id == item.G_id){
                group.innerHTML = group.innerHTML + '<li class="active"><a href="/group/?G_id='+item.G_id+'"><span class="text"> 实验组'+(index+1)+':'+item.name+'</span></a></li>';
            }
            else{
                group.innerHTML = group.innerHTML + '<li><a href="/group/?G_id='+item.G_id+'"><span class="text"> 实验组'+(index+1)+':'+item.name+'</span></a></li>';
            }
            });
        },
        error:function(data){
            errorProcess(data);
        }
    });
}

function addExperimentGroup(){
    $("#ExperimentGroupInfo :text").val("");
}

function submitExperimentGroup(){
    if (confirm("确定提交吗？")){
        $.ajax({
            type: "POST",
            url: "/i38/",
            data: $("#ExperimentGroupInfo").serialize(),
            dataType: "json",
            success: function (data) {
                successProcess(data);
            },
            error:function(data){
                errorProcess(data);
            }
        });
        showExperimentGroup();
    }
}

function getGroup(){
    $.ajax({
        type:"GET",
        url:"/i63/",
        dataType:"json",
        data:{},
        success:function(data){
            if(data.result == "1"){
               document.getElementById('setting').style.display = 'block';
            }
        },
        error:function(d){
            errorProcess(data);
            console.log(d);
        }
    });
}

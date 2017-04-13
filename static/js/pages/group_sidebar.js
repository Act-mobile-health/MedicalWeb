
$(document).ready(function(){

    showExperimentGroup();
    getGroup();

    $("#experimentGroupbt").click(function(){
    		submitExperimentGroup();
    });

});


function showExperimentGroup(){
    group = document.getElementById("experimentGroup");
    $.getJSON("/i37/",{},function(json_data){
        $.each(json_data,function(index,item){
            group.innerHTML = group.innerHTML + '<li><a href="/group/?G_id='+item.G_id+'"><span class="text"> 实验组'+(index+1)+':'+item.name+'</span></a></li>';
        });


    });
}

function addExperimentGroup(){
    $("#ExperimentGroupInfo :text").val("");
}

function submitExperimentGroup(){
    if (confirm("确定提交吗？")){
        $.post("/i38/",$("#ExperimentGroupInfo").serialize(),function(data){
            var result = JSON.parse(data).result;
            if(result =="0"){
                alert("操作成功");
            }
            else{
                alert("操作失败");
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
        data:{
        },
        success:function(data){
            if(data.result == "1"){
               document.getElementById('setting').style.display = 'block';
            }
        },
        error:function(d){
            console.log(d);
        }
    });
}

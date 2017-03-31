/**
 * Created by wangcaimeng on 2017/3/14.
 * */

 (function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2].replace("/","")); return null;
        }
  })(jQuery);

 var G_id = $.getUrlParam("G_id");
$(document).ready(function(){

    showExperimentGroup();
    showExperimentGroupTable();

    $("#experimentGroupbt").click(function(){
    	submitExperimentGroup();
        showExperimentGroupTable();
    });
});

    function editExperimentGroup(){
        console.log(G_id);
        $.getJSON("/i39/",{G_id:G_id},function(item){
            $("#ExperimentGroupInfo input[name='name']").val(item.name);
            $("#ExperimentGroupInfo input[name='G_id']").val(item.G_id);
            $("#ExperimentGroupInfo input[name='D_id']").val(item.D_id);
            $("#ExperimentGroupInfo input[name='date']").val(item.date);
            $("#ExperimentGroupInfo textarea[name='description']").val(item.description);
        });

    }
    function showExperimentGroup(){
        group = document.getElementById("experimentGroup");
        $.getJSON("/i37/",{},function(json_data){
            $.each(json_data,function(index,item){
//                G_id.push(item.G_id);
                group.innerHTML = group.innerHTML + '<li><a href="/group/?G_id='+item.G_id+'/"><span class="text"> 实验组'+(index+1)+":"+item.name+'</span></a></li>';
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
        }
    }

    function showExperimentGroupTable() {
        $("#experimentGroupInfoTable tbody").empty();
        $.getJSON("/i39/", {G_id:G_id}, function(item) {
            $("#experimentGroupInfoTable tbody").append(
                "<tr>"+
                    "<td>"+item.G_id+"</td>"+
                    "<td>"+item.name+"</td>"+
                    "<td>"+item.D_id+"</td>"+
                    "<td>"+item.date+"</td>"+
                    "<td>"+item.description+"</td>"+
                "</tr>");
        });
    }

    function addPatientIntoGroup(){
        $.getJSON("/i40/",{G_id:G_id},function(json_data){
            console.log(json_data);
        });
    }

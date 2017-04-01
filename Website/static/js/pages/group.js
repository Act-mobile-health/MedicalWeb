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

    showExperimentGroupTable();
    showPatient();

    $("#experimentGroupbt").click(function(){
        showExperimentGroupTable();
    });

    $("#addPatientIntoGroupbt").click(function(){
        submitPatientId();
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

    function showPatient(){
        $("#patient tbody").empty();
        $.getJSON("/i42/",{G_id:G_id},function(json_data){
            $.each(json_data,function(index,item){
                $("#patient tbody").append(
                    "<tr>"+
                    "<td>"+item.P_id+"</td>"+
                    "<td>"+item.name+"</td>"+
                    "<td>"+item.sex+"</td>"+
                    "<td>"+item.age+"</td>"+
                    "<td>"+item.o_time+"</td>"+
                    "<td>"+item.e_time+"</td>"+
                    "<td>"+item.h_time+"</td>"+
                    "<td>"+index+"</td>"+
                    "<td>"+item.date+"</td>"+
                    "<td><a onclick='removePatientFromGroup("+"\""+item.P_id+"\""+")'><i class='fa fa-times'></i></td>"+
                "</tr>");
                console.log(item.P_id.toString());
            });
        });

    }

    function removePatientFromGroup(P_id){
    console.log(P_id);
        if(confirm("确定删除")==1){
            $.getJSON("/i44/",{G_id:G_id,P_id:P_id},function(data){
                if(data.result=="0"){
                    alert("删除成功");
                }
                else{
                    alert("删除失败");
                }
            });
            showPatient();
        }
    }

    function addPatientIntoGroup(){
        $("#addpatient tbody").empty();
        $.getJSON("/i40/",{G_id:G_id},function(json_data){
            $.each(json_data,function (index,item) {
            $("#addpatient tbody").append(
                "<tr>"+
                    "<td><div class='checkbox'><input type='checkbox' name='add' value="+item.P_id+"></div></td>"+
                    "<td>"+item.P_id+"</td>"+
                    "<td>"+item.name+"</td>"+
                    "<td>"+index+"</td>"+
                    "<td>"+item.sex+"</td>"+
                    "<td>"+item.age+"</td>"+
                "</tr>");
            });
        });
    }

    function deleteGroup(){
        if (confirm("确定删除吗？")){
            $.post("/i41/",{G_id:G_id},function(data){
                var result = JSON.parse(data).result;
                if(result =="0"){
                    alert("删除成功");
                    location.href = "/"
                }
                else{
                    alert("删除失败");
                }
            });
            return false;
        }
    }
    function submitPatientId(){
        if(confirm("确定增加所选患者吗？")==1){
            $.post("/i43/",$("#addPatientIntoGroup").serialize()+"&G_id="+G_id,function(data){
                var result = JSON.parse(data).result;
                if(result=="0"){
                    alert("添加成功");
                }
                else{
                    alert("添加失败");
                }
            });
            showPatient();
        }
    }

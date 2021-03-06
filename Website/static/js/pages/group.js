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
    $("#addPatientIntoGroupbt").click(function(){
        submitPatientId();
    });
});

    function editExperimentGroup(){
        console.log(G_id);
        $.ajax({
            type: "GET",
            url: "/i39/",
            data: {G_id:G_id},
            dataType: "json",
            success: function (item) {
                $("#ExperimentGroupInfo input[name='name']").val(item.name);
                $("#ExperimentGroupInfo input[name='G_id']").val(item.G_id);
                $("#ExperimentGroupInfo input[name='D_id']").val(item.D_id);
                $("#ExperimentGroupInfo input[name='date']").val(item.date);
                $("#ExperimentGroupInfo textarea[name='description']").val(item.description);
            },
            error:function(data){
                errorProcess(data);
            }
        });
        

    }

    function showExperimentGroupTable() {
        $("#experimentGroupInfoTable tbody").empty();
        $.ajax({
            type: "GET",
            url: "/i39/",
            data: {G_id:G_id},
            dataType: "json",
            success: function (item) {
                 $("#experimentGroupInfoTable tbody").append(
                "<tr>"+
                    "<td>"+item.G_id+"</td>"+
                    "<td>"+item.name+"</td>"+
                    "<td>"+userNameParse(item.D_id)+"</td>"+
                    "<td>"+item.date+"</td>"+
                    "<td>"+item.description+"</td>"+
                "</tr>");
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function showPatient(){
        $("#patient tbody").empty();
        $.ajax({
            type: "GET",
            url: "/i42/",
            data: {G_id:G_id},
            dataType: "json",
            success: function (json_data) {
                $.each(json_data,function(index,item){
                    $("#patient tbody").append(
                        "<tr>"+
                        "<td>"+item.P_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+SexParse(item.sex)+"</td>"+
                        "<td>"+item.age+"</td>"+
                        "<td>"+item.o_time+"</td>"+
                        "<td>"+item.e_time+"</td>"+
                        "<td>"+item.h_time+"</td>"+
                        "<td>"+index+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td><a onclick='removePatientFromGroup("+"\""+item.P_id+"\""+")'><i class='fa fa-times'></i></td>"+
                    "</tr>");
                });
            },
            error:function(data){
                errorProcess(data);
            }
        });

    }

    function removePatientFromGroup(P_id){
        if(confirm("确定删除")==1){
            $.ajax({
                type: "GET",
                url: "/i44/",
                data: {G_id:G_id,P_id:P_id},
                dataType: "json",
                success: function (data) {
                    successProcess(data);
                },
                error:function(data){
                    errorProcess(data);
                }
            });
            showPatient();
        }
    }

    function addPatientIntoGroup(){
        $("#addpatient tbody").empty();
        $.ajax({
            type: "GET",
            url: "/i40/",
            data: {G_id:G_id},
            dataType: "json",
            success: function (json_data) {
                $.each(json_data,function (index,item) {
                var temp ="";
                if(item.sex=="1"){
                    temp = "男";
                }
                else{
                    temp = "女";
                }
                $("#addpatient tbody").append(
                    "<tr><td></td>"+
                        "<td><div class='checkbox'><input type='checkbox' name='add' value="+item.P_id+"></div></td>"+
                        "<td>"+item.P_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+index+"</td>"+
                        "<td>"+temp+"</td>"+
                        "<td>"+item.age+"</td>"+
                    "</tr>");
                });
            },
                error:function(data){
                    errorProcess(data);
                }
        });
    }

//    function deleteGroup(){
//        if (confirm("确定删除吗？")){
//            $.post("/i41/",{G_id:G_id},function(data, info){
//                console.log(info);
//                console.log("!!!")
//                var result = JSON.parse(data).result;
//                if(result =="0"){
//                    alert("删除成功");
//                    location.href = "/"
//                }
//                else{
//                    alert("删除失败");
//                }
//            });
//            return false;
//        }
//    }
    function deleteGroup(){
        if(confirm("确定删除？")==1){
            $.ajax({
            type:"POST",
            url:"/i41/",
            dataType:"json",
            data:{
                G_id: G_id
            },
            success:function(data){
                successProcess(data);
                location.href = "/";
            },
            error:function(a){
                errorProcess(a);
            }
        });
        }
    }

    function submitPatientId(){
        if(confirm("确定增加所选患者吗？")==1){
            $.ajax({
                type: "POST",
                url: "/i43/",
                data: $("#addPatientIntoGroup").serialize()+"&G_id="+G_id,
                dataType: "json",
                success: function (data) {
                    successProcess(data);
                },
                error:function(a){
                    errorProcess(a);
                }
            });
        }
    }

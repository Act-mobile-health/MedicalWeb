/**
 * Created by wangcaimeng on 2017/3/14.
 * */

 (function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
  })(jQuery);

 var G_id = $.getUrlParam("G_id");
$(document).ready(function(){

    showExperimentGroup();
    appendUserInfoTable();
    appendUserDetailForm();

    $("#experimentGroupbt").click(
    	function(){
    		submitExperimentGroup();
        });


    $("#refresh").click(
    	function(){
    		appendUserInfoTable()
        });
    // $("#brithdayPicker").datetimepicker({
    //     minView: "month", //选择日期后，不会再跳转去选择时分秒
    //     language:  'zh-CN',
    //     format: 'yyyy-mm-dd',
    //     todayBtn:  true,
    //     autoclose: true,
    //
    // });

    $("#submitUserDetail").click(function () {
        if(confirm("确定修改吗？")){
            $.post("/i7/",$("#DoctorInfo").serialize(),function (data) {
            console.log(data);
            console.log($("#DoctorInfo").serialize())
                var result = JSON.parse(data).result;
                console.log(result);
                if(result=="0"){
                    alert("修改成功！");
                    appendUserInfoTable();
                    appendUserDetailForm();
                }else {
                    alert("修改失败，请重试！");
                }

            });
        }

    });
});

    function showExperimentGroup(){
        group = document.getElementById("experimentGroup");
        $.getJSON("/i37/",{},function(json_data){
            $.each(json_data,function(index,item){
//                G_id.push(item.G_id);
                group.innerHTML = group.innerHTML + '<li><a href="/group/?G_id='+item.G_id+'"><span class="text"> 实验组'+(index+1)+':'+item.name+'</span></a></li>';
            });


        });
    }

    function addExperimentGroup(){
        $("#ExperimentGroupInfo :text").val("");
    }

    function updateExperimentGroup(){
        $.getJSON("/i39/",{G_id:G_id},function(item){
            $("#ExperimentGroupInfo input[name='name']").val(item.name);
            $("#ExperimentGroupInfo input[name='G_id']").val(item.G_id);
            $("#ExperimentGroupInfo input[name='D_id']").val(item.D_id);
            $("#ExperimentGroupInfo input[name='date']").val(item.date);
            $("#ExperimentGroupInfo input[name='description']").val(item.description);
        })

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

    function appendUserInfoTable() {
        $("#userInfoTable tbody").text("");
        $.getJSON("/i5/",{},function(item) {
        console.log(item);
            if(item.result=="-1"){
                location.href="/login/";
            }
            $("#userInfoTable tbody").append(
                "<tr>"+
                    "<td>"+item.D_id+"</td>"+
                    "<td>"+item.userName+"</td>"+
                    "<td>"+item.cellphone+"</td>"+
                    "<td>"+item.mail+"</td>"+
                    "<td>"+item.hospital+"</td>"+
                "</tr>");
        });
        return false;
    }

    function appendUserDetailForm() {
        $.getJSON("/i6/",function(item) {
            $("#DoctorInfo input[name='sex'][value='"+item.sex+"']").attr('checked',true);
            $("#DoctorInfo input[name='D_id']").val(item.D_id);
            $("#DoctorInfo input[name='name']").val(item.name);
            $("#DoctorInfo input[name='birthday']").val(item.birthday);
            $("#DoctorInfo input[name='userName']").val(item.userName);
            $("#DoctorInfo input[name='cellphone']").val(item.cellphone);
            $("#DoctorInfo input[name='weChat']").val(item.weChat);
            $("#DoctorInfo input[name='mail']").val(item.mail);
            $("#DoctorInfo input[name='title']").val(item.title);
            $("#DoctorInfo input[name='hospital']").val(item.hospital);
            $("#DoctorInfo input[name='department']").val(item.department);
//                $("#DoctorInfo input[name='userGroup']").val(item.userGroup);
            $("#DoctorInfo input[name='userGroup'][value='"+item.userGroup+"']").attr('checked',true);
            $("#DoctorInfo input[name='registerDate']").val(item.registerDate);
        });

    }

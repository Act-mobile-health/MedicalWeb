/**
 * Created by wangcaimeng on 2017/3/14.
 * */
$(document).ready(function(){
    appendUserInfoTable();
    appendUserDetailForm();
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
            $.post("",$("#userDetailForm").serialize(),function (result) {
                if(result==0){
                    alert("修改成功！");
                    appendUserInfoTable();
                    appendUserDetailForm();
                }else {
                    alert("修改失败，请重试！");
                }

            });
        }

    });

    function appendUserInfoTable() {
        $("#userInfoTable tbody").text("");
        $.getJSON("/static/json/user.json",{},function(json_data) {
            $.each(json_data,function(index,item) {
                $("#userInfoTable tbody").append(
                    "<tr>"+
                        "<td>"+item.D_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+item.cellphone+"</td>"+
                        "<td>"+item.mail+"</td>"+
                        "<td>"+item.hospital+"</td>"+
                    "</tr>");
            });
        });
    }

    function appendUserDetailForm() {
        $.getJSON("static/json/user.json",function(json_data) {
            $.each(json_data,function(index,item) {
                $("#D_id").val(item.id);
                $("#name").val(item.name);
                $("#sex").val(item.sex);
                if(item.sex==1){
                    $("#sex1").attr("checked",true);
                }else if(item.sex==2){
                    $("#sex2").attr("checked",true);
                }
                $("#brithday").val(item.brithday);
                $("#userName").val(item.userName);
                $("#cellphone").val(item.cellphone);
                $("#weChat").val(item.weChat);
                $("#mail").val(item.mail);
                $("#title").val(item.title);
                $("#hospital").val(item.hospital);
                $("#department").val(item.department);

                $("#userGroup1").attr("checked",true);

                $("#registerxwDate").val(item.registerxwDate);
            });
        });

    }
});



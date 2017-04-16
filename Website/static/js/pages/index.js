/**
 * Created by wangcaimeng on 2017/3/14.
 * */
$(document).ready(function(){

    showUserDetail();

    $("#submitUserDetail").click(function () {
        submitUserDetail();
    });

});
    function showUserDetail() {
        $("#userInfoTable tbody").text("");
        $.ajax({
            type: "GET",
            url: "/i5/",
            data: {},
            dataType: "json",
            success: function (data) {
                $("#userInfoTable tbody").append(
                "<tr>"+
                "<td>"+data.D_id+"</td>"+
                "<td>"+data.userName+"</td>"+
                "<td>"+userGroupParse(data.userGroup)+"</td>"+
                "<td>"+data.name+"</td>"+
                "<td>"+SexParse(data.sex)+"</td>"+
                "<td>"+data.title+"</td>"+
                "<td>"+data.hospital+"</td>"+
                "<td>"+data.cellphone+"</td>"+
                "<td>"+data.mail+"</td>"+
                "</tr>");
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function editUserDetail() {
        $.ajax({
            type: "GET",
            url: "/i6/",
            data: {},
            dataType: "json",
            success: function (item) {
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
                $("#DoctorInfo input[name='userGroup'][value='"+item.userGroup+"']").attr('checked',true);
                $("#DoctorInfo input[name='registerDate']").val(item.registerDate);
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function submitUserDetail(){
        if(confirm("确定修改吗？")){
            $.ajax({
                type: "POST",
                url: "/i7/",
                data: $("#DoctorInfo").serialize(),
                dataType: "json",
                success: function (data) {
                    successProcess(data);
                 },
                error:function(data){
                    errorProcess(data);
                }
            });
            showUserDetail();
        }
    }




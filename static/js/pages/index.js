/**
 * Created by wangcaimeng on 2017/3/14.
 * */
$(document).ready(function(){

    showUserDetail();

    $("#submitUserDetail").click(function () {
        submitUserDetail();
    });

    inform = document.getElementById("inform");
    inform.innerHTML = "<h5><i class='fa fa-comments'></i> 欢迎使用<b>健康呼吸</b>医疗信息管理系统！</h5>"+
                        "<h5><i class='fa fa-comments'></i> 初次登录，请您及时完善个人信息！</h5>"+
                        "<h5><i class='fa fa-comments'></i> 病人A需要完善就诊信息！</h5>"+
                        "<h5><i class='fa fa-comments'></i> 您还没有填写手机号码！</h5>";

    public = document.getElementById("public");
    public.innerHTML = "<h5><i class='fa fa-volume-up'></i> 欢迎使用<b>健康呼吸</b>医疗信息管理系统！</h5>"+
                        "<h5><i class='fa fa-volume-up'></i> 有问题请联系管理员，或参照<b>《用户使用说明》</b>！</h5>"+
                        "<h5><i class='fa fa-volume-up'></i> 本系统<b>不对外开放</b>注册，申请账号请联系管理员！</h5>"+
                        "<h5><i class='fa fa-volume-up'></i> 请自觉保护患者<b>隐私</b>信息，不要对外公布患者信息！</h5>";

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




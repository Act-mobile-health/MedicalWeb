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
        $.getJSON("/i5/",{},function(data) {
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
        });
    }

    function editUserDetail() {
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
            $("#DoctorInfo input[name='userGroup'][value='"+item.userGroup+"']").attr('checked',true);
            $("#DoctorInfo input[name='registerDate']").val(item.registerDate);
        });
    }

    function submitUserDetail(){
        if(confirm("确定修改吗？")){
            $.post("/i7/",$("#DoctorInfo").serialize(),function (data) {
                var result = JSON.parse(data).result;
                console.log(result);
                if(result=="0"){
                    alert("修改成功！");
                }else {
                    alert("修改失败，请重试！");
                }
            });
            showUserDetail();
        }
    }




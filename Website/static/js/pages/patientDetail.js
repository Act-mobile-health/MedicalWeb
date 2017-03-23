/**
 * Created by 91034 on 2017/3/16.
 */

 (function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
  })(jQuery);
var data = new Array();
var patientinfo = new Array();
$(document).ready(function () {

    PatientDetailTable();
    appendPatientRelation();
//    $("#refresh").click(function () {
//        PatientDetailTable();
//    });
    $("#submitChangePatient").click(function () {
        submitChangePatient();
    })
    $("#postRelation").click(function () {
       postPatientRelation();
    });
    $("#addPatientRelation").click(function () {
       addPatientRelation();
    });
    $("#deletePatientRelation").click(function () {
       deleatePatientRelation();
    });
})
    //查看患者个人信息
    function PatientDetailTable() {
        $.getJSON('/static/json/patDetail.json',{"P_id":$.getUrlParam("P_id")},function (json_data) {
            $.each(json_data,function (index,item) {
                patientinfo.push(item);
                $("#P_id").html(item.P_id);
                $("#name").html(item.name);
                if (item.sign==1){
                    $("sign").html("是");
                }
                else if(item.sign==2){
                    $("sign").html("否");
                }
                $("#birthday").html(item.birthday);
                $("#age").html(item.age);
                $("#nation").html(item.nation);
                $("#height").html(item.height);
                $("#weight").html(item.weight);
                $("#education").html(item.education);
                $("#career").html(item.career);
                $("#marriage").html(item.marriage);
                $("#homeAddr").html(item.homeAddr);
                $("#birthAddr").html(item.birthAddr);
                $("#activityAddr1").html(item.activityAddr1);
                $("#activityAddr2").html(item.activityAddr2);
                $("#actionAddr").html(item.actionAddr);
                $("#diastolicPressure").html(item.diastolicPressure);
                $("#systolicPressure").html(item.systolicPressure);
                $("#neckCircu").html(item.neckCircu);
                $("#telephone").html(item.telephone);
                $("#cellphone").html(item.cellphone);
                $("#partnerPhone").html(item.partnerPhone);
                $("#groupName").html(item.groupName);
                $("#groupInfo").html(item.groupInfo);
                if (item.payment==1){
                    $("#payment").html("城镇居民基本保险");
                }
                else if(item.payment==2){
                    $("#payment").html("城镇职工基本保险");
                }
                else if(item.payment==3){
                    $("#payment").html("新型农村合作医疗");
                }
                else if(item.payment==4){
                    $("#payment").html("商业医疗保险");
                }
                else if(item.payment==5){
                    $("#payment").html("全公费");
                }
                else if(item.payment==6){
                    $("#payment").html("全自费");
                }
                else if(item.payment==7){
                    $("#payment").html("其他");
                }
                if(item.sex==1){
                    $("#sex").html("男");
                }
                else if(item.sex==2){
                    $("#sex").html("女");
                }
            });
        });
    }
    function appendPatientDetail() {
                item = patientinfo[0];
                $("#PI-P_id").val(item.P_id);
                $("#PI-name").val(item.name);
                if (item.sign==1){
                    $("#PI-sign1").prop('checked',true);
                }
                else if(item.sign==2){
                    $("#PI-sign2").prop('checked',true);
                }
                $("#PI-birthday").val(item.birthday);
                $("#PI-age").val(item.age);
                $("#PI-nation").val(item.nation);
                $("#PI-height").val(item.height);
                $("#PI-weight").val(item.weight);
                $("#PI-education").val(item.education);
                $("#PI-career").val(item.career);
                $("#PI-marriage").val(item.marriage);
                $("#PI-homeAddr").val(item.homeAddr);
                $("#PI-birthAddr").val(item.birthAddr);
                $("#PI-activityAddr1").val(item.activityAddr1);
                $("#PI-activityAddr2").val(item.activityAddr2);
                $("#PI-actionAddr").val(item.actionAddr);
                $("#PI-diastolicPressure").val(item.diastolicPressure);
                $("#PI-systolicPressure").val(item.systolicPressure);
                $("#PI-neckCircu").val(item.neckCircu);
                $("#PI-telephone").val(item.telephone);
                $("#PI-cellphone").val(item.cellphone);
                $("#PI-partnerPhone").val(item.partnerPhone);
                $("#PI-groupName").val(item.groupName);
                $("#PI-groupInfo").val(item.groupInfo);
                if (item.payment==1){
                    $("#PI-payment1").prop('checked',true);
                }
                else if(item.payment==2){
                    $("#PI-payment2").prop('checked',true);
                }
                else if(item.payment==3){
                    $("#PI-payment3").prop('checked',true);
                }
                else if(item.payment==4){
                    $("#PI-payment4").prop('checked',true);
                }
                else if(item.payment==5){
                    $("#PI-payment5").prop('checked',true);
                }
                else if(item.payment==6){
                    $("#PI-payment6").prop('checked',true);
                }
                else if(item.payment==7){
                    $("#PI-payment7").prop('checked',true);
                }
                if(item.sex==1){
                    $("#PI-sex1").prop('checked',true);
                }
                else if(item.sex==2){
                    $("#PI-sex2").prop('checked',true);
                }
    }
    function submitChangePatient() {
        if(confirm("确定提交？")==1){
            $.post("",$("#PatientInfo").serialize(),function (result) {
                if(result==0)
                    alert("修改成功");
                else if(result==-1)
                    alert("修改失败");
            })
        }
    }
    //查看患者家属信息
    function appendPatientRelation(){
        $.getJSON('/static/json/patientRelation.json',function (json_data){
            $.each(json_data,function (index,item){
                data.push(item);
                $("#RelationInfoShow tbody").append(
                    "<tr>"+
                        "<td>"+item.R_id+"</td>"+
                        "<td>"+item.name+"</td>"+
                        "<td>"+item.sex+"</td>"+
                        "<td>"+item.telephone+"</td>"+
                        "<td>"+item.cellphone+"</td>"+
                        "<td>"+item.weChat+"</td>"+
                        "<td>"+item.mail+"</td>"+
                        "<td>"+item.homeAddr+"</td>"+
                        '<td><a  data-toggle="modal" onclick = "editPatientRelation('+ index +')" href="#RelationInfoDetails"><i class="fa fa-edit"></i></a></td>'+
                        '<td><button onclick = "deletePatientRelation('+item.R_id+')"></button></td>'+
                    "</tr>");
            });
        });
    }
    //修改病人家属信息

    function editPatientRelation(index){
         $("#R_id").val(data[index].R_id);
         $("#R_weChat").val(data[index].weChat);
         $("#R_name").val(data[index].name);
         $("#R_telephone").val(data[index].telephone);
         $("#R_cellphone").val(data[index].cellphone);
         $("#R_mail").val(data[index].mail);
         $("#R_homeAddr").val(data[index].homeAddr);
        if(data[index].sex==1){
            $("#R_sex").val("男");
        }
        else if(data[index].sex==2){
            $("R_#sex").val("女");
        }
    }

    function postPatientRelation() {
        if(confirm("确定提交？")==1){
            $.post("",$("#RelationInfo").serialize(),function (result) {
                if(result==0)
                    alert("修改成功");
                else if(result==-1)
                    alert("修改失败");
            })
        }
    }
    //添加患者家属信息
    function addPatientRelation() {
        $.post("",$("#RelationInfo").serialize(),function (result) {
            if(result==0)
                    alert("添加成功");
            else if(result==-1)
                alert("添加失败");
        })
    }
    //删除患者家属信息
    function deletePatientRelation(item) {
    if(confirm("确定删除？")==1){
        $.get("",{"R_id":item},function (result) {
        console.log(item);
            if(result==0)
                    alert("删除成功");
            else if(result==-1)
                alert("删除失败");
        })
    }
    }


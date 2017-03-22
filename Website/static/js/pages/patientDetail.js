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
$(document).ready(function () {

    appendPatientDetail();
    appendPatientRelation();
    $("#refresh").click(function () {
        appendPatientDetail();
    });
    $("#submitChangePatient").click(function () {
        submitChangePatient();
    })
    $("#submitPatientRelation").click(function () {
       submitPatientRelation();
    });
    $("#addPatientRelation").click(function () {
       addPatientRelation();
    });
    $("#deletePatientRelation").click(function () {
       deleatePatientRelation();
    });
})
    //查看患者个人信息
    function appendPatientDetail() {
        $.getJSON('',{"P_id":$.getUrlParam("P_id")},function (json_data) {
            $.each(json_data,function (index,item) {
            console.log(json_data);
            console.log(item.P_id);
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
            });
        });
    }
    function submitChangePatient() {
        if(confirm("确定提交？")==1){
            console.log($("#PatientInfo").serialize())
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
                        "<td>"+item.name+"</td>"+
                        "<td>"+item.sex+"</td>"+
                        "<td>"+item.telephone+"</td>"+
                        "<td>"+item.cellphone+"</td>"+
                        "<td>"+item.weChat+"</td>"+
                        "<td>"+item.mail+"</td>"+
                        "<td>"+item.homeAddr+"</td>"+
                        '<td><a  data-toggle="modal" onclick = "PatientRelation('+ index +')" href="#RelationInfoDetails"><i class="fa fa-edit"></i></a></td>'+
                        '<td><button onclick = "deletePatientRelation('+item.R_id+')"></button></td>'+
                    "</tr>");
            });
        });
    }
    //修改病人家属信息
    function submitPatientRelation() {
        if(confirm("确定提交？")==1){
            $.post("",$("#PatientRelationInfo").serialize(),function (result) {
                if(result==0)
                    alert("修改成功");
                else if(result==-1)
                    alert("修改失败");
            })
        }
    }
    //添加患者家属信息
    function addPatientRelation() {
        $.post("",$("#addPatientRelationInfo").serialize(),function (result) {
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

    function PatientRelation(item){
    console.log(data[item]);

    }

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
var patientId = $.getUrlParam("P_id");
var type = 0;
var outpatientnum = 0;
var emergencynum = 0;
var hospitalnum = 0;
var S_id = new Array();
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
       deletePatientRelation();
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
            });
        }
    }
    //查看患者家属信息
    function appendPatientRelation(){
        $.getJSON('/static/json/patientRelation.json',function (json_data){
            $.each(json_data,function (index,item){
                data.push(item);
                $("#RelationInfoShow tbody").append(
                    "<tr>"+
                        "'<td>"+item.R_id+"</td>'"+
                        "'<td>"+item.name+"</td>'"+
                        "'<td>"+item.sex+"</td>'"+
                        "'<td>"+item.telephone+"</td>'"+
                        "'<td>"+item.cellphone+"</td>'"+
                        "'<td>"+item.weChat+"</td>'"+
                        "'<td>"+item.mail+"</td>'"+
                        "'<td>"+item.homeAddr+"</td>'"+
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
            });
        }
    }
    //添加患者家属信息
    function addPatientRelation() {
        $.post("",$("#RelationInfo").serialize(),function (result) {
            if(result==0)
                    alert("添加成功");
            else if(result==-1)
                alert("添加失败");
        });
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
        });
    }
    }

    function GenerateTab1(index){
    var str_edit = "";
    var str_type = "";
    if(type==1){
        str_edit = "OutPatientServiceInfoDetails";
        str_type = "outpatient-"+index;
    }
    else if(type == 2){
        str_edit = "EmergCallInfoDetails";
        str_type = "emergency-"+index;
    }
    else if(type == 3){
        str_edit = "InHospitalInfoDetails";
        str_type = "hospital-"+index;
    }
    var  str = "";
     str     = '<div class="col-lg-12">'+
			   '<div class="panel bk-bg-white">'+
			   '<div class="panel-heading bk-bg-primary">'+
			   '<h6><i class="fa fa-tags red"></i>门诊记录'+index+'</h6>'+
			   '<div class="panel-actions">'+
				'<a href="#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>'+
				'<a href="#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>'+
                '<a  data-toggle="modal" onclick = "editOutPatientServiceInfo('+index+')" href="#'+str_edit+'"><i class="fa fa-edit"></i></a>'+
				'<a href="#" class="btn-close"><i class="fa fa-times"></i></a>'+
				'</div>'+
				'</div>'+
				'<div class="panel-body">'+
				'<div id="'+str_type+'-tab'+'" class="wizard-type1">'+
				'<ul class="steps nav nav-pills">'+
				'<li><a href="#'+str_type+'-tab1" onclick = "showOutPatientServiceInfo('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-star"></i></span> 详细信息</a></li>'+
				'<li><a href="#'+str_type+'-tab2" onclick = "showClinic('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-credit-card"></i></span> 临床信息</a></li>'+
				'<li><a href="#'+str_type+'-tab3" onclick = "showQuestionnaire('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-building"></i></span> 问卷信息</a></li>'+
				'<li><a href="#'+str_type+'-tab4" onclick = "showAttachment('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-check"></i></span> 辅助检查和附件</a></li>'+
				'</ul>'+
				'<div class="tab-content">'+
				'<div class="tab-pane" id="'+str_type+'-tab1">'+
				'<div class="row col-lg-10 col-md-10 col-md-offset-1">'+
				'<table class="table table-bordered table-hover table-entire" id="'+str_type+'-table">'+
				'<thead>'+
				'</thead>'+
				'<tbody>'+
				'</tbody>'+
				'</table>'+
				'</div>'+
				'</div>';

		return str;

    }

    function GenerateTab2(index){
    var str_type = "";
    if(type==1){
        str_type = "outpatient-"+index;
    }
    else if(type == 2){
        str_type = "emergency-"+index;
    }
    else if(type == 3){
        str_type = "hospital-"+index;
    }
     var str = "";
     str = '<div class="tab-pane" id="'+str_type+'-tab2">'+
		   '<div class="row col-lg-10 col-md-10 col-md-offset-1">'+
		   '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-clinictable">'+
		   '<thead>'+
		   '<tr>'+
		   '<th class="table-small" style="text-align:center">编号</th>'+
			'<th class="table-small" style="text-align:center">就诊日期</th>'+
			'<th class="table-small" style="text-align:center">慢阻肺诊断级别</th>'+
			'<th style="text-align:center">服用药品及用量</th>'+
			'<th class="table-small" style="text-align:center"></th>'+
			'<th class="table-small" style="text-align:center">删除</th>'+
			'</tr>'+
			'</thead>'+
			'<tbody>'+
			'</tbody>'+
			'</table>'+
            '<div class="row col-lg-2 col-md-2 ">'+
            '<a  data-toggle="modal" href="#clinicDetails" onclick = "addClinic('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的临床信息</a>'+
            '</div>'+
			'</div>'+
			'</div>';

	    return str;
    }

    function GenerateTab3(index){
        var str_type = "";
        if(type==1){
            str_type = "outpatient-"+index;
        }
        else if(type == 2){
            str_type = "emergency-"+index;
        }
        else if(type == 3){
            str_type = "hospital-"+index;
        }
        var str = "";
        str = '<div class="tab-pane" id="'+str_type+'-tab3">'+
			  '<div class="row col-lg-10 col-md-10 col-md-offset-1">'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-ESStable">'+
			  '<caption class="mylabel">Epworth嗜睡量表（ESS）</caption>'+
			  '<thead>'+
			  '<tr>'+
			  '<th class="table-small" style="text-align:center">编号</th>'+
			  '<th class="table-small" style="text-align:center">填表日期</th>'+
			  '<th class="table-small" style="text-align:center">分数</th>'+
			  '<th class="table-small" style="text-align:center"></th>'+
			  '<th class="table-small" style="text-align:center">删除</th>'+
			  '</tr>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
              '<div class="row col-lg-2 col-md-2 ">'+
              '<a  data-toggle="modal" href="#ESSDetails" onclick = "addESS('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的ESS</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-MBQtable">'+
			  '<caption class="mylabel">改良柏林问卷（MBQ）</caption>'+
			  '<thead>'+
			  '<tr>'+
			  '<th class="table-small" style="text-align:center">编号</th>'+
			  '<th class="table-small" style="text-align:center">填表日期</th>'+
			  '<th class="table-small" style="text-align:center">BMI</th>'+
			  '<th class="table-small" style="text-align:center">编辑</th>'+
			  '<th class="table-small" style="text-align:center">删除</th>'+
			  '</tr>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
              '<div class="row col-lg-2 col-md-2 ">'+
              '<a  data-toggle="modal" href="#MBQDetails" onclick = "addMBQ('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的MBQ</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-SGRQtable">'+
			  '<caption class="mylabel">SGRQ生活质量问卷</caption>'+
			  '<thead>'+
			  '<tr>'+
			  '<th class="table-small" style="text-align:center">编号</th>'+
			  '<th class="table-small" style="text-align:center">填表日期</th>'+
			  '<th class="table-small" style="text-align:center">其他</th>'+
			  '<th class="table-small" style="text-align:center">编辑</th>'+
			  '<th class="table-small" style="text-align:center">删除</th>'+
			  '</tr>'+
			  '</thead>'+
			  '<tbody>'+
              '</tbody>'+
              '</table>'+
              '<div class="row col-lg-2 col-md-2 ">'+
              '<a  data-toggle="modal" href="#SGRQDetails" onclick = "addSGRQ('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的SGRQ</a>'+
              '</div>'+
              '</div>'+
              '</div>';

        return str;
    }

    function GenerateTab4(index){
        var str_type = "";
        if(type==1){
            str_type = "outpatient-"+index;
        }
        else if(type == 2){
            str_type = "emergency-"+index;
        }
        else if(type == 3){
            str_type = "hospital-"+index;
        }
        var str = "";
        str = '<div class="tab-pane" id="'+str_type+'-tab4">'+
			  '<div class="row col-lg-10 col-md-10 col-md-offset-1">'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-assittable">'+
			  '<caption class="mylabel">辅助检查</caption>'+
			  '<thead>'+
			  '<tr>'+
			  '<th class="table-small" style="text-align:center">编号</th>'+
			  '<th class="table-small" style="text-align:center">日期</th>'+
			  '<th class="table-small" style="text-align:center">类型</th>'+
			  '<th class="table-small" style="text-align:center">上传者</th>'+
			  '<th style="text-align:center">描述</th>'+
			  '<th class="table-small" style="text-align:center">查看</th>'+
			  '<th class="table-small" style="text-align:center">编辑</th>'+
			  '<th class="table-small" style="text-align:center">删除</th>'+
			  '</tr>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
			  '<div class="row col-lg-2 col-md-2 ">'+
              '<a  data-toggle="modal" href="#AccessoryExaminationDetails" onclick = "addAccessoryExamination('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的辅助检查</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-attachtable">'+
			  '<caption class="mylabel">附件</caption>'+
			  '<thead>'+
			  '<tr>'+
			  '<th class="table-small" style="text-align:center">编号</th>'+
			  '<th class="table-small" style="text-align:center">日期</th>'+
			  '<th class="table-small" style="text-align:center">上传者</th>'+
			  '<th style="text-align:center">描述</th>'+
			  '<th class="table-small" style="text-align:center">查看</th>'+
			  '<th class="table-small" style="text-align:center">编辑</th>'+
			  '<th class="table-small" style="text-align:center">删除</th>'+
			  '</tr>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
              '<div class="row col-lg-2 col-md-2 ">'+
              '<a  data-toggle="modal" href="#AttachInfoDetails" onclick = "addAttachInfo('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的附件</a>'+
              '</div>'+
			  '</div>'+
			  '</div>'+
			  '</div>'+
			  '</div>'+
			  '</div>'+
			  '</div>'+
			  '</div>';

	    return str;
    }

    function showOutpatient(){
        type = 1;
        $("#outpatient").empty();
        $.get("/static/json/AllPatient.json",{"P_id":patientId,"type":type},function(json_data){
             $.each(json_data,function (index,item){
                S_id.push(item);
                var descDiv = document.createElement('div');
                $("#outpatient").append(descDiv);
                descDiv.className = "row";
                descDiv.innerHTML = GenerateTab1(index)+GenerateTab2(index)+GenerateTab3(index)+GenerateTab4(index);
                });
                });
    }

    function showOutPatientServiceInfo(index){
        var name = "outpatient-"+index+"-table";
        var str =  "";
//        $("#"+name+" tbody").empty();
        $.getJSON('/static/json/patDetail.json',{"S_id":S_id[index],"type":type},function (json_data){
            $.each(json_data,function (index,item){
                str = '<tr>'+
                    '<td class="table-small">编号</td>'+
                    '<td class="table-small"></td>'+
                    '<td class="table-small">日期</td>'+
                    '<td class="table-small"></td>'+
                    '<td class="table-small">地点</td>'+
                    '<td class="table-small"></td>'+
                    '</tr>'+
                    '<tr>'+
                    '<td>症状有无</td>'+
                    '<td class="table-small"></td>'+
                    '<td class="table-small">就诊原因</td>'+
                    '<td></td>'+
                    '<td>症状为</td>'+
                    '<td></td>'+
                    '</tr>'+
                    '<tr>'+
                    '<td>是否继续住院治疗</td>'+
                    '<td></td>'+
                    '<td>查体是否正常</td>'+
                    '<td></td>'+
                    '<td>查体异常表现</td>'+
                    '<td></td>'+
                    '</tr>'+
                    '<tr>'+
                    '<td>是否为慢阻肺急性加重</td>'+
                    '<td></td>'+
                    '<td>加重与大气污染是否有关</td>'+
                    '<td></td>'+
                    '<td>若为其他疾病，类型为</td>'+
                    '<td></td>'+
                    '</tr>'+
                    '<tr>'+
                    '<td>是否使用静脉激素</td>'+
                    '<td></td>'+
                    '<td>是否使用抗生素</td>'+
                    '<td></td>'+
                    '<td>抗生素类型</td>'+
                    '<td></td>'+
                    '</tr>'+
                    '<tr>'+
                    '<td>是否调整治疗方案</td>'+
                    '<td></td>'+
                    '<td></td>'+
                    '<td></td>'+
                    '<td>调整药物为</td>'+
                    '<td></td>'+
                    '</tr>';
                $("#"+name+" tbody").html(str);
            });
        });
    }

    function editOutPatientServiceInfo(index){
        $.getJSON('/static/json/patDetail.json',{"S_id":S_id[index],"type":type},function (json_data){
            $.each(json_data,function (index,item){
                $("#OPS_id").val(item.OPS_id);
                $("#OI-date").val(item.date);
                $("#OI-place").val(item.place);
                $("#OutPatientServiceInfo input[name='OI-isStable'][value="+item.isStable+"]").attr("checked",true);
                $("#OutPatientServiceInfo input[name='OI-isSymptom'][value="+item.isSymptom+"]").attr("checked",true);
                $.each(item.symptom,function (p,q) {
                    $("#OutPatientServiceInfo input[name='OI-symptom'][value=q]").attr("checked",true);
                    });

                $("#OutPatientServiceInfo input[name='OI-physicalExam'][value="+item.physicalExam+"]").attr("checked",true);
                $("#OutPatientServiceInfo input[name='OI-acuteExac'][value="+item.acuteExac+"]").attr("checked",true);
                $("#OutPatientServiceInfo input[name='OI-useAbt'][value="+item.useAbt+"]").attr("checked",true);
                $("#OutPatientServiceInfo input[name='OI-useJmzs'][value="+item.useJmzs+"]").attr("checked",true);

                $("#OI-breathErr").val(item.breathErr);
                $("#OI-disease").val(item.disease);
                $("#OI-abtType").val(item.abtType);

                $("#OutPatientServiceInfo input[name='OI-hospital'][value="+item.hospital+"]").attr("checked",true);
                $("#OutPatientServiceInfo input[name='OI-airRelate'][value="+item.airRelate+"]").attr("checked",true);
                $("#OutPatientServiceInfo input[name='OI-treatMethod'][value="+item.treatMethod+"]").attr("checked",true);
                $("#OI-medicine").val(item.medicine);


            });
        });
    }


    function addOutPatientServiceInfo(){

    }

    function deleteOutPatientServiceInfo(){

    }

    function submitOutPatientServiceInfo(){

    }

    function showEmergency(index){
    }

    function showHospital(index){
    }

    function showClinic(index){
    }

    function showAttachment(index){
    }

    function showQuestionnaire(index){
    }



    /********************************begin*********************临床相关函数******************************begin******************************/

    //显示临床信息

    function showClinic(c_index) {
        $("#outpatient-"+c_index+"-clinictable tbody").empty();
        $.getJSON("/static/json/Clinic.json",{P_id:patientId,type:type,S_id:S_id[c_index]},function (json_data) {
            $.each(json_data,function (i,item) {
//                console.log(item.Cli_id);
//                console.log("#outpatient-"+c_index+"-clinictable tbody");

                $("#outpatient-"+c_index+"-clinictable tbody").append("<tr>" +
                        "<td>" +item.Cli_id+"</td>"+
                        "<td>" +item.data+"</td>"+
                        "<td>" +item.lung3+"</td>"+
                        "<td>" +item.detail+"</td>"+
                        "<td><a  data-toggle=\"modal\" onclick=\"editClinic("+item.Cli_id+")\" href=\"#clinicDetails\"><i class=\"fa fa-edit\"></i></td>"+
                        "<td><a  onclick=\"deleteClinic("+c_index+","+item.Cli_id+")\" ><i class=\"fa fa-times\"></i></td>"+
                    "</tr>");

            });
        });
    }

    //显示详情、编辑临床信息
    function  editClinic(Cli_id) {

        $.getJSON("/static/json/Clinic.json",{Cli_id:Cli_id},function (json_data) {
            console.log(Cli_id);
            console.log(json_data);
            var item = json_data[0];
            $("#Clinic input[name='Cli_id']").val(item.Cli_id);
            //解析dangerType
            analyzeCheckBox("dangerType",item.dangerType);
            $("#Clinic input[name='smoke1'][value='"+item.smoke1+"']").attr('checked',true);
            $("#Clinic input[name='smoke2'][value='"+item.smoke2+"']").attr('checked',true);
            $("#Clinic input[name='smoke3']").val(item.smoke3);
            $("#Clinic input[name='smoke4']").val(item.smoke4);
            $("#Clinic input[name='smoke5']").val(item.smoke5);
            $("#Clinic input[name='smoke6']").val(item.smoke6);
            $("#Clinic input[name='smoke7'][value='"+item.smoke7+"']").attr('checked',true);
            $("#Clinic input[name='smoke8'][value='"+item.smoke8+"']").attr('checked',true);
            $("#Clinic input[name='smoke9'][value='"+item.smoke9+"']").attr('checked',true);
            $("#Clinic input[name='smoke10']").val(item.smoke10);
            $("#Clinic input[name='powder1']").val(item.powder1);
            $("#Clinic input[name='powder2']").val(item.powder2);
            $("#Clinic input[name='biology1']").val(item.biology1);
            $("#Clinic input[name='biology2']").val(item.biology2);
            $("#Clinic input[name='hAir1']").val(item.hAir1);
            $("#Clinic input[name='hAir2']").val(item.hAir2);
            $("#Clinic input[name='gm1'][value='"+item.gm1+"']").attr('checked',true);
            $("#Clinic input[name='gm2']").val(item.gm2);
            $("#Clinic input[name='drink1'][value='"+item.drink1+"']").attr('checked',true);
            $("#Clinic input[name='drink2']").val(item.drink2);
            $("#Clinic input[name='drink4']").val(item.drink4);
            $("#Clinic input[name='drink3'][value='"+item.drink3+"']").attr('checked',true);
            $("#Clinic input[name='lung1']").val(item.lung1);
            $("#Clinic input[name='lung2']").val(item.lung2);
            $("#Clinic select[name='lung3'] option[value='"+item.lung3+"']").attr('selected',true);
            $("#Clinic input[name='lung4']").val(item.lung4);
            $("#Clinic input[name='lung5']").val(item.lung5);
            $("#Clinic input[name='lung6']").val(item.lung6);
            $("#Clinic input[name='lung7']").val(item.lung7);
            analyzeCheckBox("cure1",item.cure1);
            $("#Clinic input[name='cure2'][value='"+item.cure2+"']").attr('checked',true);
            analyzeCheckBox("cure3",item.cure3);
            $("#Clinic input[name='cure4'][value='"+item.cure4+"']").attr('checked',true);
            $("#Clinic input[name='cure5'][value='"+item.cure5+"']").attr('checked',true);
            $("#Clinic input[name='cure6']").val(item.cure6);
            $("#Clinic input[name='cure7'][value='"+item.cure7+"']").attr('checked',true);
            $("#Clinic input[name='cure8'][value='"+item.cure8+"']").attr('checked',true);
            $("#Clinic input[name='cure9']").val(item.cure9);
            $("#Clinic input[name='cure10'][value='"+item.cure10+"']").attr('checked',true);
            $("#Clinic input[name='cure11']").val(item.cure11);
            $("#Clinic input[name='cure12'][value='"+item.cure12+"']").attr('checked',true);
            $("#Clinic input[name='cure13']").val(item.cure13);
            $("#Clinic input[name='cure14'][value='"+item.cure14+"']").attr('checked',true);
            $("#Clinic input[name='cure15']").val(item.cure15);
            $("#Clinic input[name='cure16'][value='"+item.cure16+"']").attr('checked',true);
            $("#Clinic input[name='cure17']").val(item.cure17);
            $("#Clinic input[name='cure18'][value='"+item.cure18+"']").attr('checked',true);
            $("#Clinic input[name='cure19']").val(item.cure19);
            $("#Clinic input[name='cure20'][value='"+item.cure20+"']").attr('checked',true);
            $("#Clinic input[name='cure21']").val(item.cure21);
            $("#Clinic input[name='cure22']").val(item.cure22);
            $("#Clinic input[name='cure23']").val(item.cure23);
            $("#Clinic input[name='cure24']").val(item.cure24);
            $("#Clinic input[name='cure25']").val(item.cure25);
            analyzeCheckBox("cure26",item.cure26);
            analyzeCheckBox("comp1",item.comp1);
            analyzeCheckBox("comp2",item.comp2);
            analyzeCheckBox("comp3",item.comp3);
            analyzeCheckBox("comp4",item.comp4);
            analyzeCheckBox("comp5",item.comp5);
            analyzeCheckBox("comp6",item.comp6);
            $("#Clinic input[name='detail']").val(item.detail);

        });
    }


    //删除临床信息记录
    function deleteClinic(c_index,Cli_id) {
        if(confirm("确定删除吗？"))
        $.get("delete",{Cli_id:Cli_id},function (result) {
            if(result==0){
                alert("删除成功！")
                showClinic(c_index);
            }else {
                alert("删除失败！")
            }
        });
    }

    //添加临床信息记录
    function addClinic(c_index) {

        $("#Clinic :text").val("");
        $("#Clinic :radio").attr("checked",false);
        $("#Clinic :checkbox").attr("checked",false);
    }

    //提交临床信息记录

    function submitClinic(c_index) {
        if (confirm("确定提交吗？")){
            $.post("",$("#Clinic").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[c_index],function (result) {
                if(result==0){
                    alert("提交成功！")
                    showClinic(c_index);
                }else {
                    alert("提交失败！")
                }
            });
        }
    }

    /************************end*****************************临床相关函数********************************end****************************/


    function showESS(E_index) {
        // if(type==1){
        //     temp="outpatient";
        // }
        // else if(type==2){
        //     temp="emergency";
        // }
        // else if(type==3){
        //     temp="hospital"
        // }
        $.getJSON('/static/ESSshow.json',{P_id:PatientId,type:type,S_id:S_id[E_index],kind:1},function(json_data){
            $.each(json_data,function (index,item) {
                $("#"+temp+"-"+E_index+"-"+"ESStable").append(
                    "<tr>"+
                        "<td>"+item.ESS_id+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td>"+item.score+"</td>"+
                        '<td><a  data-toggle="modal" href="#ESSDetails" onclick="editESS('+item.ESS_id+')"></td>'+
                    "</tr>"
                )
            })
        })
    }
    function editESS(ESS_id) {
        $.getJSON('/static/ESS.json',{ESS_id:ESS_id},function (json_data) {
            $.each(json_data,function (index,item) {
                $("#ESS input[name=ess1][value='"+item.ess1+"']").attr('checked',true);
                $("#ESS input[name=ess2][value='"+item.ess2+"']").attr('checked',true);
                $("#ESS input[name=ess3][value='"+item.ess3+"']").attr('checked',true);
                $("#ESS input[name=ess4][value='"+item.ess4+"']").attr('checked',true);
                $("#ESS input[name=ess5][value='"+item.ess5+"']").attr('checked',true);
                $("#ESS input[name=ess6][value='"+item.ess6+"']").attr('checked',true);
                $("#ESS input[name=ess7][value='"+item.ess7+"']").attr('checked',true);
                $("#ESS input[name=ess8][value='"+item.ess8+"']").attr('checked',true);
                $("#ESS").find("input[name=score]").val(item.score);
                // $("score").val(item.score);
            })
        })
    }
    function addESS(){
        $("#ESS [name='ess1']").attr('checked',false);
        $("#ESS [name='ess2']").attr('checked',false);
        $("#ESS [name='ess3']").attr('checked',false);
        $("#ESS [name='ess4']").attr('checked',false);
        $("#ESS [name='ess5']").attr('checked',false);
        $("#ESS [name='ess6']").attr('checked',false);
        $("#ESS [name='ess7']").attr('checked',false);
        $("#ESS [name='ess8']").attr('checked',false);
        $("#ESS").find("input[name=score]").val("");
    }
    function deleateESS(ESS_id) {
        if(confirm("确定删除")==1) {
            $.get('', {ESS_id: ESS_id}, function (result) {
                if(result==0)
                    alert("删除成功");
                else if(result==-1)
                    alert("删除失败");
            })
        }
    }
    function submitESS(ESS_id,P_id,type,source) {
        if(confirm("确定提交")==1){
            $.post('',$("#ESSDetails").serialize()+"&ESS_id="+ESS_id+"&P_id="+P_id+"&type="+type+"&source="+source,function (result) {
                if(result==0)
                    alert("提交成功");
                else if(result==-1)
                    alert("提交失败");
            })
        }
    }
    function showMBQ(M_index) {
        // if(type==1){
        //     temp="outpatient";
        // }
        // else if(type==2){
        //     temp="emergency";
        // }
        // else if(type==3){
        //     temp="hospital"
        // }
        $.getJSON('',{P_id:PatientId,type:type,S_id:S_id[M_index],kind:2},function(json_data){
            $.each(json_data,function (index,item) {
                $("#"+temp+"-"+M_index+"-"+"MBQtable").append(
                    "<tr>"+
                        "<td>"+item.MBQ_id+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td>"+item.score+"</td>"+
                        '<td><a  data-toggle="modal" href="#MBQDetails" onclick="editMBQ('+item.MBQ_id+')"></td>'+
                    "</tr>"
                )
            })
        })
    }
    function editMBQ(MBQ_id) {
        $.getJSON('/static/MBQ.json',{MBQ_id:MBQ_id},function (json_data) {
            $.each(json_data,function (index,item) {
                $("#MBQ input[name=q1][value='"+item.q1+"']").attr('checked',true);
                $("#MBQ input[name=q2][value='"+item.q2+"']").attr('checked',true);
                $("#MBQ input[name=q3][value='"+item.q3+"']").attr('checked',true);
                $("#MBQ input[name=q4][value='"+item.q4+"']").attr('checked',true);
                $("#MBQ input[name=q5][value='"+item.q5+"']").attr('checked',true);
                $("#MBQ input[name=q6][value='"+item.q6+"']").attr('checked',true);
                $("#MBQ input[name=q7][value='"+item.q7+"']").attr('checked',true);
                $("#MBQ input[name=q8][value='"+item.q8+"']").attr('checked',true);
                $("#MBQ input[name=q9][value='"+item.q9+"']").attr('checked',true);
                $("#MBQ input[name=q10][value='"+item.q10+"']").attr('checked',true);
                $("#MBQ").find("input[name=BMI]").val(item.BMI);
            })
        })
    }
    function addMBQ(){
        $("#MBQ [name='q1']").attr('checked',false);
        $("#MBQ [name='q2']").attr('checked',false);
        $("#MBQ [name='q3']").attr('checked',false);
        $("#MBQ [name='q4']").attr('checked',false);
        $("#MBQ [name='q5']").attr('checked',false);
        $("#MBQ [name='q6']").attr('checked',false);
        $("#MBQ [name='q7']").attr('checked',false);
        $("#MBQ [name='q8']").attr('checked',false);
        $("#MBQ [name='q9']").attr('checked',false);
        $("#MBQ [name='q10']").attr('checked',false);
        $("#MBQ").find("input[name=BMI]").val("");
    }
    function deleateMBQ(MBQ_id) {
        if(confirm("确定删除")==1) {
            $.get('', {MBQ_id: MBQ_id}, function (result) {
                if(result==0)
                    alert("删除成功");
                else if(result==-1)
                    alert("删除失败");
            })
        }
    }
    function submitMBQ(MBQ_id,P_id,type,source) {
        if(confirm("确定提交")==1){
            $.post('',$("#MBQDetails").serialize()+"&MBQ_id="+MBQ_id+"&P_id="+P_id+"&type="+type+"&source="+source,function (result) {
                if(result==0)
                    alert("提交成功");
                else if(result==-1)
                    alert("提交失败");
            })
        }
    }
    function showSGRQ(M_index) {
        // if(type==1){
        //     temp="outpatient";
        // }
        // else if(type==2){
        //     temp="emergency";
        // }
        // else if(type==3){
        //     temp="hospital"
        // }
        $.getJSON('',{P_id:PatientId,type:type,S_id:S_id[S_index],kind:3},function(json_data){
            $.each(json_data,function (index,item) {
                $("#"+temp+"-"+S_index+"-"+"SGRQtable").append(
                    "<tr>"+
                        "<td>"+item.SGRQ_id+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td>"+item.score+"</td>"+
                        '<td><a  data-toggle="modal" href="#SGRQDetails" onclick="editSGRQ('+item.SGRQ_id+')"></td>'+
                    "</tr>"
                )
            })
        })
    }
    function editSGRQ(SGRQ_id) {
        $.getJSON('/static/SGRQ.json',{SGRQ_id:SGRQ_id},function (json_data) {
            $.each(json_data,function (index,item) {
                $("#SGRQ input[name=H1][value='"+item.H1+"']").attr('checked',true);
                $("#SGRQ input[name=H2][value='"+item.H2+"']").attr('checked',true);
                $("#SGRQ input[name=H3][value='"+item.H3+"']").attr('checked',true);
                $("#SGRQ input[name=H4][value='"+item.H4+"']").attr('checked',true);
                $("#SGRQ input[name=H5][value='"+item.H5+"']").attr('checked',true);
                $("#SGRQ input[name=H6][value='"+item.H6+"']").attr('checked',true);
                $("#SGRQ input[name=H7][value='"+item.H7+"']").attr('checked',true);
                $("#SGRQ input[name=H8][value='"+item.H8+"']").attr('checked',true);
                $("#SGRQ input[name=H9][value='"+item.H9+"']").attr('checked',true);
                $("#SGRQ input[name=H10][value='"+item.H10+"']").attr('checked',true);
                analyzeCheckBox("H11",item.H11);
                analyzeCheckBox("H12",item.H12);
                analyzeCheckBox("H13",item.H13);
                $("#SGRQ input[name=H14][value='"+item.H14+"']").attr('checked',true);
                analyzeCheckBox("H15",item.H15);
                analyzeCheckBox("H16",item.H16);
                analyzeCheckBox("H17",item.H17);
                $("#SGRQ input[name=H18][value='"+item.H18+"']").attr('checked',true);
                $("#SGRQ textarea[name=actEFF]").text(item.actEFF);
            })
        })
    }
    function addSGRQ(){
        $("#SGRQ [name='H1']").attr('checked',false);
        $("#SGRQ [name='H2']").attr('checked',false);
        $("#SGRQ [name='H3']").attr('checked',false);
        $("#SGRQ [name='H4']").attr('checked',false);
        $("#SGRQ [name='H5']").attr('checked',false);
        $("#SGRQ [name='H6']").attr('checked',false);
        $("#SGRQ [name='H7']").attr('checked',false);
        $("#SGRQ [name='H8']").attr('checked',false);
        $("#SGRQ [name='H9']").attr('checked',false);
        $("#SGRQ [name='H10']").attr('checked',false);
        $("#SGRQ [name='H11']").attr('checked',false);
        $("#SGRQ [name='H12']").attr('checked',false);
        $("#SGRQ [name='H13']").attr('checked',false);
        $("#SGRQ [name='H14']").attr('checked',false);
        $("#SGRQ [name='H15']").attr('checked',false);
        $("#SGRQ [name='H16']").attr('checked',false);
        $("#SGRQ [name='H17']").attr('checked',false);
        $("#SGRQ [name='H18']").attr('checked',false);
        $("#SGRQ textarea[name=actEFF]").text("");
    }
    function deleateSGRQ(SGRQ_id) {
        if(confirm("确定删除")==1) {
            $.get('', {SGRQ_id: SGRQ_id}, function (result) {
                if(result==0)
                    alert("删除成功");
                else if(result==-1)
                    alert("删除失败");
            })
        }
    }
    function submitSGRQ(SGRQ_id,P_id,type,source) {
        if(confirm("确定提交")==1){
            $.post('',$("#SGRQDetails").serialize()+"&SGRQ_id="+SGRS_id+"&P_id="+P_id+"&type="+type+"&source="+source,function (result) {
                if(result==0)
                    alert("提交成功");
                else if(result==-1)
                    alert("提交失败");
            })
        }
    }
    function analyzeCheckBox(name,item) {
        for (var i = 0;i<item.length;i++){
                $("#SGRQ input[name='"+name+"'][value='"+item[i]+"']").attr('checked',true);
        }
    }


    function analyzeCheckBox(name,item) {
        for (var i = 0;i<item.length;i++){
                $("#Clinic input[name='"+name+"'][value='"+item[i]+"']").attr("checked",true);
        }
    }

    function showAE(AE_index){
        if(type==1){
            temp="outpatient";
        }
        else if(type==2){
            temp="emergency";
        }
        else if(type==3){
            temp="hospital"
        }
        $.getJSON('/static/AE.json',{P_id:PatientId,type:type,S_id:S_id[AE_index]},function(json_data){
            $.each(json_data,function (index,item) {
                $("#"+temp+"-"+E_index+"-"+"ESStable").append(
                    "<tr>"+
                        "<td>"+item.AE_id+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td>"+item.AE_type+"</td>"+
                        "<td>"+item.D_id+"</td>"+
                        "<td>"+item.description+"</td>"+
                        '<td><a  data-toggle="modal" href="#AccessoryExaminationDetails" onclick="editAE('+item.AE_id+')"></td>'+
                    "</tr>"
                )
            })
        })
    }
    
    function editAE(AE_id) {
        // ,{AE_id:AE_id}
        $.getJSON('/static/AE.json',function (json_data) {
            $.each(json_data,function (index,item) {
                $("#AccessoryExamination [name='AE_type'][value='"+item.AE_type+"']").attr('checked',true);
                $("#AccessoryExamination [name='AE_date']").val(item.date);
                $("#AccessoryExamination textarea[name=AE_description]").text(item.AE_description);
                // $("score").val(item.score);
            })
        })
    }
    function addAE(){
        $("#AccessoryExamination [name='AE_type']").attr('checked',false);
        $("#AccessoryExamination [name='AE_date']").val("");
        $("#AccessoryExamination textarea[name=AE_description]").text("");
    }

    function deleateAE() {
        if(confirm("确定删除")==1) {
            $.get('', {AE_id: AE_id}, function (result) {
                if(result==0)
                    alert("删除成功");
                else if(result==-1)
                    alert("删除失败");
            })
        }
    }
    function submitAE() {
        if(confirm("确定提交")==1){
            $.post('',$("#AccessoryExaminationDetails").serialize()+"&AE_id="+AE_id+"&P_id="+P_id+"&type="+type+"&source="+source,function (result) {
                if(result==0)
                    alert("提交成功");
                else if(result==-1)
                    alert("提交失败");
            })
        }
    }

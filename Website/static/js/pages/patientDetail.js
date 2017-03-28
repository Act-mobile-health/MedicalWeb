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
    var index = 0;
$(document).ready(function () {


    PatientDetailTable();
    showRelationInfo();
//    $("#refresh").click(function () {
//        PatientDetailTable();
//    });

    $("#submitPatientInfobt").click(function () {
        submitChangePatient();
    })

    $("#submitRelationInfobt").click(function () {
       submitRelationInfo();
    });

    $("#submitClinicbt").click(function () {
        submitClinic();
    })

    $("#submitESSbt").click(function () {
        submitQuestionnaire("0");
    })

    $("#submitMBQbt").click(function () {
       submitQuestionnaire("1");
    });

    $("#submitSGRQbt").click(function () {
        submitQuestionnaire("2");
    })

    $("#submitAccessoryExaminationbt").click(function () {
        submitAorAE("0");
    })

    $("#submitAttachInfobt").click(function () {
        submitAorAE("1");
    })

    $("#submitOutPatientServiceInfobt").click(function () {
       submitOutPatientServiceInfo();
    });

    $("#submitEmergCallInfobt").click(function () {
        submitEmergCallInfo();
    })

    $("#submitInHospitalInfobt").click(function () {
        submitInHospitalInfobt();
    })


})



    //查看患者个人信息
    function PatientDetailTable() {
        $.getJSON('/i16/',{P_id:patientId},function (json_data) {
            item = json_data;
            patientinfo.push(item);
            $("#P_id").html(item.P_id);
            $("#name").html(item.name);
            if (item.sign=="1"){
                $("#sign").html("是");
            }
            else if(item.sign=="2"){
                $("#sign").html("否");
            }
            $("#birthday").html(item.birthday);
            $("#age").html(item.age);
            $("#nation").html(item.nation);
            $("#height").html(item.height);
            $("#weight").html(item.weight);
            $("#education").html(item.education);
            $("#registerTime").html(item.registerTime);
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
            if (item.payment=="1"){
                $("#payment").html("城镇居民基本保险");
            }
            else if(item.payment=="2"){
                $("#payment").html("城镇职工基本保险");
            }
            else if(item.payment=="3"){
                $("#payment").html("新型农村合作医疗");
            }
            else if(item.payment=="4"){
                $("#payment").html("商业医疗保险");
            }
            else if(item.payment=="5"){
                $("#payment").html("全公费");
            }
            else if(item.payment=="6"){
                $("#payment").html("全自费");
            }
            else if(item.payment=="7"){
                $("#payment").html("其他");
            }
            if(item.sex=="1"){
                $("#sex").html("男");
            }
            else if(item.sex=="2"){
                $("#sex").html("女");
            }
        });
    }

    function submitChangePatient() {
        if(confirm("确定提交？")==1){
            $.post("/i17/",$("#PatientInfo").serialize(),function (data) {
                var result = JSON.parse(data).result;
                if(result=="0")
                    alert("修改成功");
                else if(result=="-1")
                    alert("修改失败");
            });
        }
    }

    function appendPatientDetail() {
                item = patientinfo[0];

                $("#PatientInfo input[name='P_id']").val(item.P_id);
                $("#PatientInfo input[name='name']").val(item.name);
                $("#PatientInfo input[name='sign'][value='"+item.sign+"']").attr('checked',true);

                $("#PatientInfo input[name='age']").val(item.age);
                $("#PatientInfo input[name='nation']").val(item.nation);
                $("#PatientInfo input[name='height']").val(item.height);
                $("#PatientInfo input[name='weight']").val(item.weight);
                $("#PatientInfo input[name='education']").val(item.education);
                $("#PatientInfo input[name='career']").val(item.career);
                $("#PatientInfo input[name='marriage']").val(item.marriage);
                $("#PatientInfo input[name='registerTime']").val(item.registerTime);
                $("#PatientInfo input[name='birthday']").val(item.birthday);
                $("#PatientInfo input[name='homeAddr']").val(item.homeAddr);
                $("#PatientInfo input[name='birthAddr']").val(item.birthAddr);
                $("#PatientInfo input[name='activityAddr1']").val(item.activityAddr1);
                $("#PatientInfo input[name='activityAddr2']").val(item.activityAddr2);
                $("#PatientInfo input[name='actionAddr']").val(item.actionAddr);
                $("#PatientInfo input[name='diastolicPressure']").val(item.diastolicPressure);
                $("#PatientInfo input[name='systolicPressure']").val(item.systolicPressure);
                $("#PatientInfo input[name='neckCircu']").val(item.neckCircu);
                $("#PatientInfo input[name='telephone']").val(item.telephone);
                $("#PatientInfo input[name='cellphone']").val(item.cellphone);
                $("#PatientInfo input[name='partnerPhone']").val(item.partnerPhone);

                $("#PatientInfo input[name='payment'][value='"+item.payment+"']").attr('checked',true);
                $("#PatientInfo input[name='sex'][value='"+item.sex+"']").attr('checked',true);
    }

    //查看患者家属信息
    function showRelationInfo(){
        $("#RelationInfoTable tbody").empty();
        $.getJSON('/i18/',{"P_id":patientId},function (json_data){
            $.each(json_data,function (index,item){
                data.push(item);
                $("#RelationInfoTable tbody").append(
                    "<tr>"+
                        "'<td>"+item.R_id+"</td>'"+
                        "'<td>"+item.name+"</td>'"+
                        "'<td>"+item.sex+"</td>'"+
                        "'<td>"+item.telephone+"</td>'"+
                        "'<td>"+item.cellphone+"</td>'"+
                        "'<td>"+item.weChat+"</td>'"+
                        "'<td>"+item.mail+"</td>'"+
                        "'<td>"+item.homeAddr+"</td>'"+
                        '<td><a  data-toggle="modal" onclick = "editRelationInfo('+ index +')" href="#RelationInfoDetails"><i class="fa fa-edit"></i></a></td>'+
                        '<td><button onclick = "deleteRelationInfo('+item.R_id+')"></button></td>'+
                    "</tr>");
            });
        });
    }
    //修改病人家属信息

    function editRelationInfo(index){

        $("#RelationInfo input[name='R_id']").val(data[index].R_id);
        $("#RelationInfo input[name='weChat']").val(data[index].weChat);
        $("#RelationInfo input[name='name']").val(data[index].name);
        $("#RelationInfo input[name='telephone']").val(data[index].telephone);
        $("#RelationInfo input[name='cellphone']").val(data[index].cellphone);
        $("#RelationInfo input[name='mail']").val(data[index].mail);
        $("#RelationInfo input[name='homeAddr']").val(data[index].homeAddr);
        $("#RelationInfo input[name='sex'][value='"+data[index].sex+"']").attr('checked',true);
    }

    //删除患者家属信息
    function deleteRelationInfo(id) {
    if(confirm("确定删除？")==1){
        $.get("/i20/",{R_id:id},function (data) {
            var result = JSON.parse(data).result;
            console.log(result);
            if(result=="0")
                alert("删除成功");
            else if(result=="-1")
                alert("删除失败");
        });
        showRelationInfo();
    }
    }

    //添加患者家属信息
    function addRelationInfo() {

        $("#RelationInfo :text").val("");
        $("#RelationInfo :radio").attr("checked",false);
    }
    function submitRelationInfo() {
        if (confirm("确定提交吗？")){
            $.post("/i19/",$("#RelationInfo").serialize()+"&P_id="+patientId,function (data) {
                var result = JSON.parse(data).result;
                if(result=="0")
                    alert("添加成功");
                else if(result=="-1")
                    alert("添加失败");
            });
            showRelationInfo();
        }
    }


    function GenerateTab1(index){
    var str_edit = "";
    var str_type = "";
    if(type==0){
        str_edit = "OutPatientServiceInfoDetails";
        str_type = "outpatient-"+index;
    }
    else if(type == 1){
        str_edit = "EmergCallInfoDetails";
        str_type = "emergency-"+index;
    }
    else if(type == 2){
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
				'<a href="#" onclick = "deleteOutPatientServiceInfo('+index+')" class="btn-close"><i class="fa fa-times"></i></a>'+
				'</div>'+
				'</div>'+
				'<div class="panel-body">'+
				'<div id="'+str_type+'-tab'+'" class="wizard-type1">'+
				'<ul class="steps nav nav-pills">'+
				'<li><a href="#'+str_type+'-tab1" onclick = "showOutPatientServiceInfo('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-star"></i></span> 详细信息</a></li>'+
				'<li><a href="#'+str_type+'-tab2" onclick = "showClinic('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-credit-card"></i></span> 临床信息</a></li>'+
				'<li><a href="#'+str_type+'-tab3" onclick = "showQuestionnaire('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-building"></i></span> 问卷信息</a></li>'+
				'<li><a href="#'+str_type+'-tab4" onclick = "showAandAE('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-check"></i></span> 辅助检查和附件</a></li>'+
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
    if(type== 0){
        str_type = "outpatient-"+index;
    }
    else if(type == 1){
        str_type = "emergency-"+index;
    }
    else if(type == 2){
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
            '<a  data-toggle="modal" href="#ClinicDetails" onclick = "addClinic('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的临床信息</a>'+
            '</div>'+
			'</div>'+
			'</div>';

	    return str;
    }

    function GenerateTab3(index){
        var str_type = "";
        if(type==0){
            str_type = "outpatient-"+index;
        }
        else if(type == 1){
            str_type = "emergency-"+index;
        }
        else if(type ==2){
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
              '<a  data-toggle="modal" href="#ESSDetails" onclick = "addQuestionnaire('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的ESS</a>'+
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
              '<a  data-toggle="modal" href="#MBQDetails" onclick = "addQuestionnaire('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的MBQ</a>'+
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
              '<a  data-toggle="modal" href="#SGRQDetails" onclick = "addQuestionnaire('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的SGRQ</a>'+
              '</div>'+
              '</div>'+
              '</div>';

        return str;
    }

    function GenerateTab4(index){
        var str_type = "";
        if(type==0){
            str_type = "outpatient-"+index;
        }
        else if(type == 1){
            str_type = "emergency-"+index;
        }
        else if(type == 2){
            str_type = "hospital-"+index;
        }
        var str = "";
        str = '<div class="tab-pane" id="'+str_type+'-tab4">'+
			  '<div class="row col-lg-10 col-md-10 col-md-offset-1">'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-AEtable">'+
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
              '<a  data-toggle="modal" href="#AccessoryExaminationDetails" onclick = "addAorAE('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的辅助检查</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-Atable">'+
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
              '<a  data-toggle="modal" href="#AttachInfoDetails" onclick = "addAorAE('+index+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的附件</a>'+
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
        type = 0;
        S_id = [];
        $("#outpatient").empty();
        $.getJSON("/i21/",{"P_id":patientId,"type":type},function(json_data){
             $.each(json_data,function (index,item){
             console.log(item.OPS_id);
                S_id.push(item.OPS_id);
                var descDiv = document.createElement('div');
                $("#outpatient").append(descDiv);
                descDiv.className = "row";
                descDiv.innerHTML = GenerateTab1(index)+GenerateTab2(index)+GenerateTab3(index)+GenerateTab4(index);
                });
                });
    }

    function analyseSymptom(input){
        if(input == "1")
            return "是";
        else
            return "否";
    }

    function showOutPatientServiceInfo(index){
        var name = "outpatient-"+index+"-table";
        var str =  "";
        $.getJSON('/i23/',{"S_id":S_id[index],"type":type},function (json_data){
            item = json_data;
            console.log(S_id);
            console.log(item);
            console.log(index);
            var isStable = "";
            var isSymptom = analyseSymptom(item.isSymptom);
            var symptom = "";
            for (var i = 0;i<item.symptom.length;i++){
                if(item.symptom[i]=="1")
                    symptom += "咳嗽加重；";
                if(item.symptom[i]=="2")
                    symptom += "咳浓痰并痰量增加；";
                if(item.symptom[i]=="3")
                    symptom += "呼吸困难加重；";

            }
            if(item.isStable=="1")
                isStable = "稳定期随访";
            else if(item.isStable=="2")
                isStable = "急性期就诊";

            var physicalExam = analyseSymptom(item.physicalExam);
            var acuteExac = analyseSymptom(item.acuteExac);
            var useAbt = analyseSymptom(item.useAbt);
            var useJmzs = analyseSymptom(item.useJmzs);
            var hospital =analyseSymptom(item.hospital);
            var airRelate =analyseSymptom(item.airRelate);
            var treatMethod = analyseSymptom(item.treatMethod);
            str = '<tr>'+
                '<td class="table-small">编号</td>'+
                '<td class="table-small">'+item.OPS_id+'</td>'+
                '<td class="table-small">日期</td>'+
                '<td class="table-small">'+item.date+'</td>'+
                '<td class="table-small">地点</td>'+
                '<td class="table-small">'+item.place+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td class="table-small">就诊原因</td>'+
                '<td>'+isStable+'</td>'+
                '<td>症状有无</td>'+
                '<td class="table-small">'+isSymptom+'</td>'+
                '<td>症状为</td>'+
                '<td>'+symptom+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>是否继续住院治疗</td>'+
                '<td>'+hospital+'</td>'+
                '<td>查体是否正常</td>'+
                '<td>'+physicalExam+'</td>'+
                '<td>查体异常表现</td>'+
                '<td>'+item.breathErr+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>是否为慢阻肺急性加重</td>'+
                '<td>'+acuteExac+'</td>'+
                '<td>加重与大气污染是否有关</td>'+
                '<td>'+airRelate+'</td>'+
                '<td>若为其他疾病，类型为</td>'+
                '<td>'+item.disease+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>是否使用静脉激素</td>'+
                '<td>'+useJmzs+'</td>'+
                '<td>是否使用抗生素</td>'+
                '<td>'+useAbt+'</td>'+
                '<td>抗生素类型</td>'+
                '<td>'+item.abtType+'</td>'+
                '</tr>'+
                '<tr>'+
                '<td>是否调整治疗方案</td>'+
                '<td>'+treatMethod+'</td>'+
                '<td></td>'+
                '<td></td>'+
                '<td>调整药物为</td>'+
                '<td>'+item.medicine+'</td>'+
                '</tr>';
            $("#"+name+" tbody").html(str);
        });
    }

    function editOutPatientServiceInfo(index){
        $.getJSON('/i23/',{"S_id":S_id[index],"type":type},function (json_data){
            var item = json_data;
            $("#OutPatientServiceInfo input[name='id']").val(item.OPS_id);
            $("#OutPatientServiceInfo input[name='date']").val(item.date);
            $("#OutPatientServiceInfo input[name='place']").val(item.place);

            $("#OutPatientServiceInfo input[name='isStable'][value='"+item.isStable+"']").attr('checked',true);
            $("#OutPatientServiceInfo input[name='isSymptom'][value='"+item.isSymptom+"']").attr("checked",true);
            console.log(item);
            analyzeCheckBox("OutPatientServiceInfo","symptom",item.symptom);

            $("#OutPatientServiceInfo input[name='physicalExam'][value='"+item.physicalExam+"']").attr("checked",true);
            $("#OutPatientServiceInfo input[name='acuteExac'][value='"+item.acuteExac+"']").attr("checked",true);
            $("#OutPatientServiceInfo input[name='useAbt'][value='"+item.useAbt+"']").attr("checked",true);
            $("#OutPatientServiceInfo input[name='useJmzs'][value='"+item.useJmzs+"']").attr("checked",true);

            $("#OutPatientServiceInfo textarea[name='breathErr']").val(item.breathErr);
            $("#OutPatientServiceInfo input[name='disease']").val(item.disease);
            $("#OutPatientServiceInfo input[name='abtType']").val(item.abtType);

            $("#OutPatientServiceInfo input[name='hospital'][value='"+item.hospital+"']").attr("checked",true);
            $("#OutPatientServiceInfo input[name='airRelate'][value='"+item.airRelate+"']").attr("checked",true);
            $("#OutPatientServiceInfo input[name='treatMethod'][value='"+item.treatMethod+"']").attr("checked",true);

            $("#OutPatientServiceInfo textarea[name='medicine']").val(item.medicine);
        });
    }


    function addOutPatientServiceInfo(){

        $("#OutPatientServiceInfo :text").val("");
//        $("#OutPatientServiceInfo :radio").attr("checked",false);
//        $("#OutPatientServiceInfo :checkbox").attr("checked",false);
    }

    function deleteOutPatientServiceInfo(index){
        if(confirm("确定删除吗？"))
        $.get("/i24/",{"S_id":S_id[index],"type":type},function (data) {
            var result = JSON.parse(data).result;
            if(result=="0"){
                alert("删除成功！")
            }else {
                alert("删除失败！")
            }
        });
        showOutpatient();
    }

    function submitOutPatientServiceInfo(){
        if (confirm("确定提交吗？")){
        console.log($("#OutPatientServiceInfo").serialize());
            $.post("/i22/",$("#OutPatientServiceInfo").serialize()+"&P_id="+patientId+"&type="+type,function (data) {
                var result = JSON.parse(data).result;
                if(result=="0"){
                    alert("提交成功！")
                }else {
                    alert("提交失败！")
                }
            });
            showOutpatient();
        }
    }


    function showEmergency(index){
    }

    function showHospital(index){
    }


    /********************************begin*********************临床相关函数******************************begin******************************/

    //显示临床信息

    function showClinic(c_index) {
        $("#outpatient-"+c_index+"-clinictable tbody").empty();
        $.getJSON("/i25/",{"type":type,"S_id":S_id[c_index],kind:"0"},function (json_data) {
            $.each(json_data,function (i,item) {

                $("#outpatient-"+c_index+"-clinictable tbody").append("<tr>" +
                        "<td>" +item.Cli_id+"</td>"+
                        "<td>" +item.date+"</td>"+
                        "<td>" +item.lung3+"</td>"+
                        "<td>" +item.detail+"</td>"+
                        "<td><a  data-toggle=\"modal\" onclick=\"editClinic("+item.Cli_id+")\" href=\"#ClinicDetails\"><i class=\"fa fa-edit\"></i></td>"+
                        "<td><a  onclick=\"deleteClinic("+c_index+","+item.Cli_id+")\" ><i class=\"fa fa-times\"></i></td>"+
                    "</tr>");

            });
        });
    }

    //显示详情、编辑临床信息
    function  editClinic(Cli_id) {

        $.getJSON("/i27/",{"Cli_id":Cli_id},function (json_data) {

            var item = json_data;
            console.log(item);
            $("#Clinic input[name='Cli_id']").val(item.Cli_id);
            //解析dangerType
            analyzeCheckBox("Clinic","dangerType",item.dangerType);
            $("#Clinic input[name='smoke1'][value='"+item.smoke1+"']").attr('checked',true);
            $("#Clinic input[name='smoke2']").val(item.smoke2);
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
            $("#Clinic input[name='powder3']").val(item.powder3);
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
            analyzeCheckBox("Clinic","cure1",item.cure1);
            $("#Clinic input[name='cure2'][value='"+item.cure2+"']").attr('checked',true);
            analyzeCheckBox("Clinic","cure3",item.cure3);
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
            $("#Clinic input[name='cure26'][value='"+item.cure26+"']").attr('checked',true);

            analyzeCheckBox("Clinic","comp1",item.comp1);
            analyzeCheckBox("Clinic","comp2",item.comp2);
            analyzeCheckBox("Clinic","comp3",item.comp3);
            analyzeCheckBox("Clinic","comp4",item.comp4);
            analyzeCheckBox("Clinic","comp5",item.comp5);
            analyzeCheckBox("Clinic","comp6",item.comp6);
            console.log(item.detail);
            $("#Clinic textarea[name='detail']").val(item.detail);

        });
    }


    //删除临床信息记录
    function deleteClinic(c_index,Cli_id) {
        if(confirm("确定删除吗？"))
        $.get("/i28/",{"Cli_id":Cli_id},function (data) {
            var result = JSON.parse(data).result;
            if(result=="0"){
                alert("删除成功！")
                showClinic(c_index);
            }else {
                alert("删除失败！")
            }
        });
    }

    //添加临床信息记录
    function addClinic(c_index) {
        index = c_index;
        $("#Clinic :text").val("");
//        $("#Clinic :radio").attr("checked",false);
        $("#Clinic :checkbox").attr("checked",false);
    }

    //提交临床信息记录

    function submitClinic() {
        if (confirm("确定提交吗？")){
            $.post("/i26/",$("#Clinic").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index],function (data) {
                var result = JSON.parse(data).result;
                if(result=="0"){
                    alert("提交成功！")
                }else {
                    alert("提交失败！")
                }
            });
            showClinic(c_index);
        }
    }

    /************************end*****************************临床相关函数********************************end****************************/


    function showQuestionnaire(index) {
         if(type==0){
             temp="outpatient";
         }
         else if(type==1){
             temp="emergency";
         }
         else if(type==2){
             temp="hospital"
         }
         $("#"+temp+"-"+index+"-ESStable tbody").empty();
         $("#"+temp+"-"+index+"-MBQtable tbody").empty();
         $("#"+temp+"-"+index+"-SGRQtable tbody").empty();
        $.getJSON('/i25/',{"P_id":patientId,"type":type,"S_id":S_id[index],"kind":"1"},function(json_data){
            $.each(json_data,function (i,item) {
                if(item.kind == "0"){
                    $("#"+temp+"-"+index+"-"+"ESStable").append(
                        "<tr>"+
                            "<td>"+item.ESS_id+"</td>"+
                            "<td>"+item.date+"</td>"+
                            "<td>"+item.score+"</td>"+
                            '<td><a data-toggle="modal" href="#ESSDetails" onclick="editESS('+item.ESS_id+')"><i class=\"fa fa-edit\"></i></td>'+
                            '<td><a onclick="deleteQuestionnaire('+item.ESS_id+',0'+')"><i class=\"fa fa-times\"></i></td>'+
                        "</tr>");
                }
                else if(item.kind == "1"){
                    $("#"+temp+"-"+index+"-"+"MBQtable").append(
                        "<tr>"+
                            "<td>"+item.MBQ_id+"</td>"+
                            "<td>"+item.date+"</td>"+
                            "<td>"+item.BMI+"</td>"+
                            '<td><a data-toggle="modal" href="#MBQDetails" onclick="editMBQ('+item.MBQ_id+')"><i class=\"fa fa-edit\"></i></td>'+
                            '<td><a onclick="deleteQuestionnaire('+item.MBQ_id+',1'+')"><i class=\"fa fa-times\"></i></td>'+
                        "</tr>");
                }
                else if(item.kind == "2"){
                    $("#"+temp+"-"+index+"-"+"SGRQtable").append(
                        "<tr>"+
                            "<td>"+item.SGRQ_id+"</td>"+
                            "<td>"+item.date+"</td>"+
                            "<td>"+item.score+"</td>"+
                            '<td><a data-toggle="modal" href="#SGRQDetails" onclick="editSGRQ('+item.SGRQ_id+')"><i class=\"fa fa-edit\"></i></td>'+
                            '<td><a onclick="deleteQuestionnaire('+item.SGRQ_id+',2'+')"><i class=\"fa fa-times\"></i></td>'+
                        "</tr>");
                }
            });
        });
    }
    function addQuestionnaire(Q_index){
        index = Q_index;
        $("#ESS :text").val("");
        $("#ESS :radio").attr("checked",false);
//        $("#ESS :checkbox").attr("checked",false);
        $("#MBQ :text").val("");
        $("#MBQ :radio").attr("checked",false);
//        $("#MBQ :checkbox").attr("checked",false);
        $("#SGRQ :text").val("");
        $("#SGRQ :radio").attr("checked",false);
        $("#SGRQ :checkbox").attr("checked",false);
    }
    function deleteQuestionnaire(id, kind) {
        if(confirm("确定删除")==1) {
            $.get('/i31/', {"id": id, kind: kind}, function (data) {
                var result = JSON.parse(data).result;
                if(result=="0")
                    alert("删除成功");
                else if(result=="-1")
                    alert("删除失败");
            });
            showQuestionnaire(index);
        }
    }

    function submitQuestionnaire(kind) {
        console.log(index);
        var str = "";
        if(kind =="0"){
            str = $("#ESS").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index]+"&kind="+"0";
        }
        else if(kind == "1"){
            str = $("#MBQ").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index]+"&kind="+"1";
        }
        else{
            str = $("#SGRQ").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index]+"&kind="+"2";
        }

        if(confirm("确定提交")==1){
            $.post('/i29/', str, function (data) {
                var result = JSON.parse(data).result;
                if(result=="0")
                    alert("提交成功");
                else if(result=="-1")
                    alert("提交失败");
            });
            showQuestionnaire(index);
        }
    }

    function editESS(ESS_id) {
        $.getJSON('/i30/',{"id":ESS_id,type:"0"},function (json_data) {
            item = json_data;
            $("#ESS input[name=ess1][value='"+item.ess1+"']").attr('checked',true);
            $("#ESS input[name=ess2][value='"+item.ess2+"']").attr('checked',true);
            $("#ESS input[name=ess3][value='"+item.ess3+"']").attr('checked',true);
            $("#ESS input[name=ess4][value='"+item.ess4+"']").attr('checked',true);
            $("#ESS input[name=ess5][value='"+item.ess5+"']").attr('checked',true);
            $("#ESS input[name=ess6][value='"+item.ess6+"']").attr('checked',true);
            $("#ESS input[name=ess7][value='"+item.ess7+"']").attr('checked',true);
            $("#ESS input[name=ess8][value='"+item.ess8+"']").attr('checked',true);
            $("#ESS input[name='score']").val(item.score);
            $("#ESS input[name='ESS_id']").val(item.ESS_id);

        });
    }

    function editMBQ(MBQ_id) {
        $.getJSON('/i30/',{"id":MBQ_id,type:"1"},function (json_data) {
            item = json_data;
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
            $("#MBQ input[name='BMI']").val(item.BMI);
            $("#MBQ input[name='MBQ_id']").val(item.MBQ_id);
        });
    }

    function editSGRQ(SGRQ_id) {
        $.getJSON('/i30/',{"id":SGRQ_id,type:"2"},function (json_data) {
            item = json_data;
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
            analyzeCheckBox("SGRQ","H11",item.H11);
            analyzeCheckBox("SGRQ","H12",item.H12);
            analyzeCheckBox("SGRQ","H13",item.H13);
            $("#SGRQ input[name=H14][value='"+item.H14+"']").attr('checked',true);
            analyzeCheckBox("SGRQ","H15",item.H15);
            analyzeCheckBox("SGRQ","H16",item.H16);
            analyzeCheckBox("SGRQ","H17",item.H17);
            $("#SGRQ input[name=H18][value='"+item.H18+"']").attr('checked',true);
            $("#SGRQ textarea[name=actEff]").val(item.actEff);
            $("#SGRQ input[name='SGRQ_id']").val(item.SGRQ_id);
        });
    }

    function analyzeCheckBox(modal,name,item) {
        for (var i = 0;i<item.length;i++){
                $("#"+modal+" input[name='"+name+"'][value='"+item[i]+"']").attr('checked',true);
        }
    }

    function showAandAE(A_index){
        if(type==0){
            temp="outpatient";
        }
        else if(type==1){
            temp="emergency";
        }
        else if(type==2){
            temp="hospital"
        }
        $("#"+temp+"-"+A_index+"-"+"AEtable tbody").empty();
        $.getJSON('/i32/',{P_id:patientId,type:type,S_id:S_id[A_index],kind:"0"},function(json_data){
            $.each(json_data,function (index,item) {
                $("#"+temp+"-"+A_index+"-"+"AEtable tbody").append(
                    "<tr>"+
                        "<td>"+item.AE_id+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td>"+item.AE_type+"</td>"+
                        "<td>"+item.D_id+"</td>"+
                        "<td>"+item.description+"</td>"+
                        "<td>"+item.name+"</td>"+
                        '<td><a  data-toggle="modal" href="#AccessoryExaminationDetails" onclick="editAE('+item.AE_id+')"><i class=\"fa fa-edit\"></i></td>'+
                        '<td><a  data-toggle="modal" onclick="deleteAorAE('+item.AE_id+',0'+')"><i class=\"fa fa-times\"></td>'+
                    "</tr>"
                )
            });
        });

        $("#"+temp+"-"+A_index+"-"+"Atable tbody").empty();
        $.getJSON('/i32/',{P_id:patientId,type:type,S_id:S_id[A_index],kind:"1"},function(json_data){
            $.each(json_data,function (index,item) {
                $("#"+temp+"-"+A_index+"-"+"Atable tbody").append(
                    "<tr>"+
                        "<td>"+item.A_id+"</td>"+
                        "<td>"+item.date+"</td>"+
                        "<td>"+item.D_id+"</td>"+
                        "<td>"+item.description+"</td>"+
                        "<td>"+item.name+"</td>"+
                        '<td><a  data-toggle="modal" href="#AttachInfoDetails" onclick="editA('+item.A_id+')"><i class=\"fa fa-edit\"></i></td>'+
                        '<td><a  data-toggle="modal" onclick="deleteAorAE('+item.A_id+',1'+')"><i class=\"fa fa-times\"></td>'+
                    "</tr>"
                )
            });
        });

    }

    function addAorAE(A_index){
        console.log(index);
        index = A_index;
        console.log("index");
        console.log(index);
        $("#AccessoryExamination :text").val("");
        $("#AccessoryExamination :input").val("");
        $("#AccessoryExamination :radio").attr("checked",false);
//        $("#AccessoryExamination :checkbox").attr("checked",false);

        $("#AttachInfo :text").val("");
        $("#AttachInfo :radio").attr("checked",false);
        $("#AttachInfo :input").val("");
//        $("#AttachInfo :checkbox").attr("checked",false);
    }


    function submitAorAE(kind){
        var str = "";
        if(kind=="0"){
            str = $("#AccessoryExamination").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index]+"&kind="+"0";
            console.log("000");
        }
        else{
        console.log("111");
            str = $("#AttachInfo").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index]+"&kind="+"1";
        }
        if(confirm("确定提交")==1){
            $.post('/i33/', str, function (data) {
            console.log($("#AccessoryExamination").serialize());
            var result = JSON.parse(data).result;
                if(result=="0")
                    alert("提交成功");
                else if(result=="-1")
                    alert("提交失败");
            });
            showAandAE(index);
        }
    }

    function editAE(AE_id) {
        $.getJSON('/i35/',{AE_id: AE_id, kind: "0"}, function (json_data) {
            item = json_data;
            console.log(item)
            $("#AccessoryExamination input[name='AE_type'][value='"+item.AE_type+"']").attr('checked',true);
            $("#AccessoryExamination input[name='date']").val(item.date);
            console.log(item.AE_type);
            $("#AccessoryExamination textarea[name='description']").val(item.description);
            $("#AccessoryExamination input[name='AE_id']").val(item.AE_id);

        });
    }

    function editA(A_id) {
        $.getJSON('/i35/',{A_id: A_id, kind: "1"}, function (json_data) {
            item = json_data;
            $("#AttachInfo input[name='date']").val(item.date);
            $("#AttachInfo textarea[name='description']").val(item.description);
            $("#AttachInfo input[name='A_id']").val(item.A_id);

        });
    }

    function deleteAorAE(id, kind) {
        if(confirm("确定删除")==1) {
            $.get('/i34/', {id: id, kind: kind}, function (data) {
                var result = JSON.parse(data).result;
                if(result=="0")
                    alert("删除成功");
                else if(result=="-1")
                    alert("删除失败");
            });
            showAandAE(index);
        }
    }

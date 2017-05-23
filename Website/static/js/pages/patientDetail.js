/**
 * Created on 2017/3/16.
 */

 (function ($) {
    $.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2].replace("/","")); return null;
    }
  })(jQuery);
var data = new Array();
var patientinfo = new Array();
var patientId = $.getUrlParam("P_id");
var A =  $.getUrlParam("A");
var type = 0;
var outpatientnum = 0;
var emergencynum = 0;
var hospitalnum = 0;
var S_id = new Array();
var index = 0;
var imgDir ='';
var type_now;
$(document).ready(function (e) {

    if(window.innerWidth<1000){
	$("#myTab").hide();
	$("#myTabSmall").show();
	}
	else{
	$("#myTab").show();
	$("#myTabSmall").hide();
	}

//    PatientDetailTable();
    showRelationInfo();
    getAppInfoNum();
    appendPatientDetail();
    calculateCATSum();
    calculateMBQSum1();
    calculateMBQSum2();

//    for emergency
    forWizard_v("acuteExac", "disease", 0, "-EmergCallInfo");
    forWizard_v("byxCheck", "byxResult", 1, "-EmergCallInfo");
    forWizard_v("useAbt", "useAbtconfirm", 1, "-EmergCallInfo");
    forWizard_ecDate();
    forWizard_v("hospital", "treatMethod", 0, "-EmergCallInfo");
    forWizard_v("treatMethod", "medicine", 1, "-EmergCallInfo");

//    for outpatient
    forWizard_v("isSymptom", "symptom", 1, "-OutPatientServiceInfo");
    forWizard_v("physicalExam", "breathErr", 0, "-OutPatientServiceInfo");
    forWizard_v("acuteExac", "disease-o", 0, "-OutPatientServiceInfo");
    forWizard_v("useAbt", "abtType", 1, "-OutPatientServiceInfo");
    forWizard_v("treatMethod", "medicine-o", 1, "-OutPatientServiceInfo");

//    for inhospital
    forWizard_v("acuteExac", "disease-h", 0, "-InHospitalInfo");
    forWizard_v("byxCheck", "byxResult-h", 1, "-InHospitalInfo");
    forWizard_v("useAbt", "abtType-h", 1, "-InHospitalInfo");
    forWizard_v("hospital", "treatMethod-h", 0, "-InHospitalInfo");
    forWizard_v("treatMethod", "medicine-h", 1, "-InHospitalInfo");


    $("#submitPatientInfobt").click(function () {
        submitChangePatient();
    });

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

//    $("#submitOutPatientServiceInfobt").click(function () {
//       submitInfo("0");
//    });
//
//    $("#submitEmergCallInfobt").click(function () {
//        console.log("AAA")
//        submitInfo("1");
//    })
//
//    $("#submitInHospitalInfobt").click(function () {
//        submitInfo("2");
//    })


})

function forWizard_ecDate(){
    $(".mycheckbox").change(function(){
        var val=$('#-EmergCallInfo input:radio[name="ecMethod"]:checked').val();
        console.log(val);
        if(val){
            if(val == 3)
            {
            console.log("AAA")
               $("#ecDate").show();
            }
            else
            {
               $("#ecDate").hide();
            }
        }
    })
}

    //查看患者个人信息
    function PatientDetailTable() {
        $.ajax({
            type:"GET",
            url:"/i16/",
            dataType:"json",
            data:{P_id:patientId},
            success:function (data) {
                item = data;
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
                $("#education").html(educationParse(item.education));
                $("#registerTime").html(item.registerTime);
                $("#career").html(careerParse(item.career));
                $("#marriage").html(marriageParse(item.marriage));

                $("#homeAddr").html(item.province_h+item.city_h+item.county_h+item.detail_h);

                $("#birthAddr").html(item.province+item.city+item.county);

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
                $("#payment").html(paymentParse(item.payment));
                $("#sex").html(SexParse(item.sex));
                $("#IDCardNum").html(SexParse(item.IDCardNum));
            },
            error: function (data) {
                errorProcess(data);
            }
        });
    }

    function submitChangePatient() {
        if(confirm("确定提交？")==1){
            $.ajax({
                type:"POST",
                url:"/i17/",
                dataType:"json",
                data: $("#PatientInfo").serialize(),
                success:function (data) {
                    successProcess(data);
                },
                error:function(data){
                    errorProcess(data);
                }
            });
            appendPatientDetail();
        }
    }

    function appendPatientDetail() {
        $.ajax({
            type:"GET",
            url:'/i16/',
            dataType:"json",
            data:{P_id:patientId},
            success:function (data) {
                item = data;
                $("#PatientInfo input[name='id']").val(item.id);
                $("#PatientInfo input[name='P_id']").val(item.P_id);
                $("#PatientInfo input[name='name']").val(item.name);
                $("#PatientInfo input[name='sign'][value='" + item.sign + "']").attr('checked', true);

                $("#PatientInfo input[name='age']").val(item.age);
                $("#PatientInfo input[name='nation']").val(item.nation);
                $("#PatientInfo input[name='height']").val(item.height);
                $("#PatientInfo input[name='weight']").val(item.weight);

                $("#PatientInfo select[name='education'] option[value='"+item.education+"']").attr('selected',true);
                $("#PatientInfo select[name='career'] option[value='"+item.career+"']").attr('selected',true);
                $("#PatientInfo select[name='marriage'] option[value='"+item.marriage+"']").attr('selected',true);

                $("#PatientInfo input[name='registerTime']").val(item.registerTime);
                $("#PatientInfo input[name='birthday']").val(item.birthday);

                $("#PatientInfo input[name='homeAddr']").val(item.province_h+item.city_h+item.county_h+item.detail_h);

                $("#PatientInfo select[name='province_h'] option[value='"+item.province_h+"']").attr('selected',true);
                $("#PatientInfo select[name='city_h'] option[value='"+item.city_h+"']").attr('selected',true);
                $("#PatientInfo select[name='county_h'] option[value='"+item.county_h+"']").attr('selected',true);
//                $("#PatientInfo input[name='detail_h']").val(item.detail_h);

                $("#PatientInfo input[name='birthAddr']").val(item.province+item.city+item.county);

                $("#PatientInfo select[name='province'] option[value='"+item.province+"']").attr('selected',true);
                $("#PatientInfo select[name='city'] option[value='"+item.city+"']").attr('selected',true);
                $("#PatientInfo select[name='county'] option[value='"+item.county+"']").attr('selected',true);

                $("#PatientInfo input[name='activityAddr1']").val(item.activityAddr1);
                $("#PatientInfo input[name='activityAddr2']").val(item.activityAddr2);
                $("#PatientInfo input[name='actionAddr']").val(item.actionAddr);
                $("#PatientInfo input[name='diastolicPressure']").val(item.diastolicPressure);
                $("#PatientInfo input[name='systolicPressure']").val(item.systolicPressure);
                $("#PatientInfo input[name='neckCircu']").val(item.neckCircu);
                $("#PatientInfo input[name='telephone']").val(item.telephone);
                $("#PatientInfo input[name='cellphone']").val(item.cellphone);
                $("#PatientInfo input[name='partnerPhone']").val(item.partnerPhone);

                $("#PatientInfo input[name='payment'][value='" + item.payment + "']").attr('checked', true);

                $("#PatientInfo input[name='sex'][value='" + item.sex + "']").attr('checked', true);
                $("#PatientInfo input[name='IDCardNum']").val(item.IDCardNum);
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    //查看患者家属信息
    function showRelationInfo(){
        data = [];
        $("#RelationInfoTable tbody").empty();
        $.ajax({
            type:"GET",
            url:"/i18/",
            dataType:"json",
            data:{"P_id":patientId},
            success:function (json_data) {
                $.each(json_data,function (index,item){
                data.push(item);
                var temp ="";
                if(item.sex=="1"){
                    temp = "男";
                }
                else{
                    temp = "女";
                }
                $("#RelationInfoTable tbody").append(
                    "<tr>"+
                        "'<td>"+item.R_id+"</td>'"+
                        "'<td>"+item.name+"</td>'"+
                        "'<td>"+temp+"</td>'"+
                        "'<td>"+item.telephone+"</td>'"+
                        "'<td>"+item.cellphone+"</td>'"+
                        "'<td>"+item.weChat+"</td>'"+
                        "'<td>"+item.mail+"</td>'"+
                        "'<td>"+item.homeAddr+"</td>'"+
                        '<td><a  data-toggle="modal" onclick = "editRelationInfo('+ index +')" href="#RelationInfoDetails"><i class="fa fa-edit"></i></a></td>'+
                        '<td><a onclick = "deleteRelationInfo('+item.R_id+')"><i class="fa fa-times"></i></a></td>'+
                    "</tr>");
            });
            },
            error:function (json_data) {
                errorProcess(json_data);
            }
        });
    }

    //修改病人家属信息
    function editRelationInfo(index){
        console.log(data)
        $("#RelationInfo input[name='R_id']").val(data[index].R_id);
        $("#RelationInfo input[name='weChat']").val(data[index].weChat);
        $("#RelationInfo input[name='name']").val(data[index].name);
        $("#RelationInfo input[name='telephone']").val(data[index].telephone);
        $("#RelationInfo input[name='cellphone']").val(data[index].cellphone);
        $("#RelationInfo input[name='mail']").val(data[index].mail);
        $("#RelationInfo input[name='homeAddr']").val(data[index].homeAddr);
        $("#RelationInfo input[name='sex']").val(data[index].sex);
//        $("#RelationInfo input[name='sex'][value='"+data[index].sex+"']").attr('checked',true);
    }

    //删除患者家属信息
    function deleteRelationInfo(id) {
    if(confirm("确定删除？")==1){
        $.ajax({
           type:"GET",
            url:"/i20/",
            data:{R_id:id},
            dataType:"json",
            success:function (data) {
                successProcess(data);
            },
            error:function (data) {
                errorProcess(data);
            }
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
            console.log($("#RelationInfo").serialize());
            $.ajax({
               type:"POST",
                url:"/i19/",
                data:$("#RelationInfo").serialize()+"&P_id="+patientId,
                dataType:"json",
                success:function (data) {
                    successProcess(data);
                },
                error:function (data) {
                    errorProcess(data);
                }
            });
            showRelationInfo();
        }
    }


    function GenerateTab1(index,type_t,date,sign){
    type = type_t;
    var str_edit = "";
    var str_type = "";
    var temp_name = "";
    var temp_show = "";
    var str_color = "";
    if(sign=="1"){
        str_color = 'style="background:#e63b3b!important;"';
    }
    if(type==0){
        str_edit = "OutPatientServiceInfoDetails";
        str_type = "outpatient-"+index;
        temp_name = "门诊";
        temp_show = "showOutPatientServiceInfo";
    }
    else if(type == 1){
        str_edit = "EmergCallInfoDetails";
        str_type = "emergency-"+index;
        temp_name = "急诊";
        temp_show = "showEmergCallInfo";
    }
    else if(type == 2){
        str_edit = "InHospitalInfoDetails";
        str_type = "hospital-"+index;
        temp_name = "住院";
        temp_show = "showInHospitalInfo";
    }
    var temp_index = parseInt(index)+1;
    temp_index = temp_index.toString();
    var  str = "";
     str     = '<div class="col-lg-12">'+
			   '<div class="panel bk-bg-white">'+
			   '<div class="panel-heading bk-bg-primary" '+str_color+'>'+
			   '<h6><i class="fa fa-tags red "></i>'+temp_name+'记录'+temp_index+"  ( 上传于"+date+" )"+'</h6>'+
			   '<div class="panel-actions" style="display:block;">'+
				'<a onclick="updown($(this))"><i class="fa fa-chevron-up"></i></a>'+
//                '<a data-toggle="modal" onclick = "editInfo('+index+','+type+')" href="#'+str_edit+'"><i class="fa fa-edit"></i></a>'+
				'<a onclick = "deleteInfo('+index+','+type+')" class="btn-close"><i class="fa fa-times"></i></a>'+
				'</div>'+
				'</div>'+
				'<div class="panel-body">'+
				'<div id="'+str_type+'-tab'+'" class="wizard-type1">'+
				'<ul class="steps nav nav-pills">'+
				'<li><a href="#'+str_type+'-tab1" onclick = "'+temp_show+'('+index+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-star"></i></span> 详细信息</a></li>'+
				'<li><a href="#'+str_type+'-tab2" onclick = "showClinic('+index+','+type+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-credit-card"></i></span> 临床信息</a></li>'+
				'<li><a href="#'+str_type+'-tab3" onclick = "showQuestionnaire('+index+','+type+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-building"></i></span> 问卷信息</a></li>'+
				'<li><a href="#'+str_type+'-tab4" onclick = "showAandAE('+index+','+type+')" data-toggle="tab"><span class="badge badge-info"><i class="fa fa-check"></i></span> 辅助检查和附件</a></li>'+
				'</ul>'+
				'<div class="tab-content">'+
				'<div class="tab-pane" id="'+str_type+'-tab1">'+
//				'<div class="row col-lg-10 col-md-10 col-md-offset-1 table-responsive">'+
//				'<table class="table table-bordered table-hover table-entire" id="'+str_type+'-table">'+
//				'<thead>'+
//				'</thead>'+
//				'<tbody>'+
//				'</tbody>'+
//				'</table>'+
//				'</div>'+
				'</div>';

		return str;

    }

    function updown(t){
        var n = t.parent() .parent() .next('.panel-body');
        n.is(':visible') ? $(t.find("i")[0]).removeClass('fa-chevron-up') .addClass('fa-chevron-down')  :$(t.find("i")[0]).removeClass('fa-chevron-down') .addClass('fa-chevron-up');
        n.slideToggle('slow', function () {
          widthFunctions()
        });
    }

    function GenerateTab2(index,type_t){
    type = type_t;
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
		   '<div class="row table-responsive" style="padding-left:25px;padding-right:25px">'+
		   '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-clinictable">'+
		   '<thead>'+
			'</thead>'+
			'<tbody>'+
			'</tbody>'+
			'</table>'+
            '<div class="row col-lg-4 col-md-4 text-left">'+
            '<a  data-toggle="modal" href="#ClinicDetails" onclick = "addClinic('+index+','+type+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的临床信息</a>'+
            '</div>'+
			'</div>'+
			'</div>';

	    return str;
    }

    function GenerateTab3(index,type_t){
        type = type_t;
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
			  '<div class="row table-responsive" style="padding-left:25px;padding-right:25px">'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-ESStable">'+
			  '<caption class="mylabel"></caption>'+
			  '<thead>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
              '<div class="row col-lg-4 col-md-4 text-left">'+
              '<a  data-toggle="modal" href="#ESSDetails" onclick = "addQuestionnaire('+index+','+type+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的ESS</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-MBQtable">'+
			  '<caption class="mylabel"></caption>'+
			  '<thead>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
              '<div class="row col-lg-4 col-md-4 text-left">'+
              '<a  data-toggle="modal" href="#MBQDetails" onclick = "addQuestionnaire('+index+','+type+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的MBQ</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-SGRQtable">'+
			  '<caption class="mylabel"></caption>'+
			  '<thead>'+
			  '</thead>'+
			  '<tbody>'+
              '</tbody>'+
              '</table>'+
              '<div class="row col-lg-4 col-md-4 text-left">'+
              '<a  data-toggle="modal" href="#SGRQDetails" onclick = "addQuestionnaire('+index+','+type+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的SGRQ</a>'+
              '</div>'+
              '</div>'+
              '</div>';

        return str;
    }

    function GenerateTab4(index, type_t){
        type = type_t;
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
			  '<div class="row table-responsive" style="padding-left:25px;padding-right:25px">'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-AEtable">'+
			  '<caption class="mylabel"></caption>'+
			  '<thead>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
			  '<div class="row col-lg-4 col-md-4 text-left">'+
              '<a  data-toggle="modal" href="#AccessoryExaminationDetails" onclick = "addAorAE('+index+','+type+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的辅助检查</a>'+
              '</div>'+
			  '<table class="table table-bordered table-hover table-entire" id="'+str_type+'-Atable">'+
			  '<caption class="mylabel"></caption>'+
			  '<thead>'+
			  '</thead>'+
			  '<tbody>'+
			  '</tbody>'+
			  '</table>'+
              '<div class="row col-lg-4 col-md-4 text-left">'+
              '<a  data-toggle="modal" href="#AttachInfoDetails" onclick = "addAorAE('+index+','+type+')" class="mylabel"><i class="glyphicon glyphicon-plus "></i> 添加新的附件</a>'+
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
    function showTimeline(){
//        console.log("####1")
        timelineAnimate = function(elem) {
//        console.log("####2.0")
//        console.log($(".timeline.animated .timeline-row"))
        $(".timeline.animated .timeline-row").each(function(i) {
//        console.log("####2")
        var bottom_of_object, bottom_of_window;
//        console.log("####2")
        bottom_of_object = $(this).position().top + $(this).outerHeight();
//        console.log($(this).position().top,$(this).outerHeight(),i)
        bottom_of_window = $(window).scrollTop() + $(window).height();
//        console.log(bottom_of_window,bottom_of_object,i)
        if (bottom_of_window > bottom_of_object && i>2) {
          $(this).addClass("active");
        }
        });
        };
//        console.log("####2.1")
        timelineAnimate();
//        console.log("####3")
        return $(window).scroll(function() {
          return timelineAnimate();
        });
    }
    function colorForOEH(str){
        if(str=="0"){
            return "bg-success";
        }
        if(str=="1"){
            return "bg-warning";
        }
        if(str=="2"){
            return "bg-danger";
        }

    }
    function iconForOEH(str){
        if(str=="0"){
            return "fa fa-medkit";
        }
        if(str=="1"){
            return "fa fa-ambulance";
        }
        if(str=="2"){
            return "fa fa-hospital-o";
        }

    }

    function showInHospitalInfo(index){
        type = 2;
        var name = "hospital-"+index+"-tab1";
        var str =  "";
        str='<div class="row">'+
            '<form class="form-horizontal" id = "'+name+'-InHospitalInfo" method="post" role="form">'+
                '<div class="col-md-6">'+
                    '<div class="panel panel-success">'+
                        '<div class="panel-heading" style="text-align:center">'+
                            '<h6><i class="fa fa-indent red"></i>基本信息</h6>'+
                        '</div>'+
                        '<div class="panel-body">'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">编号</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="id" class="form-control" readonly>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊时间</label>'+
                    '<div class="col-md-9">'+
                        '<input type="date" name="date" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊地点</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="place" class="form-control">'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">住院病房类型</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="commonIcu" value="1">'+
                            '<label> 普通病房</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="commonIcu" value="2">'+
                            '<label> ICU</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">症状为</label>'+
                    '<div class="col-md-9">'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="1">'+
                        '<label for=""> 咳嗽加重</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="2">'+
                        '<label for=""> 咳浓痰并痰量增加</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="3">'+
                        '<label for=""> 发热</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="4">'+
                        '<label for=""> 呼吸困难加重</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="5">'+
                        '<label for=""> 上呼吸道感染症状</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="6">'+
                        '<label for=""> 意识障碍</label>'+
                    '</div>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">诊断为慢阻肺急性加重</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="acuteExac" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="acuteExac" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">诊断疾病为</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="disease" class="form-control" placeholder="age">'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">病原体检查</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="byxCheck" value="1">'+
                            '<label> 有</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="byxCheck" value="2">'+
                            '<label> 无</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">阳性结果为</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="byxResult"></textarea>'+
                    '</div>'+
                '</div>'+
             '</div>'+
             '</div>'+
             '</div>'+
            '<div class="col-md-6">'+
            '<div class="panel panel-primary">'+
                '<div class="panel-heading" style="text-align:center">'+
                    '<h6><i class="fa fa-indent red"></i>其他信息</h6>'+
                '</div>'+
                '<div class="panel-body">'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">呼吸治疗</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ycWcTreat" value="1">'+
                            '<label> 无创</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ycWcTreat" value="2">'+
                            '<label> 有创</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">使用抗生素</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useAbt" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useAbt" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">抗生素种类为</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="abtType" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">使用静脉激素</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useJmzs" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useJmzs" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">住院时长（天）</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="hospitalDays" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">慢阻肺急性加重与大气污染有关</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="airRelate" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="airRelate" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">调整治疗方案</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="treatMethod" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="treatMethod" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">调整药物为</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="medicine"></textarea>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">医嘱信息</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="docAdvice"></textarea>'+
                    '</div>'+
                '</div>'+
             '</div>'+
             '</div>'+
             '</div>'+
            '<div class="pull-right" style="margin-right:20px;">'+
                '<button type="button" onclick="submitInfo(\''+name+'\',2)" class="btn btn-primary">保存</button>'+
            '</div>'+
        '</form>'+
        '</div>';
        $("#"+name).html(str);
        editInfo(index,type, name);

    }

    function showOutPatientServiceInfo(index){
        type = 0;
        var name = "outpatient-"+index+"-tab1";
        var str =  "";
        str='<div class="row">'+
            '<form class="form-horizontal" id = "'+name+'-OutPatientServiceInfo" method="post" role="form">'+
                '<div class="col-md-6">'+
                    '<div class="panel panel-success">'+
                        '<div class="panel-heading" style="text-align:center">'+
                            '<h6><i class="fa fa-indent red"></i>基本信息</h6>'+
                        '</div>'+
                        '<div class="panel-body">'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">编号</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="id" class="form-control" readonly>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊时间</label>'+
                    '<div class="col-md-9">'+
                        '<input type="date" name="date" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊地点</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="place" class="form-control">'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊原因</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="isStable" value="1">'+
                            '<label> 稳定期随访</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="isStable" value="2">'+
                            '<label> 急性期加重</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">症状</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="isSymptom" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="isSymptom" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">症状为</label>'+
                    '<div class="col-md-9">'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="1">'+
                        '<label for=""> 咳嗽加重</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="2">'+
                        '<label for=""> 咳浓痰并痰量增加</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="3">'+
                        '<label for=""> 呼吸困难加重</label>'+
                    '</div>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">呼吸系统查体是否正常</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="physicalExam" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="physicalExam" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">异常表现为</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="breathErr"></textarea>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">诊断为慢阻肺急性加重</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="acuteExac" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="acuteExac" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
             '</div>'+
             '</div>'+
             '</div>'+
            '<div class="col-md-6">'+
            '<div class="panel panel-primary">'+
                '<div class="panel-heading" style="text-align:center">'+
                    '<h6><i class="fa fa-indent red"></i>其他信息</h6>'+
                '</div>'+
                '<div class="panel-body">'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">诊断疾病为</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="disease" class="form-control">'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否使用抗生素</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useAbt" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useAbt" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">抗生素种类为</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="abtType" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否使用静脉激素</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useJmzs" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useJmzs" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否住院治疗</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="hospital" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="hospital" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">慢阻肺急性加重是否与大气污染有关</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="airRelate" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="airRelate" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否调整治疗方案</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="treatMethod" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="treatMethod" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">调整药物为</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="medicine"></textarea>'+
                    '</div>'+
                '</div>'+
             '</div>'+
             '</div>'+
             '</div>'+
            '<div class="pull-right" style="margin-right:20px;">'+
                '<button type="button" onclick="submitInfo(\''+name+'\',0)" class="btn btn-primary">保存</button>'+
            '</div>'+
        '</form>'+
        '</div>';
        $("#"+name).html(str);
        editInfo(index,type, name);

    }

    function showEmergCallInfo(index){
        type = 1;
//        var name = "emergency-"+index+"-table";
        var name = "emergency-"+index+"-tab1";
        var str =  "";
        str='<div class="row">'+
            '<form class="form-horizontal" id = "'+name+'-EmergCallInfo" method="post" role="form">'+
                '<div class="col-md-6">'+
                    '<div class="panel panel-success">'+
                        '<div class="panel-heading" style="text-align:center">'+
                            '<h6><i class="fa fa-indent red"></i>基本信息</h6>'+
                        '</div>'+
                        '<div class="panel-body">'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">编号</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="id" class="form-control" readonly>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊时间</label>'+
                    '<div class="col-md-9">'+
                        '<input type="date" name="date" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">就诊地点</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="place" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">症状为</label>'+
                    '<div class="col-md-9">'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="1">'+
                        '<label for=""> 咳嗽加重</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="2">'+
                        '<label for=""> 咳浓痰并痰量增加</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="3">'+
                        '<label for=""> 发热</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="4">'+
                        '<label for=""> 呼吸困难加重</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="5">'+
                        '<label for=""> 上呼吸道感染症状</label>'+
                    '</div>'+
                    '<div class="checkbox-custom checkbox-inline">'+
                        '<input type="checkbox" name="symptom" value="6">'+
                        '<label for=""> 意识障碍</label>'+
                    '</div>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否为慢阻肺急性加重</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="acuteExac" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="acuteExac" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">诊断疾病为</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="disease" class="form-control" placeholder="age">'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">病原体检查</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="byxCheck" value="1">'+
                            '<label> 有</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="byxCheck" value="2">'+
                            '<label> 无</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">阳性结果为</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="byxResult"></textarea>'+
                    '</div>'+
                '</div>'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">呼吸治疗</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ycWcTreat" value="1">'+
                            '<label> 无创</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ycWcTreat" value="2">'+
                            '<label> 有创</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+

             '</div>'+
             '</div>'+
             '</div>'+
            '<div class="col-md-6">'+
            '<div class="panel panel-primary">'+
                '<div class="panel-heading" style="text-align:center">'+
                    '<h6><i class="fa fa-indent red"></i>其他信息</h6>'+
                '</div>'+
                '<div class="panel-body">'+
                 '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否使用抗生素</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useAbt" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useAbt" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">抗生素种类为</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="abtType" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否使用静脉激素</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useJmzs" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="useJmzs" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">急诊方式</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ecMethod" value="1">'+
                            '<label> 流水</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ecMethod" value="2">'+
                            '<label> 留观</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="ecMethod" value="3">'+
                            '<label> 急诊病房</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否住院治疗</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="hospital" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="hospital" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">急诊住院时长（天）</label>'+
                    '<div class="col-md-9">'+
                        '<input type="text" name="ecDate" class="form-control">'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">慢阻肺急性加重是否与大气污染有关</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="airRelate" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="airRelate" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">是否调整治疗方案</label>'+
                    '<div class="col-md-9">'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="treatMethod" value="1">'+
                            '<label> 是</label>'+
                        '</div>'+
                        '<div class="radio-custom radio-inline">'+
                            '<input type="radio" name="treatMethod" value="2">'+
                            '<label> 否</label>'+
                        '</div>'+
                    '</div>'+
                '</div>'+
                '<div class="form-group">'+
                    '<label class="col-md-3 control-label">调整药物为</label>'+
                    '<div class="col-md-9">'+
                        '<textarea class="form-control" style="width:250px;height:60px;text-align:left;" name="medicine"></textarea>'+
                    '</div>'+
                '</div>'+
             '</div>'+
             '</div>'+
             '</div>'+
            '<div class="pull-right" style="margin-right:20px;">'+
                '<button type="button" onclick="submitInfo(\''+name+'\',1)" class="btn btn-primary">保存</button>'+
            '</div>'+
        '</form>'+
        '</div>';
        $("#"+name).html(str);
        editInfo(index,type, name);
    }

    function showOne(type_t){
        type = parseInt(type_t);
        type_now = type;
        S_id = [];
        var color = "black";
        $("#follow_up").empty();
        temp = document.getElementById("follow_up");
        $.ajax({
            type:"GET",
            url:"/i1000/",
            data:{"P_id":patientId,"para":type},
            dataType:"json",
            success:function (json_data) {
                $.each(json_data,function (index,item){
                    if(item.sign == "1"){
                        new_str = "(未处理！)";
//                        color = "#e63b3b";
                    }
                    else{
                        new_str = "";
                        color = "black";
                    }
                    console.log(item)
                    S_id.push(item.id);
                    if(index<3){
                        tt = "active";
//                        console.log(tt);
                    }
                    else{
                        tt ="";
                    }
                    temp.innerHTML = temp.innerHTML+'<div class="timeline-row  '+tt+'">'+
                    '<div class="timeline-time" style="color:'+color+'"><small style="color:black;">'+item['date']+'</small>'+item['place']+new_str+'</div>'+
                    '<div class="timeline-icon">'+
                    '<div class="'+colorForOEH(type_t)+'"><i class="'+iconForOEH(type_t)+'"></i></div>'+
                    '</div>'+
                    '<div class="panel timeline-content">'+
                    '<div class="panel-body">'+
                    GenerateTab1(index, type, item['date_upload'], item.sign)+GenerateTab2(index, type)+GenerateTab3(index, type)+GenerateTab4(index, type)+
                    '</div>'+
                    '</div>'+
                    '</div>';
                });

            console.log(S_id);
            },
            error:function (data) {
                errorProcess(data);
            }
        });
    }

    function showAll(temp_new_sign){
        type_now = 4;
        show_num = 3;
        S_id = [];
        var indexForZero = 0;
        var color = "black";
        $("#follow_up").empty();
        temp = document.getElementById("follow_up");
        console.log("inside")
        $.ajax({
            type:"GET",
            url:"/i1000/",
            data:{"P_id":patientId,"para":"4"},
            dataType:"json",
            success:function (json_data) {
                $.each(json_data,function (index,item){
                    if(item.sign == "1"){
                        new_str = "(未处理！)";
//                        color = "#e63b3b";
                    }
                    else{
                        new_str = "";
                        color = "black";
                        if(temp_new_sign == "0"){
                            indexForZero = indexForZero +1
                            return true;
                        }
                    }
                    S_id.push(item.id);
                    type = parseInt(item['type']);
                    console.log(type,"type")
                    if(index-indexForZero<show_num){
                        tt = "active";
                        console.log(tt);
                    }
                    else{
                        tt ="";
                    }
                    temp.innerHTML = temp.innerHTML+'<div class="timeline-row  '+tt+'">'+
                    '<div class="timeline-time" style="color:'+color+'"><small style="color:black;">'+item['date']+'</small>'+item['place']+new_str+'</div>'+
                    '<div class="timeline-icon">'+
                    '<div class="'+colorForOEH(item['type'])+'"><i class="'+iconForOEH(item['type'])+'"></i></div>'+
                    '</div>'+
                    '<div class="panel timeline-content">'+
                    '<div class="panel-body">'+
                    GenerateTab1(index-indexForZero, type, item['date_upload'], item.sign)+GenerateTab2(index-indexForZero, type)+
                    GenerateTab3(index-indexForZero, type)+GenerateTab4(index-indexForZero, type)+
                    '</div>'+
                    '</div>'+
                    '</div>';
                });
                type = 4;
                console.log(S_id);
            },
            error:function (data) {
                errorProcess(data);
            }
        });
        console.log("outside");
        showTimeline();
    }

//(function() {
//  $(document).ready(function() {
//    var timelineAnimate;
//    timelineAnimate = function(elem) {
//      return $(".timeline.animated .timeline-row").each(function(i) {
//        var bottom_of_object, bottom_of_window;
//        bottom_of_object = $(this).position().top + $(this).outerHeight();
//         console.log($(this).position().top,$(this).outerHeight(),i)
//        bottom_of_window = $(window).scrollTop() + $(window).height();
//        console.log(bottom_of_window,bottom_of_object)
//        if (bottom_of_window > bottom_of_object) {
//          return $(this).addClass("active");
//        }
//      });
//    };
//    timelineAnimate();
//    return $(window).scroll(function() {
//      return timelineAnimate();
//    });
//  });
//
//}).call(this);

    function editInfo(index, type_t, name){
        type = type_t;
        console.log(S_id)
        $.ajax({
           type:"GET",
            url:"/i23/",
            data:{"S_id":S_id[index],"type":type},
            dataType:"json",
            success:function (json_data) {
                var item = json_data;
                if(type==0){
                    $("#"+name+"-OutPatientServiceInfo input[name='id']").val(item.OPS_id);
                    $("#"+name+"-OutPatientServiceInfo input[name='date']").val(item.date);
                    $("#"+name+"-OutPatientServiceInfo input[name='place']").val(item.place);
                    $("#"+name+"-OutPatientServiceInfo input[name='isStable'][value='"+item.isStable+"']").attr('checked',true);
                    $("#"+name+"-OutPatientServiceInfo input[name='isSymptom'][value='"+item.isSymptom+"']").attr("checked",true);
                    analyzeCheckBox(name+"-OutPatientServiceInfo","symptom",item.symptom);
                    $("#"+name+"-OutPatientServiceInfo input[name='physicalExam'][value='"+item.physicalExam+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo input[name='acuteExac'][value='"+item.acuteExac+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo input[name='useAbt'][value='"+item.useAbt+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo input[name='useJmzs'][value='"+item.useJmzs+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo textarea[name='breathErr']").val(item.breathErr);
                    $("#"+name+"-OutPatientServiceInfo input[name='disease']").val(item.disease);
                    $("#"+name+"-OutPatientServiceInfo input[name='abtType']").val(item.abtType);
                    $("#"+name+"-OutPatientServiceInfo input[name='hospital'][value='"+item.hospital+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo input[name='airRelate'][value='"+item.airRelate+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo input[name='treatMethod'][value='"+item.treatMethod+"']").attr("checked",true);
                    $("#"+name+"-OutPatientServiceInfo textarea[name='medicine']").val(item.medicine);
                }
                else if(type==1){
                    $("#"+name+"-EmergCallInfo input[name='id']").val(item.EC_id);
                    $("#"+name+"-EmergCallInfo input[name='date']").val(item.date);
                    $("#"+name+"-EmergCallInfo input[name='place']").val(item.place);
                    analyzeCheckBox(name+"-EmergCallInfo","symptom",item.symptom);
                    $("#"+name+"-EmergCallInfo input[name='acuteExac'][value='"+item.acuteExac+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='disease']").val(item.disease);
                    $("#"+name+"-EmergCallInfo input[name='byxCheck'][value='"+item.byxCheck+"']").attr('checked',true);
                    $("#"+name+"-EmergCallInfo textarea[name='byxResult']").val(item.byxResult);
                    $("#"+name+"-EmergCallInfo input[name='ycWcTreat'][value='"+item.ycWcTreat+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='useAbt'][value='"+item.useAbt+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='abtType']").val(item.abtType);
                    $("#"+name+"-EmergCallInfo input[name='useJmzs'][value='"+item.useJmzs+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='ecMethod'][value='"+item.ecMethod+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='ecDate']").val(item.ecDate);
                    $("#"+name+"-EmergCallInfo input[name='treatMethod'][value='"+item.treatMethod+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='hospital'][value='"+item.hospital+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo input[name='airRelate'][value='"+item.airRelate+"']").attr("checked",true);
                    $("#"+name+"-EmergCallInfo textarea[name='medicine']").val(item.medicine);
                }
                else if(type==2){
                    $("#"+name+"-InHospitalInfo input[name='id']").val(item.IH_id);
                    $("#"+name+"-InHospitalInfo input[name='date']").val(item.date);
                    $("#"+name+"-InHospitalInfo input[name='place']").val(item.place);
                    $("#"+name+"-InHospitalInfo input[name='commonIcu'][value='"+item.commonIcu+"']").attr("checked",true);
                    analyzeCheckBox(name+"-InHospitalInfo","symptom",item.symptom);
                    $("#"+name+"-InHospitalInfo input[name='acuteExac'][value='"+item.acuteExac+"']").attr("checked",true);
                    $("#"+name+"-InHospitalInfo input[name='disease']").val(item.disease);
                    $("#"+name+"-InHospitalInfo input[name='byxCheck'][value='"+item.byxCheck+"']").attr('checked',true);
                    $("#"+name+"-InHospitalInfo textarea[name='byxResult']").val(item.byxResult);
                    $("#"+name+"-InHospitalInfo input[name='ycWcTreat'][value='"+item.ycWcTreat+"']").attr("checked",true);
                    $("#"+name+"-InHospitalInfo input[name='useAbt'][value='"+item.useAbt+"']").attr("checked",true);
                    $("#"+name+"-InHospitalInfo input[name='abtType']").val(item.abtType);
                    $("#"+name+"-InHospitalInfo input[name='useJmzs'][value='"+item.useJmzs+"']").attr("checked",true);
                    $("#"+name+"-InHospitalInfo input[name='hospitalDays']").val(item.hospitalDays);
                    $("#"+name+"-InHospitalInfo input[name='treatMethod'][value='"+item.treatMethod+"']").attr("checked",true);
                    $("#"+name+"-InHospitalInfo input[name='airRelate'][value='"+item.airRelate+"']").attr("checked",true);
                    $("#"+name+"-InHospitalInfo textarea[name='medicine']").val(item.medicine);
                    $("#"+name+"-InHospitalInfo textarea[name='docAdvice']").val(item.docAdvice);
                }
            },
            error:function (data) {
                errorProcess(data);
            }
        });
    }

    function addInfo(){

        $("#OutPatientServiceInfo :text").val("");
        $("#EmergCallInfo :text").val("");
        $("#InHospitalInfo :text").val("");
        $("#OutPatientServiceInfo :radio").attr("checked",false);
        $("#OutPatientServiceInfo :checkbox").attr("checked",false);
    }

    function deleteInfo(index, type1){
        type = type1;
        if(confirm("确定删除吗？"))
            $.ajax({
                type:"GET",
                url:"/i24/",
                data:{"S_id":S_id[index],"type":type},
                dataType:"json",
                success:function (data) {
                    successProcess(data);
                },
                error:function (data) {
                    errorProcess(data);
                }
            });
        if(type_now==0){
            showOne("0");
        }
        else if(type_now==1){
            showOne("1");
        }
        else if(type_now==2){
            showOne("2");
        }
        else{
            showAll("1");
        }
    }

    function submitInfo(name, type_t){
        type = type_t;
        var str = "";
        if(type==0){
            str = $("#"+name+"-OutPatientServiceInfo").serialize()+"&P_id="+patientId+"&type="+type;
        }
        else if(type==1){
            str = $("#"+name+"-EmergCallInfo").serialize()+"&P_id="+patientId+"&type="+type;
        }
        else{
            str = $("#"+name+"-InHospitalInfo").serialize()+"&P_id="+patientId+"&type="+type;
        }
        if (confirm("确定提交吗？")){
            $.ajax({
               type:"POST",
                url:"/i22/",
                data:str,
                dataType:"json",
                success:function (data) {
                   successProcess(data);
                },
                error:function(data){
                console.log(data,"error");
                   errorProcess(data);
                }
            });
            if(type_now==0){
                showOne("0");
            }
            else if(type_now==1){
                showOne("1");
            }
            else if(type_now==2){
                showOne("2");
            }
            else{
                showAll("1");
            }
        }
    }

    /********************************begin*********************临床相关函数******************************begin******************************/

    //显示临床信息
    function showClinic(c_index, type1) {
        type = type1;
        index = c_index;
        var str = "";
        if(type==0){
            str = "#outpatient-";
        }
        else if(type==1){
            str = "#emergency-";
        }
        else{
            str = "#hospital-";
        }
        var head = 1;
        $(str+c_index+"-clinictable tbody").empty();
        $(str+c_index+"-clinictable thead").empty();
        $.ajax({
           type:"GET",
            url:"/i25/",
            data:{"type":type,"S_id":S_id[c_index],kind:"0"},
            dataType:"json",
            success:function (json_data) {
                $.each(json_data,function (i,item) {
                    if(head==1){
                    $(str+c_index+"-clinictable thead").append('<tr>'+
                       '<th class="table-small tlabel5" style="text-align:center">编号</th>'+
                        '<th class="tlabel5" style="text-align:center;width:100px;">就诊日期</th>'+
                        '<th class="tlabel5" style="text-align:center;width:110px;">慢阻肺诊断级别</th>'+
                        '<th class = "tlabel5"style="text-align:center">服用药品及用量</th>'+
                        '<th class="table-small tlabel5" style="text-align:center">编辑</th>'+
                        '<th class="table-small tlabel5" style="text-align:center">删除</th>'+
                        '</tr>');
                        head = 0;
                    }

                    $(str+c_index+"-clinictable tbody").append("<tr>" +
                        "<td>" +item.Cli_id+"</td>"+
                        "<td>" +item.date+"</td>"+
                        "<td>" +item.lung3+"</td>"+
                        "<td>" +item.detail+"</td>"+
                        "<td><a  data-toggle=\"modal\" onclick=\"editClinic("+item.Cli_id+")\" href=\"#ClinicDetails\"><i class=\"fa fa-edit\"></i></td>"+
                        "<td><a  onclick=\"deleteClinic("+c_index+","+item.Cli_id+','+index+','+type+")\" ><i class=\"fa fa-times\"></i></td>"+
                    "</tr>");
                });
            },
            error:function(data){
               errorProcess(data);
            }
        });
    }

    //显示详情、编辑临床信息
    function  editClinic(Cli_id) {
        $.ajax({
            type:"GET",
            url:"/i27/",
            data:{"Cli_id":Cli_id},
            dataType:"json",
            success:function (json_data) {
                var item = json_data;
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
            },
            error:function (data) {
                errorProcess(data);
            }
        });
    }

    //删除临床信息记录
    function deleteClinic(c_index,Cli_id,index_t, type_t) {
        if(confirm("确定删除吗？")){
            $.ajax({
               type:"GET",
                url:"/i28/",
                data:{"Cli_id":Cli_id},
                dataType:"json",
                success:function (data) {
                    successProcess(data);
                },
                error:function (data) {
                    errorProcess(data);
                }
            });
            showClinic(index_t, type_t);
        }
    }

    //添加临床信息记录
    function addClinic(c_index, type_t) {
        type = type_t;
        index = c_index;
        $("#Clinic :text").val("");
//        $("#Clinic :radio").attr("checked",false);
        $("#Clinic :checkbox").attr("checked",false);
    }

    //提交临床信息记录
    function submitClinic() {
        if (confirm("确定提交吗？")){
            $.ajax({
               type:"POST",
                url:"/i26/",
                data:$("#Clinic").serialize()+"&P_id="+patientId+"&type="+type+"&S_id="+S_id[index],
                dataType:"json",
                success:function (data) {
                    successProcess(data);
                },
                error:function (data) {
                    errorProcess(data);
                }
            });
            showClinic(index, type);
        }
    }

    /************************end*****************************临床相关函数********************************end****************************/


    function showQuestionnaire(index_q, type1) {
         type = type1;
         index = index_q
         if(type==0){
             temp="outpatient";
         }
         else if(type==1){
             temp="emergency";
         }
         else if(type==2){
             temp="hospital"
         }
         var head_1 = 1;
         var head_2 = 1;
         var head_3 = 1;
         $("#"+temp+"-"+index+"-ESStable tbody").empty();
         $("#"+temp+"-"+index+"-MBQtable tbody").empty();
         $("#"+temp+"-"+index+"-SGRQtable tbody").empty();
         $("#"+temp+"-"+index+"-ESStable thead").empty();
         $("#"+temp+"-"+index+"-MBQtable thead").empty();
         $("#"+temp+"-"+index+"-SGRQtable thead").empty();
         $("#"+temp+"-"+index+"-ESStable caption").empty();
         $("#"+temp+"-"+index+"-MBQtable caption").empty();
         $("#"+temp+"-"+index+"-SGRQtable caption").empty();
         $.ajax({
             type: "GET",
             url: "/i25/",
             data: {"P_id":patientId,"type":type,"S_id":S_id[index],"kind":"1"},
             dataType: "json",
             success: function (json_data) {
                 $.each(json_data,function (i,item) {
                    if(item.kind == "0"){
                        if(head_1 == 1){
                            $("#"+temp+"-"+index+"-"+"ESStable caption").append("Epworth嗜睡量表（ESS）");
                            $("#"+temp+"-"+index+"-"+"ESStable thead").append('<tr>'+
                              '<th class="table-small tlabel3" style="text-align:center">编号</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">填表日期</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">分数</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">编辑</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">删除</th>'+
                              '</tr>');
                              head_1 = 0;
                        }
                        $("#"+temp+"-"+index+"-"+"ESStable").append(
                            "<tr>"+
                                "<td>"+item.ESS_id+"</td>"+
                                "<td>"+item.date+"</td>"+
                                "<td>"+item.score+"</td>"+
                                '<td><a data-toggle="modal" href="#ESSDetails" onclick="editESS('+item.ESS_id+')"><i class=\"fa fa-edit\"></i></td>'+
                                '<td><a onclick="deleteQuestionnaire('+item.ESS_id+',0'+','+index+','+type+')"><i class=\"fa fa-times\"></i></td>'+
                            "</tr>");
                    }
                    else if(item.kind == "1"){
                        if(head_2 == 1){
                            $("#"+temp+"-"+index+"-"+"MBQtable caption").append("改良柏林问卷（MBQ）");
                            $("#"+temp+"-"+index+"-"+"MBQtable thead").append('<tr>'+
                              '<th class="table-small tlabel3" style="text-align:center">编号</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">填表日期</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">BMI</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">编辑</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">删除</th>'+
                              '</tr>');
                              head_2 = 0;
                        }
                        $("#"+temp+"-"+index+"-"+"MBQtable").append(
                            "<tr>"+
                                "<td>"+item.MBQ_id+"</td>"+
                                "<td>"+item.date+"</td>"+
                                "<td>"+item.BMI+"</td>"+
                                '<td><a data-toggle="modal" href="#MBQDetails" onclick="editMBQ('+item.MBQ_id+')"><i class=\"fa fa-edit\"></i></td>'+
                                '<td><a onclick="deleteQuestionnaire('+item.MBQ_id+',1'+','+index+','+type+')"><i class=\"fa fa-times\"></i></td>'+
                            "</tr>");
                    }
                    else if(item.kind == "2"){
                        if(head_3 == 1){
                            $("#"+temp+"-"+index+"-"+"SGRQtable caption").append("SGRQ生活质量问卷");
                            $("#"+temp+"-"+index+"-"+"SGRQtable thead").append('<tr>'+
                              '<th class="table-small tlabel3" style="text-align:center">编号</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">填表日期</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">其他</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">编辑</th>'+
                              '<th class="table-small tlabel3" style="text-align:center">删除</th>'+
                              '</tr>');
                              head_3 = 0;
                        }
                        $("#"+temp+"-"+index+"-"+"SGRQtable").append(
                            "<tr>"+
                                "<td>"+item.SGRQ_id+"</td>"+
                                "<td>"+item.date+"</td>"+
                                "<td>"+item.score+"</td>"+
                                '<td><a data-toggle="modal" href="#SGRQDetails" onclick="editSGRQ('+item.SGRQ_id+')"><i class=\"fa fa-edit\"></i></td>'+
                                '<td><a onclick="deleteQuestionnaire('+item.SGRQ_id+',2'+','+index+','+type+')"><i class=\"fa fa-times\"></i></td>'+
                            "</tr>");
                    }
                });
             },
             error:function(data){
                    errorProcess(data);
             }

         });
    }

    function addQuestionnaire(Q_index, type_t){
        type = type_t;
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

    function deleteQuestionnaire(id, kind, index_t, type_t) {
        if(confirm("确定删除")==1) {
            $.ajax({
                type: "GET",
                url: "/i31/",
                data: {"id": id, kind: kind},
                dataType: "json",
                success: function (data) {
                    successProcess(data);

                },
                error:function(data){
                    errorProcess(data);
                }

            });
            showQuestionnaire(index_t, type_t);
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
            $.ajax({
                type: "POST",
                url: "/i29/",
                data: str,
                dataType: "json",
                success: function (data) {
                    successProcess(data);

                },
                error:function(data){
                    errorProcess(data);
                }
            });
            showQuestionnaire(index, type);
        }
    }

    function editESS(ESS_id) {

        $.ajax({
            type: "GET",
            url: "/i30/",
            data: {"id":ESS_id,type:"0"},
            dataType: "json",
            success: function (json_data) {
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
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function editMBQ(MBQ_id) {
        $.ajax({
            type: "GET",
            url: "/i30/",
            data: {"id":MBQ_id,type:"1"},
            dataType: "json",
            success: function (json_data) {
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

                var sum = 0;
                if($('input:radio[name=q1]:checked').val()=="1"){
                    sum = sum + 1;
                }
                if($('input:radio[name=q2]:checked').val()=="3"||$('input:radio[name=q2]:checked').val()=="4"){
                    sum = sum + 1;
                }
                if($('input:radio[name=q3]:checked').val()=="1"||$('input:radio[name=q3]:checked').val()=="2"){
                    sum = sum + 1;
                }
                if($('input:radio[name=q4]:checked').val()=="1"){
                    sum = sum + 1;
                }
                if($('input:radio[name=q5]:checked').val()=="1"||$('input:radio[name=q5]:checked').val()=="2"){
                    sum = sum + 2;
                }
                console.log(sum);
                $("#MBQ input[name='sum_1']").val(sum);
                var sum = 0;
                if($('input:radio[name=q6]:checked').val()=="1"||$('input:radio[name=q6]:checked').val()=="2"){
                    sum = sum + 1;
                }
                if($('input:radio[name=q8]:checked').val()=="1"){
                    sum = sum + 1;
                }
                if($('input:radio[name=q7]:checked').val()=="1"||$('input:radio[name=q7]:checked').val()=="2"){
                    sum = sum + 1;
                }
                console.log(sum);
                $("#MBQ input[name='sum_2']").val(sum);
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function editSGRQ(SGRQ_id) {
        $.ajax({
            type: "GET",
            url: "/i30/",
            data: {"id":SGRQ_id,type:"2"},
            dataType: "json",
            success: function (json_data) {
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
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function showAandAE(A_index, type1){
        type = type1;
        index = A_index;
        console.log(type,"######");
        if(type==0){
            temp="outpatient";
        }
        else if(type==1){
            temp="emergency";
        }
        else if(type==2){
            temp="hospital"
        }
        var head_1 = 1;
        var head_2 = 1;
        console.log(type)
        $("#"+temp+"-"+A_index+"-"+"AEtable tbody").empty();
        console.log("#"+temp+"-"+A_index+"-"+"AEtable thead")
        $("#"+temp+"-"+A_index+"-"+"AEtable thead").empty();
        console.log("@@@@@1")
        $("#"+temp+"-"+A_index+"-"+"AEtable caption").empty();
        console.log("@@@@@1")
        $.ajax({
            type: "GET",
            url: "/i32/",
            data: {P_id:patientId,type:type,S_id:S_id[A_index],kind:"0"},
            dataType: "json",
            success: function (json_data) {
                $.each(json_data,function (index,item) {
                    if(head_1 == 1){
                        $("#"+temp+"-"+A_index+"-"+"AEtable caption").append("辅助检查");
                        $("#"+temp+"-"+A_index+"-"+"AEtable thead").append('<tr>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">编号</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">日期</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">类型</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">上传者</th>'+
                        '<th style="text-align:center;background:#72a9e2;">描述</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">查看</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">编辑</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">手动填写</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">删除</th>'+
                        '</tr>');
                        head_1 = 0;
                    }
                    console.log(item)
                    if(item.D_id = "0"){
                        str_temp = patientNameParse(patientId);
                    }
                    else{
                    console.log(item.D_id)
                        str_temp = userNameParse(item.D_id);
                    }
                    $("#"+temp+"-"+A_index+"-"+"AEtable tbody").append(
                        "<tr>"+
                            "<td>"+item.AE_id+"</td>"+
                            "<td>"+item.date+"</td>"+
                            "<td>"+AEtypeParse(item.AE_type)+"</td>"+
                            "<td>"+str_temp+"</td>"+
                            "<td>"+item.description+"</td>"+
                            "<td><a  data-toggle=\"modal\" href=\"#imageDetails\" onclick=\"showAorAEImage('"+item.doc+"')\">"+"<i class=\"fa fa-search\"  style=\"color:black\">"+"</td>"+
                            '<td><a  data-toggle="modal" href="#AccessoryExaminationDetails" onclick="editAE('+item.AE_id+')"><i class=\"fa fa-edit\"  style=\"color:black\"></i></td>'+
                            '<td><a  data-toggle="modal" href="#'+AEtypeParse2(item.AE_type)+'Details" onclick="edit'+AEtypeParse2(item.AE_type)+'('+item.AE_id+','+item.AE_type+')"><i class=\"fa fa-file-text-o\"  style=\"color:black\"></td>'+
                            '<td><a  data-toggle="modal" href="#" onclick="deleteAorAE('+item.AE_id+',0'+','+A_index+','+type+')"><i class=\"fa fa-times\"  style=\"color:black\"></td>'+
                        "</tr>"
                    )
                });
            },
            error:function(data){
                errorProcess(data);
            }
        });

        $("#"+temp+"-"+A_index+"-"+"Atable tbody").empty();
        $("#"+temp+"-"+A_index+"-"+"Atable thead").empty();
        $("#"+temp+"-"+A_index+"-"+"Atable caption").empty();
        $.ajax({
            type: "GET",
            url: "/i32/",
            data: {P_id:patientId,type:type,S_id:S_id[A_index],kind:"1"},
            dataType: "json",
            success: function (json_data) {
            console.log(json_data)
                $.each(json_data,function (index,item) {
                    if(head_2 == 1){
                        $("#"+temp+"-"+A_index+"-"+"Atable caption").append("附件");
                        $("#"+temp+"-"+A_index+"-"+"Atable thead").append('<tr>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">编号</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">日期</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">上传者</th>'+
                        '<th style="text-align:center;background:#72a9e2;">描述</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">查看</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">编辑</th>'+
                        '<th class="table-small" style="text-align:center;background:#72a9e2;">删除</th>'+
                        '</tr>');
                        head_2 = 0;
                    }
                    console.log(item)
                    if(item.D_id = "0"){
                        str_temp = patientNameParse(patientId);
                    }
                    else{
                        str_temp = userNameParse(item.D_id);
                    }
                    $("#"+temp+"-"+A_index+"-"+"Atable tbody").append(
                        "<tr>"+
                            "<td>"+item.A_id+"</td>"+
                            "<td>"+item.date+"</td>"+
                            "<td>"+str_temp+"</td>"+
                            "<td>"+item.description+"</td>"+
                            "<td><a  data-toggle=\"modal\" href=\"#imageDetails\" onclick=\"showAorAEImage('"+item.doc+"')\">"+"<i class=\"fa fa-search\"  style=\"color:black\">"+"</td>"+
                            '<td><a  data-toggle="modal" href="#AttachInfoDetails" onclick="editA('+item.A_id+')"><i class=\"fa fa-edit\" style=\"color:black\"></i></td>'+
                            '<td><a  data-toggle="modal" href="#" onclick="deleteAorAE('+item.A_id+',1'+','+A_index+','+type+')"><i class=\"fa fa-times\"  style=\"color:black\"></td>'+
                        "</tr>"
                    )
                });
            },
            error:function(data){
                errorProcess(data);
            }
        });

    }

    function showAorAEImage(doc){
    console.log(doc);
        var pic = document.getElementById("picture");
        pic.src = "/media/"+doc;
        imgDir = "/media/"+doc;

    }

    function showImage(){
        window.open(imgDir);
//        return false;
    }

    function addAorAE(A_index, type_t){
        type = type_t;
        index = A_index;

        $('#AccessoryExamination input[name="date"]').val("");
        $('#AccessoryExamination input[name="AE_id"]').val("");
        $('#AccessoryExamination textarea[name="description"]').val("");
        $("#AccessoryExamination :radio").attr("checked",false);
        $("#AccessoryExamination :input[name='P_id']").val(patientId);
        $("#AccessoryExamination :input[name='S_id']").val(S_id[index]);
        $("#AccessoryExamination :input[name='kind']").val("0");
        $("#AccessoryExamination :input[name='type']").val(type);

        $("#AttachInfo :text").val("");
        $("#AttachInfo :radio").attr("checked",false);
        $("#AttachInfo :input[name='date']").val("");
        $("#AttachInfo :input[name='A_id']").val("");
        $("#AttachInfo :input[name='description']").val("");
        $("#AttachInfo :input[name='P_id']").val(patientId);
        $("#AttachInfo :input[name='S_id']").val(S_id[index]);
        $("#AttachInfo :input[name='kind']").val("1");
        $("#AttachInfo :input[name='type']").val(type);
    }

    function submitAorAE(kind){
        var str = "";
        if(kind=="0"){
            var formData = new FormData($("#AccessoryExamination")[0])
        }
        else{
            var formData = new FormData($("#AttachInfo")[0])
        }

        if(confirm("确定提交")==1){
            $.ajax({
              url: '/i33/' ,
              type: 'POST',
              data: formData,
              dataType:"json",
              async: false,
              cache: false,
              contentType: false,
              processData: false,
              success: function (data) {
				successProcess(data);
              },
              error: function (returndata) {
                  alert(returndata);
              }
            });
            showAandAE(index, type);
         }
    }

    function editAE(AE_id) {
        $.ajax({
            type: "GET",
            url: "/i35/",
            data: {AE_id: AE_id, kind: "0"},
            dataType: "json",
            success: function (json_data) {
                item = json_data;
                $("#AccessoryExamination input[name='AE_type'][value='"+item.AE_type+"']").attr('checked',true);
                $("#AccessoryExamination input[name='date']").val(item.date);
                $("#AccessoryExamination textarea[name='description']").val(item.description);
                $("#AccessoryExamination input[name='AE_id']").val(item.AE_id);
                $("#AccessoryExamination :input[name='P_id']").val(item.P_id);
                $("#AccessoryExamination :input[name='S_id']").val(item.S_id);
                $("#AccessoryExamination :input[name='kind']").val("0");
                $("#AccessoryExamination :input[name='type']").val(item.type);
            },
            error:function(data){
                errorProcess(data);
            }
        });
    }

    function editA(A_id) {
        $.ajax({
            type: "GET",
            url: "/i35/",
            data: {A_id: A_id, kind: "1"},
            dataType: "json",
            success: function (json_data) {
                item = json_data;
                $("#AttachInfo input[name='date']").val(item.date);
                $("#AttachInfo textarea[name='description']").val(item.description);
                $("#AttachInfo input[name='A_id']").val(item.A_id);
                $("#AttachInfo :input[name='P_id']").val(item.P_id);
                $("#AttachInfo :input[name='S_id']").val(item.S_id);
                $("#AttachInfo :input[name='kind']").val("1");
                $("#AttachInfo :input[name='type']").val(item.type);
            },
            error:function(data){
                errorProcess(data);
            }
        });

    }

    function deleteAorAE(id, kind, index_t, type_t) {
        if(confirm("确定删除")==1) {
            $.ajax({
            type: "GET",
            url: "/i34/",
            data: {id: id, kind: kind},
            dataType: "json",
            success: function (data) {
                successProcess(data);
            },
            error:function(data){
                errorProcess(data);
            }
        });
        showAandAE(index_t, type_t);
        }
    }


    function getAppInfoNum(){
        $.ajax({
            type:"GET",
            url:"/i101/",
            data:{P_id : patientId},
            dataType:"json",
            success: function(json_data){
                console.log(json_data);
                if(json_data['result']!="0"){
                    $("#newAdded").html("+"+json_data['result']);
                }
                else{
                    $("#newAdded").hide();
                }
            },
            error: function(json_data){
                errorProcess(json_data);
            }
        });
    }

    function calculateCATSum(){
        $(".sum").change(function(){
            var sum = 0;
            for(ii=1;ii<9;ii++){
                sum = sum + parseInt($('input:radio[name=ess'+ii.toString()+']:checked').val())-1;
            }
            console.log(sum);
            $("#ESS input[name='score']").val(sum);
        });
    }

    function calculateMBQSum1(){
        $(".mbq1").change(function(){
            var sum = 0;
            if($('input:radio[name=q1]:checked').val()=="1"){
                sum = sum + 1;
            }
            if($('input:radio[name=q2]:checked').val()=="3"||$('input:radio[name=q2]:checked').val()=="4"){
                sum = sum + 1;
            }
            if($('input:radio[name=q3]:checked').val()=="1"||$('input:radio[name=q3]:checked').val()=="2"){
                sum = sum + 1;
            }
            if($('input:radio[name=q4]:checked').val()=="1"){
                sum = sum + 1;
            }
            if($('input:radio[name=q5]:checked').val()=="1"||$('input:radio[name=q5]:checked').val()=="2"){
                sum = sum + 2;
            }
            console.log(sum);
            $("#MBQ input[name='sum_1']").val(sum);

        });
    }
    function calculateMBQSum2(){
        $(".mbq2").change(function(){
            var sum = 0;
            if($('input:radio[name=q6]:checked').val()=="1"||$('input:radio[name=q6]:checked').val()=="2"){
                sum = sum + 1;
            }
            if($('input:radio[name=q8]:checked').val()=="1"){
                sum = sum + 1;
            }
            if($('input:radio[name=q7]:checked').val()=="1"||$('input:radio[name=q7]:checked').val()=="2"){
                sum = sum + 1;
            }
            console.log(sum);
            $("#MBQ input[name='sum_2']").val(sum);

        });
    }

    function showAddr(id){
        $("#"+id).show();
    }

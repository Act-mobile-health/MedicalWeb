function showOutpatient(){
        type = 0;
        S_id = [];
        $("#outpatient").empty();
        $.ajax({
            type:"GET",
            url:"/i21/",
            data:{"P_id":patientId,"type":type},
            dataType:"json",
            success:function (json_data) {
				$.each(json_data,function (index,item){
					S_id.push(item.OPS_id);
					var descDiv = document.createElement('div');
					$("#outpatient").append(descDiv);
					descDiv.className = "row";
					descDiv.innerHTML = GenerateTab1(index)+GenerateTab2(index)+GenerateTab3(index)+GenerateTab4(index);
				});
            },
            error:function (json_data) {
                errorProcess(json_data);
            }
        });
    }
    function showEmergency(){
        type = 1;
        S_id = [];
        $("#hospital").empty();
        temp = document.getElementById("hospital");
        $.ajax({
            type:"GET",
            url:"/i21/",
            data:{"P_id":patientId,"type":type},
            dataType:"json",
            success:function (json_data) {
                $.each(json_data,function (index,item){
                    S_id.push(item.id);
                    type = 1;
                    temp.innerHTML = temp.innerHTML+'<div class="timeline-row">'+
                    '<div class="timeline-time"><small style="color:black;">'+item['date']+'</small>'+item['place']+'</div>'+
                    '<div class="timeline-icon">'+
                    '<div class="'+colorForOEH("1")+'"><i class="'+iconForOEH("1")+'"></i></div>'+
                    '</div>'+
                    '<div class="panel timeline-content">'+
                    '<div class="panel-body">'+
                    GenerateTab1(index)+GenerateTab2(index)+GenerateTab3(index)+GenerateTab4(index)+
                    '</div>'+
                    '</div>'+
                    '</div>';
                });
            },
            error:function (json_data) {
                errorProcess(json_data);
            }
        });
    }

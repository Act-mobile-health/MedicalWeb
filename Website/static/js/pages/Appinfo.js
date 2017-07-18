function showAPP(){
    calendar();
    showMap();
    var width = $(window).width() * 0.75;
    $("#bar-1").width(width);
    $("#bar-2").width(width);
    $("#bar-3").width(width);
    var myChart1 = echarts.init(document.getElementById('bar-1'));
    var myChart2 = echarts.init(document.getElementById('bar-2'));
    var myChart3 = echarts.init(document.getElementById('bar-3'));
    var myDate = new Date()
    var x = [];
    var y = [];
    var z = [];
    var x_pm = [];
    var y_pm = [];
    showMR();
    $.ajax({
        type:"GET",
        url:"/i90/",
        data:{"P_id":patientId},
        dataType:"json",
        async: false,
        success:function (json_data) {
        console.log(Object.keys(json_data[0]).length);
            for(i=1;i<Object.keys(json_data[0]).length+1;i++){
                x[i-1] = json_data[0][i.toString()]
                y[i-1] = -1;
                z[i-1] = -1;
            }
//            console.log(json_data[1].length)
            for(i=0;i<json_data[1].length;i=i+1){
                temp = json_data[1][i]['catSum'];
                temp_mrc = json_data[1][i]['mrc'];
                index = getIndex(x,json_data[1][i]['date'])
                y[index] = parseInt(temp);
                z[index] = parseInt(temp_mrc);
            }
//            console.log(x,y,z);

        },
        error:function(json_data){
            errorProcess(json_data);
        }
    });
    $.ajax({
        type:"GET",
        url:"/i91/",
        data:{"P_id":patientId},
        dataType:"json",
        async: false,
        success:function (json_data) {
        console.log(Object.keys(json_data[0]).length)
            for(i=1;i<Object.keys(json_data[0]).length+1;i++){
                x_pm[i-1] = json_data[0][i.toString()]
                y_pm[i-1] = -1;
            }
            console.log(x_pm)
            for(i=0;i<json_data[1].length;i=i+1){
                temp = json_data[1][i]['exposure'];
                index = getIndex(x_pm,json_data[1][i]['date'])
                y_pm[index] = parseInt(temp);
            }

        },
        error:function(json_data){
            errorProcess(json_data);
        }
    });

    option_cat = {
        title: {
            text: '近半月患者CAT总分',
            subtext: '未上传默认为-1'
        },
        tooltip: {
            trigger: 'axis'
//            formatter: '{b0}: {c0}<br />{b1}: {c1}'
        },
        legend: {
            data:['CAT总分']
        },
        toolbox: {
            show: true,
            feature: {
                dataZoom: {
                    yAxisIndex: 'none'
                },
                dataView: {readOnly: true},
                magicType: {type: ['line', 'bar']},
                restore: {},
                saveAsImage: {}
            }
        },
        xAxis:  {
            type: 'category',
            boundaryGap: true,
            data: x
        },
        yAxis: {
            type: 'value',
            boundaryGap: false,
            axisLabel: {
                formatter: '{value}'
            }
        },
        series: [
            {
                name:'CAT总分',
                type:'line',
                data:y,
                markPoint: {
                    data: [
                        {type: 'max', name: '最大值'},
                        {type: 'min', name: '最小值'}
                    ]
                },
                markLine: {
                    data: [
                        {type: 'average', name: '平均值'}
                    ]
                }
            },
        ]
    };
    option_mrc = {
        title: {
            text: '近半月患者MRC得分',
            subtext: '未上传默认为-1'
        },
        tooltip: {
            trigger: 'axis'
//            formatter: '{b0}: {c0}<br />{b1}: {c1}'
        },
        legend: {
            data:['MRC得分']
        },
        toolbox: {
            show: true,
            feature: {
                dataZoom: {
                    yAxisIndex: 'none'
                },
                dataView: {readOnly: true},
                magicType: {type: ['line', 'bar']},
                restore: {},
                saveAsImage: {}
            }
        },
        xAxis:  {
            type: 'category',
            boundaryGap: true,
            data: x
        },
        yAxis: {
            type: 'value',
            boundaryGap: false,
            axisLabel: {
                formatter: '{value}'
            }
        },
        series: [
            {
                name:'MRC得分',
                type:'bar',
                data:z,
                markPoint: {
                    data: [
                        {type: 'max', name: '最大值'},
                        {type: 'min', name: '最小值'}
                    ]
                },
                markLine: {
                    data: [
                        {type: 'average', name: '平均值'}
                    ]
                }
            },
        ]
    };
    option_pm = {
        title: {
            text: '近半月患者PM暴露量',
            subtext: '未上传默认为-1'
        },
        tooltip: {
            trigger: 'axis'
//            formatter: '{b0}: {c0}<br />{b1}: {c1}'
        },
        legend: {
            data:['PM暴露量']
        },
        toolbox: {
            show: true,
            feature: {
                dataZoom: {
                    yAxisIndex: 'none'
                },
                dataView: {readOnly: true},
                magicType: {type: ['line', 'bar']},
                restore: {},
                saveAsImage: {}
            }
        },
        xAxis:  {
            type: 'category',
            boundaryGap: true,
            data: x_pm
        },
        yAxis: {
            type: 'value',
            boundaryGap: false,
            axisLabel: {
                formatter: '{value}'
            }
        },
        series: [
            {
                name:'PM暴露量',
                type:'line',
                data:y_pm,
                markPoint: {
                    data: [
                        {type: 'max', name: '最大值'},
                        {type: 'min', name: '最小值'}
                    ]
                },
                markLine: {
                    data: [
                        {type: 'average', name: '平均值'}
                    ]
                }
            },
        ]
    };
    myChart1.setOption(option_cat);
    myChart2.setOption(option_mrc);
    myChart3.setOption(option_pm);
}
function showMR(){
    var before = "";
    var after = "";
    var str_before = "";
    var str_after = "";
    var lamb = 1;
    $("#medicineChange tbody").empty();
//    $("#medicineChange thead").empty();
//    $("#medicineChange caption").empty();
    $.ajax({
        type: "GET",
        url: "/i92/",
        data: {P_id:patientId},
        dataType: "json",
        success: function (json_data) {
        console.log(json_data)
            $.each(json_data,function (index,item) {
            console.log(item)
                for(p=0;p<item.info.length;p++){
//            console.log(item.info[p])
                    if(item.info[p].sign == "0"){
                        before = item.info[p].doc;
                    }
                    else{
                        after = item.info[p].doc;
                    }
                }
//                if(lamb == 1){
//                    $("#medicineChange caption").append("换药记录");
//                    $("#medicineChange thead").append('<tr>'+
//                    '<th class="table-small" style="text-align:center;background:#72a9e2;">日期</th>'+
//                    '<th class="table-small" style="text-align:center;background:#72a9e2;">患者编号</th>'+
//                    '<th class="table-small" style="text-align:center;background:#72a9e2;">换药前</th>'+
//                    '<th class="table-small" style="text-align:center;background:#72a9e2;">换药后</th>'+
//                    '<th class="table-small" style="text-align:center;background:#72a9e2;">删除</th>'+
//                    '</tr>');
//                    lamb = 0;
//                }
                if(before!=""){
                    str_before = '<td><a class="pics" data-toggle="modal" href="#imageDetails" onclick="showAorAEImage(\''+before+'\')">'+
                        '<img class="thumb" src="/media/'+before+'" width="75px" height="75px"/>'+
						'<span><img src="/media/'+before+'" width="800px" height="570px" title="换药前"/></span></a></td>';
                }
                else{
                    str_before = "<td style='vertical-align:middle;color:black;'>未上传</td>";
                }
                if(after!=""){
                    str_after = '<td><a class="pics" data-toggle="modal" href="#imageDetails" onclick="showAorAEImage(\''+after+'\')">'+
                        '<img class="thumb" src="/media/'+after+'" width="75px" height="75px"/>'+
						'<span><img src="/media/'+after+'" width="800px" height="570px" title="换药后"/></span></a></td>';
                }
                else{
                    str_after = "<td style='vertical-align:middle;color:black;'>未上传</td>";
                }
                console.log(before, after);
                console.log(str_after,str_before)
                $("#medicineChange tbody").append(
                    "<tr>"+
                        "<td style='vertical-align:middle;color:black;'>"+item.date.replace("-","").replace("-","")+"</td>"+
//                        "<td>"+patientId+"</td>"+
                        str_before+
                        str_after+
                    "</tr>"
//                        "<td><a  data-toggle=\"modal\" href=\"#imageDetails\" onclick=\"showAorAEImage('"+before+"')\">"+"<i class=\"fa fa-search\"  style=\"color:black\">"+"</td>"+
//                        "<td><a  data-toggle=\"modal\" href=\"#imageDetails\" onclick=\"showAorAEImage('"+after+"')\">"+"<i class=\"fa fa-search\"  style=\"color:black\">"+"</td>"+
//                        '<td><a  data-toggle="modal" href="#" onclick="deleteMC('+item.id+')"><i class=\"fa fa-times\"  style=\"color:black\"></td>'+
                );
                before = "";
                after = "";
            });
        },
        error:function(data){
            errorProcess(data);
        }
    });
}
function deleteMC(id){
    $.ajax({
        type: "GET",
        url: "/i93/",
        data: {id:id},
        dataType: "json",
        success: function (json_data) {
            successProcess(json_data);
            showMR();
        },
        error: function(json_data){
            errorProcess(json_data);
        }
    })
}

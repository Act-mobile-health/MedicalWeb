function showAPP(){
    var width1 = $(window).width() * 0.8;
    $("#bar-1").width(width1);
    $("#bar-2").width(width1);
    $("#bar-3").width(width1);
    var myChart1 = echarts.init(document.getElementById('bar-1'));
    var myChart2 = echarts.init(document.getElementById('bar-2'));
    var myChart3 = echarts.init(document.getElementById('bar-3'));
    var myDate = new Date()
    var x = [];
    var y = [];

    $.ajax({
        type:"GET",
        url:"/i90/",
        data:{"P_id":patientId},
        dataType:"json",
        async: false,
        success:function (json_data) {
            for(i=1;i<16;i++){
                x[i-1] = json_data[0][i.toString()]
                y[i-1] = -1;
            }
            console.log(json_data[1].length)
            for(i=0;i<json_data[1].length;i=i+1){
                temp = json_data[1][i]['catSum'];
                index = getIndex(x,json_data[1][i]['date'])
                y[index] = parseInt(temp);
            }
            console.log(x,y);

        },
        error:function(json_data){
            errorProcess(json_data);
        }
    });
            console.log(x,y);

    option = {
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
    myChart1.setOption(option);
    myChart2.setOption(option);
    myChart3.setOption(option);
}

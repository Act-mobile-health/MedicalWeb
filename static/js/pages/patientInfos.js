/**
 * Created by 91034 on 2017/3/19.
 */
$(document).ready(function () {
    //添加患者
    $("#submit").click(function (){
       submitAddPatient();
    });

})

    //添加患者个人信息
    function submitAddPatient() {
        if(confirm("确定提交？")==1){
            post("",$("#PatientInfo").serialize(),function (result) {
                if(result==0)
                    alert("添加成功");
                else if(result==-1)
                    alert("添加失败");
            })
        }
    }

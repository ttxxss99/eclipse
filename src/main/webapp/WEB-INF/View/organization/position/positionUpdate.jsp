<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8" />
    <link rel="shortcut icon" href="/favicon.ico" type="../image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<script>
    let zy = {
        //初始化下拉列表框
        selectInit:()=>{
            let url = "/organization/position/positionAddInit";
            let totalText;
            $.post(url,{},(json)=>{
                for (let key in json){
                    /*  console.log(key);
                      console.log(json[key]);*/
                    let text = "<option id="+json[key]+" value="+json[key]+">"+key+"</option>";
                    totalText += text;

                }//for--end
                $("#selectInput").append(totalText);
            })//post---end


        },//selectInit----end
        checkedSelect:()=>{
            //动态绑定select的默认值
            let value = ${deptId};
            layui.use('form', function(){
                var form = layui.form;
                $("#selectInput").val(value);
                form.render(null, 'test1'); //更新 lay-filter="test1" 所在容器内的全部表单状态
                //各种基于事件的操作，下面会有进一步介绍
            });



        },
    }//-----end
    zy.selectInit();
    zy.checkedSelect();
</script>
<form class="layui-form" id = "form" lay-filter="test1">
    <input hidden id="positionId" value="${id}">
    <!--职位名称-->
    <div class="layui-form-item">
        <label for="positionName" class="layui-form-label">
            <span class="x-red">*</span>职位名称
        </label>
        <div class="layui-input-inline">
            <input type="text" id="positionName" name="positionName" required="" lay-verify="required"
                   placeholder="请输入内容"  value="${name}"   autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">
            <span class="x-red">*</span>职位名称
        </div>
    </div>
    <!--职位备注-->
    <div class="layui-form-item">
        <label for="deptMark" class="layui-form-label layui-form-text">
            <span class="x-red"></span>备注
        </label>

        <div class="layui-input-inline">
                    <textarea name="deptMark" id = "positionMark" placeholder="请输入内容" class="layui-textarea" ay-verify="required"
                              autocomplete="off" class="layui-input"> ${mark}</textarea>
        </div>
        <div class="layui-form-mid layui-word-aux">
            <span class="x-red"></span>备注
        </div>
    </div>
    <!--下拉框选择部门-->
    <div class="layui-form-item">
        <label class="layui-form-label">所属部门</label>
        <div class="layui-input-inline">
            <select name="belongDept" id="selectInput" lay-filter="belongDept">
                <option value=""></option>
            </select>
        </div>

    </div>
    <div class="layui-form-item">
        <label  class="layui-form-label">
        </label>
        <button type="layui-btn"  class="layui-btn" lay-filter="add" lay-submit="">
            修改
        </button>
    </div>
</form>
</div>




<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;
        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            $.post("/organization/position/updateAPosition",{
                    "positionId":$("#positionId").val(),
                    "positionName":$("#positionName").val(),
                    "positionMark":$("#positionMark").val(),
                    "selectInput":$("#selectInput").val()
                }
            );

            layer.alert("修改成功", {icon: 6},function () {
                // 获得frame索引
                parent.reloadTable();
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
        });
    });



</script>

</body>

</html>
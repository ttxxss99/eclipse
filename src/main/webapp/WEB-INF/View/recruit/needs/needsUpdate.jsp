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
    <script type = "text/javascript" src = "/js/recruit/recruitApi.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-body">
        <form class="layui-form" id = "form"<%-- action ="/organization/company/addACompany" method="post"--%>>
            <!-- 技能要求 -->
			<div class="layui-form-item">
				<label for="skillsrequired" class="layui-form-label"> <span
					class="x-red">*</span>技能要求
				</label>
				<div class="layui-input-inline">
					<input type="text" id="skillsrequired" name="skillsrequired"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${skillsrequired }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>技能要求
				</div>
			</div>
			<!-- 招聘人数 -->
			<div class="layui-form-item">
				<label for="hiring" class="layui-form-label"> <span
					class="x-red">*</span>招聘人数
				</label>
				<div class="layui-input-inline">
					<input type="text" id="hiring" name="hiring" required=""
						lay-verify="required" autocomplete="off" class="layui-input" value="${hiring }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>招聘人数
				</div>
			</div>
			<!-- 薪资预算 -->
			<div class="layui-form-item">
				<label for="wagebudget" class="layui-form-label"> <span
					class="x-red">*</span>薪资预算
				</label>
				<div class="layui-input-inline">
					<input type="text" id="wagebudget" name="wagebudget" required=""
						lay-verify="required" autocomplete="off" class="layui-input" value="${wagebudget }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>薪资预算
				</div>
			</div>
			<!-- 发起时间 -->
			<div class="layui-form-item">
				<!-- <div class="layui-input-inline">
                    <input type="date" id="initiatetime" name="initiatetime" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div> -->
				<div class="layui-inline">
					<label for="initiatetime" class="layui-form-label"> <span
						class="x-red">*</span>发起时间
					</label>
					<div class="layui-input-inline">
						<input type="text" class="layui-input" id="initiatetime" name="initiatetime"
							placeholder="yyyy-MM-dd" value="${initiatetime }">
					</div>
					<div class="layui-form-mid layui-word-aux">
						<span class="x-red">*</span>发起时间
					</div>
				</div>
			</div>

			<!-- 状态 -->
			<div class="layui-form-item">
				<label for="state" class="layui-form-label"> <span
					class="x-red">*</span>状态
				</label>
				<div class="layui-input-inline">
					<select id="state" name="state">
						<option value="">请选择</option>
						<option value="1">已处理</option>
						<option value="2">未处理</option>
					</select>
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>状态
				</div>
			</div>
			<!-- 备注 -->
			<div class="layui-form-item">
				<label for="mark" class="layui-form-label"> <span
					class="x-red">*</span>备注
				</label>
				<div class="layui-input-inline">
					<input type="text" id="mark" name="mark"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${mark }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>备注
				</div>
			</div>
			<!-- 发布人 -->
			<div class="layui-form-item">
				<label for="empId" class="layui-form-label"> <span
					class="x-red">*</span> 发布人
				</label>
				<div class="layui-input-inline">
					<select id="empId" name="empId">
						<option value="">请选择</option>
					</select>
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span> 发布人
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
    layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  //常规用法
		  laydate.render({
		    elem: '#initiatetime'
		  });
	});
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
            var form = layui.form
                ,layer = layui.layer;
            //监听提交
            form.on('submit(add)', function(data){
                console.log(data);

                $.post("/recruit/needs/needsUpdateAjax",{
                	"id":${id},
                    "skillsrequired":$("#skillsrequired").val(),
                    "hiring":$("#hiring").val(),
                    "wagebudget":$("#wagebudget").val(),
                    "initiatetime":$("#initiatetime").val(),
                    "state":$("#state option:checked").val(),
                    "mark":$("#mark").val(),
                    "empId":$("#empId option:checked").val()
                    }
             )

                layer.alert("修改成功", {icon: 6},function () {
                    // 获得frame索引
                    parent.reloadTable();
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    parent.layer.close(index);
                });
                return false;
            });
            let url ="/recruit/needs/empListAjax";
            $.post(url,
                {},
                (json)=>{
                    let data = json.data;
                    let totalText ;
                    $.each(data,(index,item)=>{
                    let text ="<option value='"+item.id+"'>"+item.name+"</option>";
                            totalText+=text;
                        }//匿名 ---end
                    )//each----end
                    //console.log(totalText);
                    $("#empId").append(totalText);
                    
                    $("#state option[value='"+ ${state}+"']").prop("selected",true);
                    $("#empId option[value='"+ ${empId}+"']").prop("selected",true);
                    
                    form.render('select'); //刷新select选择框渲染
                    //alert($("#empName option:checked").val())
                }//success end
            )//-------post end
            
            
        });

        


    </script>

  </body>

</html>
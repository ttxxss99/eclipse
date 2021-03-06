<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="UTF-8">
<title>应聘者</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8" />
<link rel="shortcut icon" href="/favicon.ico" type="../image/x-icon" />
<link rel="stylesheet" href="/css/font.css">
<link rel="stylesheet" href="/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/xadmin.js"></script>
<script type = "text/javascript" src = "/js/recruit/recruitCandidateApi.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-body">
		<form class="layui-form" id="form">
			<!-- 名字 -->
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>名字
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${name }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>名字
				</div>
			</div>
			<!-- 性别 -->
			<div class="layui-form-item">
				<label form="sex" class="layui-form-label"> <span
					class="x-red">*</span>性别
				</label>
				<div class="layui-input-inline">
					<select id="sex" name="sex">
						<option value="">请选择</option>
						<option value="0">女</option>
						<option value="1">男</option>
					</select>
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>性别
				</div>
			</div>
			<!-- QQ -->
			<div class="layui-form-item">
				<label form="qq" class="layui-form-label"> <span
					class="x-red">*</span>QQ
				</label>
				<div class="layui-input-inline">
					<input type="text" id="qq" name="qq"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${qq }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>QQ
				</div>
			</div>
			<!-- 电话 -->
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>电话
				</label>
				<div class="layui-input-inline">
					<input type="text" id="phone" name="phone"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${phone }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>电话
				</div>
			</div>
			<!-- 邮箱 -->
			<div class="layui-form-item">
				<label for="email" class="layui-form-label"> <span
					class="x-red">*</span>邮箱
				</label>
				<div class="layui-input-inline">
					<input type="text" id="email" name="email"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${email }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>邮箱
				</div>
			</div>
			<!-- 年龄 -->
			<div class="layui-form-item">
				<label for="age" class="layui-form-label"> <span
					class="x-red">*</span>年龄
				</label>
				<div class="layui-input-inline">
					<input type="text" id="age" name="age"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${age }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>年龄
				</div>
			</div>
			<!-- 现住址 -->
			<div class="layui-form-item">
				<label for="currentaddress" class="layui-form-label"> <span
					class="x-red">*</span>现住址
				</label>
				<div class="layui-input-inline">
					<input type="text" id="currentaddress" name="currentaddress"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${currentaddress }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>现住址
				</div>
			</div>
			<!-- 应聘时间 -->
			<div class="layui-form-item">
				<!-- <div class="layui-input-inline">
                    <input type="date" id="initiatetime" name="initiatetime" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div> -->
				<div class="layui-inline">
					<label for="applicanttime" class="layui-form-label"> <span
						class="x-red">*</span>应聘时间
					</label>
					<div class="layui-input-inline">
						<input type="text" class="layui-input" id="applicanttime" name="applicanttime"
							placeholder="yyyy-MM-dd" value="${applicanttime }">
					</div>
					<div class="layui-form-mid layui-word-aux">
						<span class="x-red">*</span>应聘时间
					</div>
				</div>
			</div>
			<!-- 技术特长 -->
			<div class="layui-form-item">
				<label for="specialty" class="layui-form-label"> <span
					class="x-red">*</span>技术特长
				</label>
				<div class="layui-input-inline">
					<input type="text" id="specialty" name="specialty"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${specialty }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>技术特长
				</div>
			</div>
			<!-- 面试官评价 -->
			<div class="layui-form-item">
				<label for="comments" class="layui-form-label"> <span
					class="x-red">*</span>面试官评价
				</label>
				<div class="layui-input-inline">
					<input type="text" id="comments" name="comments"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input" value="${comments }">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>面试官评价
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

			<div class="layui-form-item">
				<label class="layui-form-label"> </label>
				<button type="layui-btn" class="layui-btn" lay-filter="add"
					lay-submit="">修改</button>
			</div>		

		</form>
	</div>
	<script>
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //常规用法
			  laydate.render({
			    elem: '#applicanttime'
			  });
		});
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
            var form = layui.form
                ,layer = layui.layer;
            //alert($("#state option:checked").val());
            //alert($("#empName option:checked").val());
            //监听提交
            form.on('submit(add)', function(data){
                console.log(data);
             $.post("/recruit/candidate/candidatUpdateAjax",{
            	 "id":${id},
                 "name":$("#name").val(),
                 "sex":$("#sex option:checked").val(),
                 "qq":$("#qq").val(),
                 "phone":$("#phone").val(),
                 "email":$("#email").val(),
                 "age":$("#age").val(),
                 "currentaddress":$("#currentaddress").val(),
                 "applicanttime":$("#applicanttime").val(),
                 "specialty":$("#specialty").val(),
                 "comments":$("#comments").val(),
                 "mark":$("#mark").val()
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
        });
        $("#sex option[value='"+ ${sex}+"']").prop("selected",true);
       
        
    </script>

</body>

</html>
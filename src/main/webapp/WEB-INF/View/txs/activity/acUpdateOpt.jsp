<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>欢迎页面-X-admin2.0</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/css/font.css">
<link rel="stylesheet" href="/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/xadmin.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-body">
		<form class="layui-form">
			<div class="layui-form-item" hidden="hidden">
				<label for="username" class="layui-form-label"> 打卡时间： </label>
				<div class="layui-input-inline">
					<input type="text" id="id" value="${id}" required="" autocomplete="off"
						class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>主题：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="theme" value="${theme}" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>活动地址：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="activityAddress" value="${activityAddress}" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>活动简介：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="introduce" value="${introduce}" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>活动详情：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="activityTheDetail" value="${activityTheDetail}"  required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label"><span class="x-red">*</span>活动时间：</label>
					<div class="layui-input-inline">
						<input type="text" class="layui-input " id="test5" lay-key="2"
						 value="${initateTime}"	placeholder="yyyy-MM-dd HH:mm:ss">
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>活动消费：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="spending" required="" lay-verify="required"
					 value="${spending}"	autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item" >
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>状态：
				</label>
				<div class="layui-input-inline">
					<input id="state"  value="${state}" type="text"  required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>组织人编号：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="empId"  value="${empId}" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					修改</button>
			</div>
		</form>
	</div>
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			//日期时间选择器
			laydate.render({
				elem : '#test5',
				type : 'datetime'
			});
		})
		layui.use([ 'form', 'layer' ], function() {
			$ = layui.jquery;
			var form = layui.form, layer = layui.layer;
			//监听提交
			form.on('submit(add)', function(data) {
				console.log(data);
				//发异步，把数据提交给php
				$.post("/txs/activity/acUpdata", {
					"id" : $("#id").val(),
					"theme" : $("#theme").val(),
					"state" : $("#state").val(),
					"activityAddress" : $("#activityAddress").val(),
					"introduce" : $("#introduce").val(),
					"initateTime" : $("#test5").val(),
					"activityTheDetail" : $("#activityTheDetail").val(),
					"spending" : $("#spending").val(),
					"empId" : $("#empId").val()
				})
				layer.alert("修改成功", {
					icon : 6
				}, function() {
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
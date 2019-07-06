<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>添加员工</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/css/font.css">
<link rel="stylesheet" href="/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/js/xadmin.js"></script>
<script type="text/javascript" src="/js/emp/empApi.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-body layui-anim layui-anim-up">
		<form class="layui-form" id="form">
			<!----------->
			<div class="layui-form-item">
				<label for="userid" class="layui-form-label"> <span
					class="x-red">*</span>用户名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="userid" name="userid" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>将会成为您唯一的登入名
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>昵称
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="password" class="layui-form-label"> <span
					class="x-red">*</span>密码
				</label>
				<div class="layui-input-inline">
					<input type="password" id="password" name="password" required
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">6到16个字符</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="L_rerepass" class="layui-form-label"> <span
					class="x-red">*</span>确认密码
				</label>
				<div class="layui-input-inline">
					<input type="password" id="L_repass" name="L_repass" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="sex" class="layui-form-label"> <span
					class="x-red">*</span>性别
				</label>
				<div class="layui-input-inline">
					<select name="sex" lay-verify="required" id="sex">
						<option value=""></option>
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red"></span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> <span
					class="x-red">*</span>电话
				</label>
				<div class="layui-input-inline">
					<input type="text" id="phone" name="phone" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red"></span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="qq" class="layui-form-label"> <span
					class="x-red">*</span>QQ
				</label>
				<div class="layui-input-inline">
					<input type="text" id="qq" name="qq" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red"></span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="L_email" class="layui-form-label"> <span
					class="x-red">*</span>邮箱
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_email" name="email" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red"></span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="age" class="layui-form-label"> <span
					class="x-red">*</span>年龄
				</label>
				<div class="layui-input-inline">
					<input type="text" id="age" name="age" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red"></span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="deptId" class="layui-form-label"> <span
					class="x-red">*</span>部门
				</label>
				<div class="layui-input-inline">
					<select name="deptId" lay-verify="required" id="deptId">
						<option value=""></option>
						<option value="1">人事部</option>
						<option value="2">行政部</option>
						<option value="3">文化部</option>
						<option value="4">业绩部</option>
						<option value="5">档案部</option>
						<option value="6">人力资源部</option>
						<option value="7">维护管理部</option>
						<option value="8">后勤部</option>
					</select>
				</div>
				<div>
					<span class="x-red">*</span>

				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="positionId" class="layui-form-label"> <span
					class="x-red">*</span>职位
				</label>
				<div class="layui-input-inline">
					<select name="positionId" lay-verify="required" id="positionId">
						<option value=""></option>
						<option value="1">董事长</option>
						<option value="2">总经理</option>
						<option value="3">副总经理</option>
						<option value="4">主任</option>
						<option value="5">文员</option>
						<option value="6">主管</option>
						<option value="7">采购员</option>
						<option value="8">保洁员</option>
						<option value="9">销售员</option>
						<option value="10">市场助理</option>
						<option value="11">会计</option>
						<option value="12">出纳</option>
						<option value="13">程序员</option>
						<option value="14">厨师</option>
						<option value="15">普通员工</option>
						<option value="16">总经办</option>
					</select>
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="currentaddress" class="layui-form-label"> <span
					class="x-red">*</span>地址
				</label>
				<div class="layui-input-inline">
					<input type="text" id="currentaddress" name="currentaddress"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red"></span>
				</div>
			</div>
			<!----------->
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					增加</button>
			</div>
		</form>
	</div>
	<script>
		layui.use([ 'form', 'layer' ], function() {
			$ = layui.jquery;
			var form = layui.form, layer = layui.layer;

			//自定义验证规则
			form.verify({
				nikename : function(value) {
					if (value.length < 5) {
						return '昵称至少得5个字符';
					}
				},
				password : [ /(.+){6,12}$/, '密码必须6到12位' ],
				repass : function(value) {
					if ($('#password').val() != $('#L_repass').val()) {
						return '两次密码不一致';
					}
				}
			});

			//监听提交
			form.on('submit(add)', function(data) {
				console.log(data);
				$.post("/emp/addAEmp", {
					"userid" : $("#userid").val(),
					"name" : $("#name").val(),
					"password" : $("#password").val(),
					"sex" : $("#sex").val(),
					"phone" : $("#phone").val(),
					"qq" : $("#qq").val(),
					"email" : $("#L_email").val(),
					"age" : $("#age").val(),
					"deptId" : $("#deptId").val(),
					"positionId" : $("#positionId").val(),
					"currentaddress" : $("#currentaddress").val()
				})

				//发异步，把数据提交给php
				layer.alert("增加成功", {
					icon : 6
				}, function() {
					// 获得frame索引
					reloadTable();
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
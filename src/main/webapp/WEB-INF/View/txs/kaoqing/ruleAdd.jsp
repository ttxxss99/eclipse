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
			<!-- <div class="layui-form-item" hidden="hidden">
              <label for="username" class="layui-form-label">
                  	打卡时间：
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="clockintime"  required="" 
                  autocomplete="off" class="layui-input"> 
              </div>
          </div> -->
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>规则名称：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="rulesName" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>打卡次数：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="clockInNum" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>上午上班打卡时间：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="test1" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>上午下班打卡时间：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="test2" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>下午上班打卡时间：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="test3" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>下午下班打卡时间：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="test4" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>打卡位置：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="clockInIocation" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>备注：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="instructions" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>规则发布人编号：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="empId" required="" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
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
			//监听提交
			form.on('submit(add)', function(data) {
				console.log(data);
				//发异步，把数据提交给php
				$.post("/txs/kaoqing/ruleinsert", {
					"rulesName" : $("#rulesName").val(),
					"clockInNum" : $("#clockInNum").val(),
					"amStartTime" : $("#test1").val(),
					"amEndTime" : $("#test2").val(),
					"pmStartTime" : $("#test3").val(),
					"pmEndTime" : $("#test4").val(),
					"clockInIocation" : $("#clockInIocation").val(),
					"instructions" : $("#instructions").val(),
					"empId" : $("#empId").val()
				})
				layer.alert("增加成功", {
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
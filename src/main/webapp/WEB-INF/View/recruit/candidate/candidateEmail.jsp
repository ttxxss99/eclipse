<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="UTF-8">
<title>邮件发送</title>
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
			<!-- 主题 -->
			<div class="layui-form-item">
				<label for="title" class="layui-form-label"> <span
					class="x-red">*</span>主题
				</label>
				<div class="layui-input-inline">
					<input type="text" id="title" name="title"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>主题
				</div>
			</div>
			<!-- 内容 -->
			<div class="layui-form-item">
				<label form="content" class="layui-form-label"> <span
					class="x-red">*</span>内容
				</label>
				<div class="layui-input-inline">
					<input type="text" id="content" name="content"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>内容
				</div>
			</div>
			

			<div class="layui-form-item">
				<label class="layui-form-label"> </label>
				<button type="layui-btn" class="layui-btn" lay-filter="add"
					lay-submit="">发送</button>
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
             $.post("/recruit/candidate/candidateEmailAjax",{
            	 "id":${id},
                 "title":$("#title").val(),
                 "content":$("#content").val()
                 }
             )
                layer.alert("发送成功", {icon: 6},function () {
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
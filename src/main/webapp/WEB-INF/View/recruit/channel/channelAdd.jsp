<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta charset="UTF-8">
<title>发布渠道应聘者</title>
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
<script type = "text/javascript" src = "/js/recruit/recruitChannelApi.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-body">
		<form class="layui-form" id="form"<%-- action ="/organization/company/addACompany" method="post"--%>>
			<!-- 渠道名称或地址 -->
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>渠道名称或地址
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name"
						required="" lay-verify="required" autocomplete="off"
						class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>渠道名称或地址
				</div>
			</div>
			<!-- 上传时间 -->
			<div class="layui-form-item">
				<div class="layui-inline">
					<label form="addtime" class="layui-form-label"> <span
						class="x-red">*</span>上传时间
					</label>
					<div class="layui-input-inline">
						<input type="text" class="layui-input" id="addtime" name="addtime"
							placeholder="yyyy-MM-dd">
					</div>
					<div class="layui-form-mid layui-word-aux">
						<span class="x-red">*</span>上传时间
					</div>
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
						class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>备注
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"> </label>
				<button type="layui-btn" class="layui-btn" lay-filter="add"
					lay-submit="">增加</button>
			</div>		

		</form>
	</div>
	<script>
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  //常规用法
			  laydate.render({
			    elem: '#addtime'
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
             $.post("/recruit/channel/channelAddAjax",{
                 "name":$("#name").val(),
                 "addtime":$("#addtime").val(),
                 "mark":$("#mark").val()
                 }
             )
                layer.alert("增加成功", {icon: 6},function () {
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
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
<script type="text/javascript" src="/js/txsjs/kaoqing.js"></script>
<script type="text/javascript"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style>
/*把table中的复选框居中*/
.layui-table-view .layui-form-checkbox[lay-skin=primary] i {
	margin-top: 0px;
}
</style>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">考勤管理</a>
			<a> <cite>考勤情况</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so">
				<div class="layui-inline">
					<label class="layui-form-label" for="name">员工姓名</label> <input
						class="layui-input" placeholder="请输入员工姓名" id="name">
				</div>
				<div class="layui-inline">
					<label class="layui-form-label" for="empId">员工工号</label>
					<input class="layui-input" placeholder="请选择" id="empId">
				</div>
				<!-- <div class="layui-inline">
					<label class="layui-form-label" for="clockInTime">打卡时间</label>
					<input class="layui-input" placeholder="请输入时间" id="clockInTime">
				</div> -->
				<div class="layui-inline">
					<label class="layui-form-label">标记</label>
					<div class="layui-input-inline" >
						<select name="quiz" id="tag">
							<option value="">请选择</option>
							<option value="1">正常</option>
							<option value="2">迟到</option>
							<option value="3">早退</option>
						</select>
					</div>
				</div>
				<div class="layui-inline" style="margin-left: 50px">
					<button class="layui-btn" lay-submit id="likeSearchBtn"
						lay-filter="sreach">
						<i class="layui-icon">&#xe615;</i>
					</button>
					<button class="layui-btn" type="reset">
						<i class="layui-icon layui-icon-close"></i>
					</button>
				</div>
			</form>
		</div>
		<table class="layui-table" id="layTable" lay-filter="layTable">
			<script type="text/html" id="toolbarDemo">
              <div class="layui-btn-container">
                  <button class="layui-btn layui-btn-danger" onclick="delSome()"><i class="layui-icon"></i>批量删除</button>
                 
              </div>
          </script>

			<script type="text/html" id="barDemo">
              <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
              <a class="layui-btn layui-btn-xs" lay-event="edit">  <i class="layui-icon">&#xe642;</i></a>
              <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"> <i class="layui-icon">&#xe640;</i></a>
          </script>
		</table>
		<div id="page" class="page">
		</div>
	</div>
</body>

</html>
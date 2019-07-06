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
<script type="text/javascript" src="/js/txsjs/activity.js"></script>
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
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">团建管理</a>
			<a> <cite>团建活动</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so">
				<div class="layui-inline">
					<label class="layui-form-label" for="activityAddress">活动地址</label> <input
						class="layui-input" placeholder="请输入要查询的地址" id="activityAddress">
				</div>
				<div class="layui-inline">
					<label class="layui-form-label" for="name">组织人</label>
					<input class="layui-input" placeholder="" id="name">
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
		<!-- <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加用户','./add')"><i class="layui-icon"></i>添加</button>
        <span id="totalInfo" class="x-right" style="line-height:40px">共有数据：88 条</span>
      </xblock> -->

		<table class="layui-table" id="layTable" lay-filter="layTable">
			<script type="text/html" id="toolbarDemo">
              <div class="layui-btn-container">
                  <button class="layui-btn layui-btn-danger" onclick="delSome()"><i class="layui-icon"></i>批量删除</button>
                  <button class="layui-btn" onclick="x_admin_show('添加活动','./acAdd')"><i class="layui-icon"></i>添加</button>
              </div>
          </script>

			<script type="text/html" id="barDemo">
              <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">邮件</a>
              <a class="layui-btn layui-btn-xs" lay-event="edit">  <i class="layui-icon">&#xe642;</i></a>
              <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"> <i class="layui-icon">&#xe640;</i></a>
          </script>
		</table>
		<!--  <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>打卡时间</th>
            <th>打卡位置</th>
            <th>标记</th>
            <th>对应员工</th>
            <th>操作</th>
        </thead>
        <tbody id="tbody">
          
        </tbody>
      </table> -->
		<div id="page" class="page">
			<!-- <div>
          <a class="prev" href="">&lt;&lt;</a>
          <a class="num" href="">1</a>
          <span class="current">2</span>
          <a class="num" href="">3</a>
          <a class="num" href="">489</a>
          <a class="next" href="">&gt;&gt;</a>
        </div> -->
		</div>

	</div>
</body>

</html>
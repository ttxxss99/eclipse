<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>社保</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript" src="/js/payroll/social/socialApi.js"></script>
    <style>
        /*把table中的复选框居中*/
        .layui-table-view .layui-form-checkbox[lay-skin=primary] i{
            margin-top: 7px;
        }
    </style>

    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="/">首页</a>
        <a href="/payroll">薪资管理</a>
        <a href="/payroll/social/">
          <cite>社保表</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:reloadTable()" title="刷新">
        <i class="layui-icon layui-icon-refresh-1" style="line-height:30px"></i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">

      </div>

      <table class="layui-table" id="layTable" lay-filter="layTable">
          <script type="text/html" id="toolbarDemo">
              <div class="layui-btn-container">
                  <button class="layui-btn layui-btn-danger" onclick="delSome()"><i class="layui-icon"></i>批量删除</button>
                  <button class="layui-btn" onclick="x_admin_show('添加用户','/payroll/social/socialAdd')"><i class="layui-icon"></i>添加</button>
              </div>
          </script>

          <script type="text/html" id="barDemo">
              <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"> <i class="layui-icon">&#xe640;删除</i></a>
          </script>
      </table>
      <div class="page" id="page">
      </div>
    </div>
  </body>
</html>
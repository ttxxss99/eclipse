<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>

  <head>
    <meta charset="UTF-8">
    <title>部门列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type = "text/javascript" src = "/js/dbi/expendApi.js"></script>
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
        <a href="">首页</a>
        <a href="">数据报表</a>
        <a>
          <cite>人力资源支出数据</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh-1" style="line-height:30px"></i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
          <form class="layui-form layui-col-md12 x-so">
              <div class="layui-inline">
                  <label class="layui-form-label" for="date">选择日期</label>
                  <div class="layui-input-inline">
                      <select name="date" id="date" lay-filter="aihao" >
                          <option value=""></option>
                      </select>
                  </div>
              </div>
              <div class="layui-inline">
                      <label class="layui-form-label" for="companyName">选择公司</label>
                      <div class="layui-input-inline">
                          <select name="companyName" id="companyName" lay-filter="aihao" >
                              <option value=""></option>
                          </select>
                      </div>
              </div>
              <div class="layui-inline" style="margin-left: 50px">
                  <button class="layui-btn" type="button"  lay-submit id="likeSearchBtn" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                  <button class="layui-btn" type="reset"><i class="layui-icon layui-icon-refresh-3"></i></button>
              </div>
          </form>
      </div>
        <%--图表--%>
        <div id="table"  style="width: 1000px;height:600px;" >

        </div>
    </div>


    <script type="text/javascript" src = "/lib/echarts.min.js"></script>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>EHR管理系统</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
	<link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <link rel="stylesheet" href="lib/layui/css/layui.css">

</head>
<body>
    <style >
        .widthHelper{
           width: 20px;
        }
    </style>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="/"><i class="iconfont"><img class="widthHelper" src="/images/index/sys.png"></i> EHR管理系统</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">收藏夹</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('百度','http://www.baidu.com')"><i class="iconfont"><img src="/images/index/baidu.png" class="widthHelper"></i>百度</a></dd>
              <dd><a onclick="x_admin_show('哔哩哔哩','https://www.bilibili.com/')"><i class="iconfont"><img src="/images/index/bili.png" class="widthHelper"></i>哔哩哔哩</a></dd>
               <dd><a onclick="x_admin_show('CSDN','https://www.csdn.net/')"><i class="iconfont"><img src="/images/index/csdn.png" class="widthHelper"></i>CSDN</a></dd>
            </dl>
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">

            <a href="javascript:;" ><div id="adminName" >11</div></a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
              <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
              <dd><a href="./login.html">退出</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <%--<i class="iconfont">&#xe6b8;</i>--%>
                    <i class="iconfont"><img  class="widthHelper" src="images/organization/organization.png"></i>
                    <cite>组织机构</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/organization/company">
                            <i class="iconfont"><img class="widthHelper" src="images/organization/company.png"></i>
                            <cite>公司</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="/organization/dept">
                            <i class="iconfont"><img  class="widthHelper" src="images/organization/dept.png"></i>

                            <cite>部门</cite>
                            
                        </a>
                    </li>
                    <li>
                        <a _href="/organization/position">
                          <%--  <i class="iconfont">&#xe6a7;</i>--%>
                            <i class="iconfont"><img  class="widthHelper" src="images/organization/position.png"></i>
                            <cite>职位</cite>

                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont"><img  class="widthHelper" src="images/emp/emp.png"></i>
                    <cite>职员档案</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/emp/emplist">
                            <i class="iconfont"><img  class="widthHelper" src="images/emp/empList.png"></i>
                            <cite>员工</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="/rdp/rdplist">
                            <i class="iconfont"><img  class="widthHelper" src="images/emp/empRAP.png"></i>
                            <cite>奖惩管理</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="/departure/departurelist">
                            <i class="iconfont"><img  class="widthHelper" src="images/emp/empDelete.png"></i>
                            <cite>离职员工</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont"><img  class="widthHelper" src="images/salary/salary.png"></i>
                    <cite>薪资管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="payroll/empsalary">
                            <i class="iconfont"><img  class="widthHelper" src="images/salary/salaryList.png"></i>
                            <cite>员工薪资表</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="payroll/salarylever">
                            <i class="iconfont"><img  class="widthHelper" src="images/salary/salaryLevel.png"></i>
                            <cite>薪资等级管理</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="payroll/social">
                            <i class="iconfont"><img  class="widthHelper" src="images/salary/shebao.png"></i>
                            <cite>社保管理</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="payroll/salarylist">
                            <i class="iconfont"><img  class="widthHelper" src="images/salary/salaryProp.png"></i>
                            <cite>工资条管理</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont"><img  class="widthHelper" src="images/kaoqin/kaoqin.png"></i>
                    <cite>考勤管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/txs/kaoqing/kqlist">
                            <i class="iconfont"><img  class="widthHelper" src="images/kaoqin/kaoqinguanli.png"></i>
                            <cite>考勤情况</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="/txs/kaoqing/rulelist">
                            <i class="iconfont"><img  class="widthHelper" src="images/kaoqin/kaoqinguize.png"></i>
                            <cite>考勤规则</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont"><img  class="widthHelper" src="images/zhaopin/zhaopin.png"></i>
                    <cite>招聘管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="recruit/needs">
                            <i class="iconfont"><img  class="widthHelper" src="images/zhaopin/zhaopinxuqiu.png"></i>
                            <cite>招聘需求</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="recruit/info">
                            <i class="iconfont"><img  class="widthHelper" src="images/zhaopin/zhaopinfabu.png"></i>
                            <cite>信息发布</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="recruit/channel">
                            <i class="iconfont"><img  class="widthHelper" src="images/zhaopin/yingpinzhe.png"></i>
                            <cite>发布渠道应聘者</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="recruit/candidate">
                            <i class="iconfont"><img  class="widthHelper" src="images/zhaopin/guanli.png"></i>
                            <cite>应聘者管理</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="recruit/talent">
                            <i class="iconfont"><img  class="widthHelper" src="images/zhaopin/rencaichubei.png"></i>
                            <cite>人才储备管理</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont"><img  class="widthHelper" src="images/tuanjian/tuanjian.png"></i>
                    <cite>团建管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="txs/activity/aclist">
                            <i class="iconfont"><img  class="widthHelper" src="images/tuanjian/huodong.png"></i>
                            <cite>团建活动</cite>
                        </a>
                    </li >
                </ul>
                <ul class="sub-menu">
                    <li>
                        <a _href="/txs/activity/holidaylist">
                            <i class="iconfont"><img  class="widthHelper" src="images/tuanjian/jieri.png"></i>
                            <cite>节日祝福</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont"><img  class="widthHelper" src="images/dbi/dbi.png"></i>
                    <cite>系统统计</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/dbi/expend">
                            <i class="iconfont"><img  class="widthHelper" src="images/dbi/1.png"></i>
                            <cite>人力资源支出分析</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="/dbi/number">
                            <i class="iconfont"><img  class="widthHelper" src="images/dbi/2.png"></i>
                            <cite>人力资源人数</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="/dbi/income">
                            <i class="iconfont"><img  class="widthHelper" src="images/dbi/3.png"></i>
                            <cite>项目收入分析</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="/dbi/profit">
                            <i class="iconfont"><img  class="widthHelper" src="images/dbi/4.png"></i>
                            <cite>利润分析</cite>
                        </a>
                    </li>
                </ul>
            </li>
            
        </ul>
      </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2019 武汉轻工大学软工16级</div>
    </div>
    <!-- 底部结束 -->



    <script>
        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)") ,// 构造一个含有目标参数的正则表达式对象
                r = window.location.search.substr(1).match(reg);        // 匹配目标参数
            if (r != null) return decodeURI(r[2]);  // 返回参数值
            return null;  // 如果不存在，返回null
        }
        $("#adminName").text(getUrlParam('name'));
    </script>
</body>
</html>
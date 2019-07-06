<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>修改离职人员</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
      <script type="text/javascript" src="/lib/layui/layui.js"
              charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-body layui-anim layui-anim-up">
        <form class="layui-form" id = "form" >
        <input value="${id}"  hidden id="id" />
       		<div class="layui-form-item">
              <label for="instructions" class="layui-form-label">
                  <span class="x-red">*</span>离职说明
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="instructions" name="instructions" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${instructions}">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red"></span>
              </div>
          </div>
         <!----------->
          <div class="layui-form">
	  		<div class="layui-form-item">
		     <div class="layui-inline">
			      <label class="layui-form-label">
			      	<span class="x-red">*</span>离职时间
			      </label>
			      <div class="layui-input-inline">
			        <input type="text" class="layui-input" id="departuretime" placeholder="yyyy-MM-dd" value="${departuretime}">
			      </div>
		    	</div>
		    </div>
		 </div>
          <!----------->
         <div class="layui-form-item">
              <label for="emp_id" class="layui-form-label">
                  <span class="x-red">*</span>对应员工
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="emp_id" name="emp_id" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${emp_id}">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red"></span>
              </div>
          </div>
        <!----------->
          <div class="layui-form-item">
              <label  class="layui-form-label">
              </label>
              <button type="layui-btn"  class="layui-btn" lay-filter="add" lay-submit="">
                  修改
              </button>
          </div>
      </form>
    </div>
    <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
          //自定义验证规则

          //监听提交
          form.on('submit(add)', function(data){
            console.log(data);
            $.post("/departure/updateADeparture",{
            	"id":$("#id").val(),
            	"instructions":$("#instructions").val(),
                "departuretime":$("#departuretime").val(),
                "emp_id":$("#emp_id").val(),
                
                
                }
            )

            
            
            //发异步，把数据提交给php
            layer.alert("修改成功", {icon: 6},function () {
            	parent.reloadTable();
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
          });
          
          
        });
        layui.use('laydate', function(){
        	  var laydate = layui.laydate;
        	  
        	  laydate.render({
        		    elem: '#departuretime'
        		  });
        	  
        });
    </script>

  </body>

</html>
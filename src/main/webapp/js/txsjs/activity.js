let deleteSet = new Set();//存放被选中的复选框代表的id 因为是set 所以不会重复

layui.use('table', function(){
    let table = layui.table;
    //这里是每次点击清除set 然后重新加入当前被选中的id
    table.on('checkbox(layTable)', function(obj){
        let checkStatus = table.checkStatus('TableId')
            ,data = checkStatus.data;
        //console.log(data);
        deleteSet.clear()
        for (let i = 0 ; i < data.length ; i++){
            deleteSet.add(data[i].id);
        }
        //console.log(deleteSet);
    });

   table.render({
        elem: '#layTable'
        ,toolbar: '#toolbarDemo'
        ,title: '用户数据表'
        ,id: 'TableId'
        ,cols: [[
            {type: 'checkbox', fixed: 'left'}
            ,{field:'theme', title:'主题', width:"10%"}
            ,{field:'activityaddress', title:'活动地址', width:"10%"}
            ,{field:'introduce', title:'活动简介', width:"8%"}
            ,{field:'activitythedetail', title:'活动详情', width:"17%"}
            ,{field:'initatetime', title:'活动时间', width:"15%"}
            ,{field:'spending', title:'活动消费', width:"10%"}
            ,{field:'staticName', title:'状态', width:"7%"}
            ,{field:'name', title:'组织人', width:"9%"}
            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"14%"}
        ]]
        ,page:true
        //异步请求响应
        ,url: '/txs/activity/ajaxPageActivityList'
        ,request: {
            pageName: 'pageNum' //页码的参数名称，默认：page
            ,limitName: 'pageSize' //每页数据量的参数名，默认：limit
        }
        //异步请求配置
        ,method:"post"
        ,parseData: function(res){ //res 即为原始返回的数据
        	console.log(res)
            return {
                "code": res.code, //解析接口状态
                "msg": res.msg, //解析提示文本
                "count": res.count.total, //解析数据长度
                "data": res.count.list //解析数据列表
            }}
        ,done: function(res, curr, count){
            //如果是异步请求数据方式，res即为你接口返回的信息。
            //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
            console.log(res);
            table.render();
            //得到当前页码
            console.log(curr);
            //得到数据总量
            console.log(count);
        }

    });//render ------end


    //头工具栏事件
    table.on('toolbar(layTable)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id);
        switch(obj.event){
            case 'getCheckData':
                var data = checkStatus.data;
                layer.alert(JSON.stringify(data));
                break;
            case 'getCheckLength':
                var data = checkStatus.data;
                layer.msg('选中了：'+ data.length + ' 个');
                break;
            case 'isAll':
                layer.msg(checkStatus.isAll ? '全选': '未全选');
                break;
        };
    });

     //监听工具条
    table.on('tool(layTable)', function(obj){
        var data = obj.data;
        console.log(data.id);
        if(obj.event === 'detail'){
            let url = '/txs/activity/acSendEmail'
                $.post(url,{"id":data.id},function(json){
                	console.log(json);
                	layer.mag(json.msg);
                })
        } else if(obj.event === 'del'){
            layer.confirm('真的删除行么?', function(index){
                console.log("----"+obj.data.id);
                member_del(data.id);//删除
                obj.del();
                layer.close(index);
            });
        } else if(obj.event === 'edit'){
            console.log(data.id);
            let url = '/txs/activity/acUpdateOpt?id='+data.id;
            console.log(url);
            x_admin_show('编辑',url);

        }
    })//工具条----end




})//---end




/*用户-删除*/
function member_del(id){
//	console.log("====="+id);
    let url = "/txs/activity/acdelete";
    $.post(url,{"id":id},()=>{layer.msg('已删除!',{icon:1,time:1000});
        reloadTable()
    })
}

/*删除一些*/
function delSome() {
   deleteSet.forEach((e)=>{
       member_del(e);
   })
}

//重载
function reloadTable() {
    let table = layui.table;
    table.reload(("TableId"),{
        page:{ curr:1 },
})
}


layui.use('form', function(){
    var form = layui.form;
    //监听提交
    form.on('submit(sreach)', function(data){
        let [name,activityAddress] = [$("#name").val(),$("#activityAddress").val()]
        //都为空 则是普通执行
        /*let url = "/organization/company/likeSearch";
        $.post(url,{someCompanyName,someCompanyAddress},(json)=>{
            console.log(json);
        })*/
//        console.log(someCompanyName);
//        console.log(someCompanyAddress);
        initTable(name,activityAddress);
//        consola.log(tag);
        return false;
    });
});

function initTable(name,activityAddress) {

    layui.use('table', function(){
        let table = layui.table;
        //这里是每次点击清除set 然后重新加入当前被选中的id
        table.on('checkbox(layTable)', function(obj){
            let checkStatus = table.checkStatus('TableId')
                ,data = checkStatus.data;
            //console.log(data);
            deleteSet.clear()
            for (let i = 0 ; i < data.length ; i++){
                deleteSet.add(data[i].id);
            }
            //console.log(deleteSet);
        });

        table.render({
            elem: '#layTable'
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,id: 'TableId'
            ,cols: [[
            	{type: 'checkbox', fixed: 'left'}
                ,{field:'theme', title:'主题', width:"10%"}
                ,{field:'activityaddress', title:'活动地址', width:"10%"}
                ,{field:'introduce', title:'活动简介', width:"8%"}
                ,{field:'activitythedetail', title:'活动详情', width:"25%"}
                ,{field:'initatetime', title:'活动时间', width:"15%"}
                ,{field:'spending', title:'活动消费', width:"10%"}
                ,{field:'staticName', title:'状态', width:"7%"}
                ,{field:'name', title:'组织人', width:"7%"}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"8%"}
            ]]
            ,page:true
            //异步请求响应
            ,url: '/txs/activity/likeSearch?name='+name+"&activityAddress="+activityAddress
            ,request: {
                pageName: 'pageNum' //页码的参数名称，默认：page
                ,limitName: 'pageSize' //每页数据量的参数名，默认：limit
            }
            //异步请求配置
            ,method:"post"
            ,parseData: function(res){ //res 即为原始返回的数据
                return {
                    "code": res.code, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "count": res.count.total, //解析数据长度
                    "data": res.data.list //解析数据列表
                }}
            ,done: function(res, curr, count){
                //如果是异步请求数据方式，res即为你接口返回的信息。
                //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                console.log(res);
                table.render();
                //得到当前页码
                console.log(curr);
                //得到数据总量
                console.log(count);
            }

        });//render ------end


        //头工具栏事件
        table.on('toolbar(layTable)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
            };
        });

        //监听工具条
        table.on('tool(layTable)', function(obj){
            var data = obj.data;
            console.log(data.id);
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){

                    member_del(data.id);//删除
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                console.log(data.id);
                let url = '/organization/company/companyUpdate?id='+data.id;
                console.log(url);
                x_admin_show('编辑',url);

            }
        })//工具条----end




    })//---end

}






















/**
 * 
 */
function x_admin_show(title,url,w,h){
    if (title == null || title == '') {
        title=false;
    };
    if (url == null || url == '') {
        url="404.html";
    };
    if (w == null || w == '') {
        w=($(window).width()*0.9);
    };
    if (h == null || h == '') {
        h=($(window).height() - 50);
    };
    layer.open({
        type: 2,
        area: [w+'px', h +'px'],
        fix: false, //不固定
        maxmin: true,
        shadeClose: true,
        shade:0.4,
        title: title,
        content: url
    });
}

/*
var kaoqingAPI={
		ajaxList:function(pageNum,func,form){
			var url= "/txs/kaoqing/ajaxPageList";
			$.post(url,{"pageNum":pageNum},function(json){
				console.log(json);
				var totalText;
				let map = new Map;
				map.set(1,"正常");
				map.set(2,"迟到");
				map.set(3,"旷工");
				$.each(json.data.list,function(index,item){
					let tag = item.tag
//					console.log(map.tag);
					var text =
						`<tr>
		            <td>
		              <div class="layui-unselect layui-form-checkbox " lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
		            </td>
		            <td>${item.clockintime}</td>
		            <td>${item.clockiniocation}</td>
		            <td>`+map.get(tag)+`</td>
		            <td>${item.name}</td>
		            <td class="td-manage">
		              <a title="编辑"  onclick="x_admin_show('修改打卡','./updateOpt')" href="javascript:;">
		                <i class="layui-icon">&#xe642;</i>
		              </a>
		              <a title="删除" onclick="member_del(this,'${item.id}')" href="javascript:;">
		                <i class="layui-icon">&#xe640;</i>
		              </a>
		            </td>
		          </tr>`
					totalText +=text;
					
				})
					$('#tbody').html(totalText);
					$("#totalInfo").html(`共有数据：${json.size} 条`);
					
					if (func ) {
						
						initPage(json.size,10);
		            }else{
		            	form.render();
		            }
			});
		},
		
		initEvent : function() {
			//新增按钮事件
			$(document).on('click', "#insertBtn", function() {
				location.href='/user/insert'
			});
		}
}

//init Page
function initPage(totalData,pageSize){
    layui.use(['laypage','table','element'], function(){
        var laypage = layui.laypage;
        var form =layui.form;
        var element = layui.element;
        
        //完整功能
        laypage.render({
             elem: 'page'
            ,count: totalData
            ,limit: pageSize
            ,layout: ['count', 'prev', 'page', 'next', 'skip']
            ,jump: function(obj,first){
                console.log(obj.curr)
                
                if(!first){
                //kaoqingAPI.ajaxList(1);
                	  kaoqingAPI.ajaxList(obj.curr,false,form)//不传func避免循环
                }
             
//               alert(11);
            }
        });
    });
}
kaoqingAPI.ajaxList(1,true)


*/


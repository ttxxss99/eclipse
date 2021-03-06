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
            ,{field:'name', title:'名字', width:"8.3%"}
            ,{field:'sexStr', title:'性别', width:"8.3%"}
            ,{field:'phone', title:'电话', width:"8.3%"}
            ,{field:'qq', title:'QQ', width:"8.3%"}
            ,{field:'email', title:'邮箱', width:"8.3%"}
            ,{field:'age', title:'年龄', width:"8.3%"}
            ,{field:'currentaddress', title:'现住址', width:"8.3%"}
            ,{field:'specialty', title:'技术特长', width:"8.3%"}
            ,{field:'comments', title:'圈内评价', width:"8.3%"}
            ,{field:'asthecompany', title:'现所在公司', width:"8.3%"}
            ,{field:'mark', title:'备注', width:"8.3%"}
            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"8.7%"}
        ]]
        ,page:true
        //异步请求响应
        ,url: '/recruit/talent/talentListPage'
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
            let url = '/recruit/talent/talentUpdate?id='+data.id;
            console.log(url);
            x_admin_show('编辑',url);

        }
    })//工具条----end

})//---end


/*用户-删除*/
function member_del(id){
    let url = "/recruit/talent/talentDeleteAjax?id="+id;
    $.post(url,{},()=>{layer.msg('已删除!',{icon:1,time:1000});
        reloadTable()
    })
}

/*删除一些*/
function delSome() {
   deleteSet.forEach((e)=>{
       member_del(e);
   })
}
/*发送一些Offer*/
function sendSome() {
	let arr = Array.from(deleteSet);
	console.log(arr);
	$.post("/recruit/talent/talentEmailSomeAjax",
			{"ids":arr},function(){}
    )
    layer.msg('已发送!',{icon:1,time:1000});
    reloadTable();
}
//重载
function reloadTable() {
    let table = layui.table;
    table.reload(("TableId"),{
        page:{ curr:1 },
})
}

/*------------------------------- 模糊查询 -------------------------------------------------*/
layui.use('form', function(){
    var form = layui.form;
    //监听提交
    form.on('submit(sreach)', function(data){
        let [name,sex] = [$("#name").val(),$("#sex option:checked").val()]
        console.log(name);
        console.log(sex);
        initTable(name,sex);
        return false;
    });
});

function initTable(name,sex) {
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
	            ,{field:'name', title:'名字', width:"8.3%"}
	            ,{field:'sexStr', title:'性别', width:"8.3%"}
	            ,{field:'phone', title:'电话', width:"8.3%"}
	            ,{field:'qq', title:'QQ', width:"8.3%"}
	            ,{field:'email', title:'邮箱', width:"8.3%"}
	            ,{field:'age', title:'年龄', width:"8.3%"}
	            ,{field:'currentaddress', title:'现住址', width:"8.3%"}
	            ,{field:'specialty', title:'技术特长', width:"8.3%"}
	            ,{field:'comments', title:'圈内评价', width:"8.3%"}
	            ,{field:'asthecompany', title:'现所在公司', width:"8.3%"}
	            ,{field:'mark', title:'备注', width:"8.3%"}
	            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"8.7%"}
	        ]]
	        ,page:true
	        //异步请求响应
	        ,url: '/recruit/talent/selectLikeAjax?name='+name+"&sex="+sex
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
	            let url = '/recruit/talent/talentUpdate?id='+data.id;
	            console.log(url);
	            x_admin_show('编辑',url);

	        }
	    })//工具条----end

	})//---end
}
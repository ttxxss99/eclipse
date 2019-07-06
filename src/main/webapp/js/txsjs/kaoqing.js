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
            ,{field:'clockintime', title:'打卡时间', width:"20%"}
            ,{field:'clockiniocation', title:'打卡位置', width:"20%"}
            ,{field:'tagName',  templet: function(item){
            	if(item.tagName=="早退"){
            		return "<span style="+"'color: #ff0000;'"+">早退</span>";
            	}else if(item.tagName=="迟到"){return "<span style="+"'color: #747cea;'"+">迟到</span>"}
            	else if(item.tagName=="正常"){return "<span style="+"'color: #00ff55;'"+">正常</span>"}
            	else{return "<span style="+"'color: #000000;'"+">情况未知</span>"}
            },title:'标记', width:"20%"}
            ,{field:'name', title:'对应员工', width:"20%"}
            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"20%"}
        ]]
        ,page:true
        //异步请求响应
        ,url: '/txs/kaoqing/ajaxPageList'
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
            layer.msg('ID：'+ data.id + ' 的查看操作');
        } else if(obj.event === 'del'){
            layer.confirm('真的删除行么?', function(index){
                console.log("----"+obj.data.id);
                member_del(data.id);//删除
                obj.del();
                layer.close(index);
            });
        } else if(obj.event === 'edit'){
            console.log(data.id);
            let url = '/txs/kaoqing/updateOpt?id='+data.id;
            console.log(url);
            x_admin_show('编辑',url);

        }
    })//工具条----end




})//---end




/*用户-删除*/
function member_del(id){
//	console.log("====="+id);
    let url = "/txs/kaoqing/delete";
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
        let [name,empId,clockInTime,tag] = [$("#name").val(),$("#empId").val(),$("#clockInTime").val(),$("#tag").val()]
        //都为空 则是普通执行
        /*let url = "/organization/company/likeSearch";
        $.post(url,{someCompanyName,someCompanyAddress},(json)=>{
            console.log(json);
        })*/
//        console.log(someCompanyName);
//        console.log(someCompanyAddress);
        initTable(name,empId,clockInTime,tag);
//        consola.log(tag);
        return false;
    });
});


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
function initTable(name,empId,clockInTime,tag) {

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
                 ,{field:'clockintime', title:'打卡时间', width:"20%"}
                 ,{field:'clockiniocation', title:'打卡位置', width:"20%"}
                 ,{field:'tagName',  templet: function(item){
                 	if(item.tagName=="早退"){
                 		return "<span style="+"'color: #ff0000;'"+">早退</span>";
                 	}else if(item.tagName=="迟到"){return "<span style="+"'color: #747cea;'"+">迟到</span>"}
                 	else if(item.tagName=="正常"){return "<span style="+"'color: #00ff55;'"+">正常</span>"}
                 	else{return "<span style="+"'color: #000000;'"+">情况未知</span>"}
                 },title:'标记', width:"20%"}
                 ,{field:'name', title:'对应员工', width:"20%"}
                 ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"20%"}
            ]]
            ,page:true
            //异步请求响应
            ,url: '/txs/kaoqing/likeSearch?name='+name+"&empId="+empId+"&tag="+tag
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
                let url = '/txs/kaoqing/updateOpt?id='+data.id;
                console.log(url);
                x_admin_show('编辑',url);

            }
        })//工具条----end




    })//---end

}



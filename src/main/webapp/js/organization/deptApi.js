let deleteSet = new Set();//存放被选中的复选框代表的id 因为是set 所以不会重复
/*
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
            ,{field:'name', title:'部门名称', width:"25%"}
            ,{field:'mark', title:'备注', width:"25%"}
            ,{field:'companyName', title:'所属公司', width:"25%"}
            ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"25%"}
        ]]
        ,page:true
        //异步请求响应
        ,url: '/organization/dept/deptListPage'
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
                "count": res.count, //解析数据长度
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
            let url = '/organization/dept/deptUpdate?id='+data.id;
            console.log(url);
            x_admin_show('编辑',url);

        }
    })//工具条----end




})//---end   */




/*用户-删除*/
function member_del(id){
    let url = "/organization/dept/deleteADept?Id="+id;
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

//重载
function reloadTable() {
    let table = layui.table;
    table.reload(("TableId"),{
        page:{ curr:1 },
})
}

/*模糊搜索*/


$("#test").submit(function(e){ //uploadVideoForm为表单名称
    e.preventDefault()
});



function initTable(name,companyId) {
    let url =  "/organization/dept/deptListPage" ;
    console.log("=========");
    console.log([name,companyId]);
    if (name === undefined && companyId === undefined){
        console.log(1)
         url =  '/organization/dept/deptListPage';
    }
    else if(name ==="" && companyId ===""){
        console.log(2)
        url =  '/organization/dept/deptListPage';
    }
    else {
        console.log(3)
        url = '/organization/dept/likeSearch?name='+name+"&companyId="+companyId;
    }
    console.log(url);

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
                ,{field:'name', title:'部门名称', width:"25%"}
                ,{field:'mark', title:'备注', width:"25%"}
                ,{field:'companyName', title:'所属公司', width:"25%"}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:"25%"}
            ]]
            ,page:true
            //异步请求响应
            ,url: url
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
                    "count": res.data.total, //解析数据长度
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
                let url = '/organization/dept/deptUpdate?id='+data.id;
                console.log(url);
                x_admin_show('编辑',url);

            }
        })//工具条----end




    })//---end

}




let zy = {
    //初始化下拉列表框
    selectInit:()=>{
        let url = "/organization/dept/deptAddInit";
        let totalText;
        //console.log("selectInit");
        $.post(url,{},(json)=>{
            for (let key in json){
                  //console.log(key);
                  //.log(json[key]);
                let text = "<option value="+json[key]+">"+key+"</option>";
                totalText += text;

            }//for--end
            $("#selectedCompanyName").append(totalText);
        })//post---end

    },//selectInit----end
    //绑定模糊查询
    bindLikeSearch:()=>{
        layui.use('form', function() {
            var form = layui.form;
            form.on('submit(sreach)', function(data){
                let [someDeptName,selectedCompanyId] = [$("#someDeptName").val(),$("#selectedCompanyName").val()];
              /*  console.log(someDeptName);
                console.log(selectedCompanyName);*/
              let url = "/organization/dept/likeSearch";
             /* $.post(url,{name:someDeptName,"companyId":selectedCompanyName},()=>{
                  initTable(someCompanyName,someCompanyAddress);
              })*/
                initTable(someDeptName,selectedCompanyId);
                return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
            });
        })
    }
}//-----end
initTable();
zy.selectInit();
zy.bindLikeSearch();
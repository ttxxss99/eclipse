let deleteSet = new Set();
function member_del(id){
	let url = "/payroll/empsalary/deletempSalary?Id="+id;
	$.post(url,{},()=>{
		layer.msg('Deleted',{icon:1,time:1000});
		reloadTable();
	});
}
function delSome(){
	deleteSet.forEach(e=>member_del(e));
}
function reloadTable(){
	let table = layui.table;
	table.reload(("TableId"),{
		page:{curr:1}
	});
}
	
!function initTable(){
	layui.use('table',function(){
		let table = layui.table;
        table.on('checkbox(layTable)', function(obj){
            let checkStatus = table.checkStatus('TableId'),
            	data = checkStatus.data;
            deleteSet.clear();
            for (let i = 0 ; i < data.length ; i++){
                deleteSet.add(data[i].id);
            }
        });
		table.render({
			elem: "#layTable",
			toolbar: "#toolbarDemo",
			title: "员工薪资表",
			id: "TableId",
			cols: [[
				{type: 'checkbox',fixed: 'left',},
				{field: 'empName',title: '员工',width:"22%"},
				{field: 'basicsalary',title: '基本工资',width:"22%"},
				{field: 'subsidies',title: '补贴',width:'22%'},
				{field: 'purchaseRate',title: '社保率',width:'22%'},
				{fixed: 'right',title: '操作', toolbar: '#barDemo',}
			]],
			page: true,
			url : '/payroll/empsalary/empsalaryList',
			request: {
				pageName: 'pageNum',
				limitName: 'pageSize'
			},
			method: 'post',
			parseData: function(res){
				return {
                    "code": res.code, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "count": res.count.total, //解析数据长度
                    "data": res.data.list //解析数据列表					
				}
			},
			done: function(res,curr,count){
				table.render();
			}
		});
		
		table.on('toolbar(layTable)',function(obj){
			console.log(obj);
			let checkStatus = table.checkStatus(obj.config.id);
			let data = checkStatus.data;
			switch(obj.event){
				case 'getCheckData':
					layer.alert(JSON.stringify(data));
					break;
                case 'getCheckLength':
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
            };
		});
		
		table.on('tool(layTable)',function(obj){
            let data = obj.data;
            console.log(data.event);
            if(obj.event === 'detail'){
                layer.msg('ID：'+ data.id + ' 的查看操作');
            } else if(obj.event === 'del'){
                layer.confirm('确定删除吗？', function(index){
                    member_del(data.id);//删除
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                console.log(data.id);
                let url = '/payroll/empsalary/empsalaryUpdate?id='+data.id;
                console.log(url);
                x_admin_show('编辑',url);

            }
		});
	});
}();
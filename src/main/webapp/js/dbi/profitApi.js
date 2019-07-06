let profit = {
    initSelect:()=>{
        let url = "/dbi/profitInit";
        $.post(url,{},(json)=>{
            let totalText = "";
            json.dates.forEach((e)=>{
                let text = `<option value="${e}">${e}</option>`;
                totalText += text;
            })//json.dates.foreach-----end
            $("#date").append(totalText);
            totalText = "";
            json.names.forEach((e)=>{
                let text = `<option value="${e}">${e}</option>`;
                totalText += text;
            })//json.names.forEach-----end
            $("#companyName").append(totalText);
        })// ajax--------end

    },//initSelect----------end
    bindLikeSearch:()=>{
        layui.use('form', function() {
            var form = layui.form;
            form.on('submit(sreach)', function(data){
                let [date,name] = [$("#date").val(),$("#companyName").val()];

                if (date =="" || name=="" ){
                    layer.msg('尚有选项未选择');
                }
                else {
                    let url = "/dbi/profitSearch";
                    $.post(url,{date,name},(json)=>{
                        console.log(json);
                        if (json.list.length>0) {
                           profit.initTable(json.list);
                           profit.initTable2(json.list[0]);
                        }
                        else
                        {
                            layer.msg('该公司该月表格尚未统计');
                        }
                    })}
                return false;
            });
        })
    }//bindLikeSearch-------end
    ,initTable:(list)=>{
        console.log(list[0]);
        let grossmargin = list[0].grossmargin;
        let rental = list[0].rental;
        let spending = list[0].spending;
        let tax = list[0].tax;

        var myChart = echarts.init(document.getElementById('table'));

        option = {
            tooltip : {
                formatter: "{a} <br/>{b} : {c}%"
            },
            toolbox: { //可视化的工具箱
                show: true,
                feature: {
                    dataView: { //数据视图
                        show: true
                    },

                    saveAsImage: {//保存图片
                        show: true
                    }

                }
            },
            series: [
                {
                    max:5000,
                    name: '本月纯利润',
                    type: 'gauge',
                    detail: {formatter:'{value}'},
                    data: [{value: grossmargin, name: '利润:(万元)'}]
                }
            ]
        };

        myChart.setOption(option);
    }//initTable-------end
    ,initTable2:(list)=>{
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#test'
                ,width:1000
                ,cols: [[ //标题栏
                    {field: 'rental', title: '收入总额(税前)/万元', width: "25%"}
                    ,{field: 'tax', title: '税收/万元', width:"25%"}
                    ,{field: 'spending', title: '总支出/万元', width:"25%"}
                    ,{field: 'grossmargin', title: '毛利润/万元', width:"25%"}
                ]]
                ,data: [list]
                ,page: false //是否显示分页

            });
            table.render();
        });
    }//initTable2----end
}

profit.initSelect();
profit.bindLikeSearch();






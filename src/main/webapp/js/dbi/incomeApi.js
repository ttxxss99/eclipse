let income = {
    initSelect:()=>{
        let url = "/dbi/incomeInit";
        $.post(url,{},(json)=>{
            let totalText = "";
            json.dates.forEach((e)=>{
                let text = `<option value="${e}">${e}</option>`;
                totalText += text;
            })//json.dates.foreach-----end
            $("#date").append(totalText);
        })// ajax--------end

    },//initSelect----------end
    bindLikeSearch:()=>{
        layui.use('form', function() {
            var form = layui.form;
            form.on('submit(sreach)', function(data){
                let date = $("#date").val();

                if (date =="" ){
                    layer.msg('尚有选项未选择');
                }
                else {
                    let url = "/dbi/incomeSearch";
                    $.post(url,{date},(json)=>{
                        console.log(json);
                        if (json.list.length>0) {
                           income.initTable(json.list);
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
        let a = list[0];
        let values = [a.fiveFifteen,a.fifteenThirty,a.thirtyFifty,a.fiftyHundred,a.hundredTwo,a.twoFive,a.fiveAbove];
        console.log(values);
        var myChart = echarts.init(document.getElementById('table'));
        option = {
            title: {
                text: '客户项目收入',
                subtext: '数据来自XX'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: {
                type: 'value',
                boundaryGap: [0, 0.01]
            },
            yAxis: {
                type: 'category',
                data: ['5~15W','15~30W','30~50W','50~100W','100~200W','200~500W','>500W']
            },
            series: [
                {
                    name: '2011年',
                    type: 'bar',
                    data: values
                }
            ]
        };
        myChart.setOption(option);
    }//initTable-------end
    ,
}

income.initSelect();
income.bindLikeSearch();






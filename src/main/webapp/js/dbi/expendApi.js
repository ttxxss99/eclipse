let expend = {
    initSelect:()=>{
        let url = "/dbi/expendInit";
        $.post(url,{},(json)=>{
           // console.log(json);
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
                    let url = "/dbi/expendSearch";
                    $.post(url,{date,name},(json)=>{
                        console.log(json);
                        if (json.list.length>0) {
                            expend.initTable(json.list);
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
        var myChart = echarts.init(document.getElementById('table'));
        let dates = [];
        let depts = [];
        list.forEach(e=>{
            dates.push(e.money);
            depts.push(e.dept)
        });

        option = {
            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                },
                formatter: function (params) {
                  let param = params[0];
                  return  param.name +'</br>'+ ' 金额: ' + param.value;
                }
            },
            xAxis: {
                type: 'category',
                data: depts,

            },
            yAxis: {
                type: 'value'
            },
            series: [{
                data:  dates,
                type: 'bar'
            }]
        };


        myChart.setOption(option);
    }//initTable-------end
}

expend.initSelect();
expend.bindLikeSearch();






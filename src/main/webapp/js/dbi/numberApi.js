let number = {
    initSelect:()=>{
        let url = "/dbi/numberInit";
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
                    let url = "/dbi/numberSearch";
                    $.post(url,{date,name},(json)=>{
                        console.log(json);
                        if (json.list.length>0) {
                           number.initTable(json.list);
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
        let depts = [];
        let datas = [];
        list.forEach(e=>{
            datas.push({"value":e.people,"name":e.dept});
            depts.push(e.dept)
        });

        option = {
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b}: {c} ({d}%)"
            },
            legend: {

                x: 'left',
                data:depts
            },
            series: [
                {
                    name:'人数',
                    type:'pie',
                    radius: ['50%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        normal: {
                            show: true,
                            formatter:  "{b}: {c} ({d}%)"
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '30',
                                fontWeight: 'bold'
                            }
                        }
                    },
                    data:datas,


                },
            ]
        };

        myChart.setOption(option);
    }//initTable-------end
}

number.initSelect();
number.bindLikeSearch();






package com.ehr.controller.dbi;

import com.ehr.model.Expend;
import com.ehr.model.Income;
import com.ehr.model.Number;
import com.ehr.model.Profit;
import com.ehr.service.ExpendService;
import com.ehr.service.IncomeService;
import com.ehr.service.NumberService;
import com.ehr.service.ProfitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Zy
 * @date 27/06/2019 11:19 PM
 */
@Controller
@RequestMapping("/dbi/")
public class dbiController {
    @Autowired
    ExpendService expendService;
    @Autowired
    NumberService numberService;
    @Autowired
    IncomeService incomeService;
    @Autowired
    ProfitService profitService;

    /**
     * expend部分
     * */
    @RequestMapping("expend")
    public String  expend(){
        return "dbi/expend";
    }

    @RequestMapping("expendInit")
    @ResponseBody
    public Map<String,Object> expendInit(){
        System.err.println("--------expendInit-------------");
        Map<String,Object> map = new HashMap<>();
        List<String> dates = expendService.getDates();
        List<String> names = expendService.getCompanyNames();
        map.put("dates",dates);
        map.put("names",names);
        return map;
    }
    @RequestMapping("expendSearch")
    @ResponseBody
    public Map<String,Object> expendSearch(String name , String date){
        Map<String,Object> map = new HashMap<>();
        System.err.println("======expendSearch=========");
        List<Expend> list = expendService.getRecs(date,name);
        list.forEach(e-> System.err.println(e));
        map.put("list",list);
        return map;
    }


    /**
     * number部分
     * */
    @RequestMapping("number")
    public String number(){
        return "dbi/number";
    }

    @RequestMapping("numberInit")
    @ResponseBody
    public Map<String,Object> numberInit(){
        System.err.println("--------numberInit-------------");
        Map<String,Object> map = new HashMap<>();
        List<String> dates = numberService.selectAllDate();
        List<String> names = numberService.selectAllCompany();
        map.put("dates",dates);
        map.put("names",names);
        return map;
    }

    @RequestMapping("numberSearch")
    @ResponseBody
    public Map<String,Object> numberSearch(String name , String date){
        Map<String,Object> map = new HashMap<>();
        System.err.println("======numberSearch=========");
        List<Number> list = numberService.selectByDate(date,name);
        list.forEach(e-> System.err.println(e));
        map.put("list",list);
        return map;
    }
    /**
     * income 部分
     * */
    @RequestMapping("income")
    public String  income(){
        return "dbi/income";
    }
    @RequestMapping("incomeInit")
    @ResponseBody
    public Map<String,Object> incomeInit(){
        System.err.println("--------incomeInit-------------");
        Map<String,Object> map = new HashMap<>();
        List<String> dates = incomeService.selectAllDate();
        map.put("dates",dates);
        return map;
    }
    @RequestMapping("incomeSearch")
    @ResponseBody
    public Map<String,Object> incomeSearch(String name , String date){
        Map<String,Object> map = new HashMap<>();
        System.err.println("======incomeSearch=========");
        List<Income> list = incomeService.selectByDate(date);
        list.forEach(e-> System.err.println(e));
        map.put("list",list);
        return map;
    }
    /**
     * profit 部分
     *
     */
    @RequestMapping("profit")
    public String  profit(){
        return "dbi/profit";
    }
    @RequestMapping("profitInit")
    @ResponseBody
    public Map<String,Object> profitInit(){
        System.err.println("--------profitInit-------------");
        Map<String,Object> map = new HashMap<>();
        List<String> dates = profitService.selectAllDate();
        List<String> names = profitService.selectAllCompany();
        map.put("dates",dates);
        map.put("names",names);
        return map;
    }
    @RequestMapping("profitSearch")
    @ResponseBody
    public Map<String,Object> profitSearch(String name , String date){
        Map<String,Object> map = new HashMap<>();
        System.err.println("======profitSearch=========");
        List<Profit> list = profitService.selectByDate(date,name);
        list.forEach(e-> System.err.println(e));
        map.put("list",list);
        return map;
    }

}


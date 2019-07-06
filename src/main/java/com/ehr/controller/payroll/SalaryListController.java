package com.ehr.controller.payroll;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.service.SalaryListService;

@Controller
@RequestMapping("/payroll/salarylist")
public class SalaryListController {
	@Autowired
	SalaryListService salaryListService;
	@RequestMapping("")
	public String salaryLever() {
		return "/Payroll/salaryList/salaryList";
	}
	@RequestMapping("/salarylistList")
	@ResponseBody
	public Map<String, Object> salarylistList(Integer pageNum, Integer pageSize){
	    if(pageNum==null){
	         pageNum=1;
	    }
	    if(pageSize==null){
	         pageSize=10;
	    }
		Map<String,Object> map = new HashMap<>();
		map.put("code",0);
		map.put("data",salaryListService.pageList(pageNum, pageSize));
		map.put("count",salaryListService.pageList(pageNum, pageSize));
		return map;
	}
	@RequestMapping("deletesalarylist")
	@ResponseBody
    public Map<String,Object> deleteASocial(Integer Id){
        Map<String,Object> map = new HashMap<>();
        salaryListService.deleteByPrimaryKey(Id);
        map.put("msg","deleteOK");
        return map;
    }
}

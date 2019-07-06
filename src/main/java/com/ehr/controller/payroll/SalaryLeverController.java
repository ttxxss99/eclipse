package com.ehr.controller.payroll;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.model.SalaryLever;
import com.ehr.service.SalaryLeverService;


@Controller
@RequestMapping("/payroll/salarylever")
public class SalaryLeverController {
	@Autowired
	SalaryLeverService salaryLeverService;
	@RequestMapping("")
	public String salaryLever() {
		return "/Payroll/salaryLever/salaryLever";
	}
	@RequestMapping("/salaryLeverList")
	@ResponseBody
	public Map<String, Object> salaryLeverList(Integer pageNum, Integer pageSize){
	    if(pageNum==null){
	         pageNum=1;
	    }
	    if(pageSize==null){
	         pageSize=10;
	    }
		Map<String,Object> map = new HashMap<>();
		map.put("code",0);
		map.put("data",salaryLeverService.pageList(pageNum, pageSize));
		map.put("count",salaryLeverService.pageList(pageNum, pageSize));
		return map;
	}
	@RequestMapping("salaryLeverAdd")
	public String salaryLeverAdd() {
		return "Payroll/salaryLever/salaryLeverAdd";
	}
	@RequestMapping("addASalaryLever")
	@ResponseBody
	public String addASalaryLever(String name,Integer salary,String mark) {
		System.out.println("add SalaryLever---------");
		SalaryLever salaryLever = new SalaryLever();
		salaryLever.setId(0);
		salaryLever.setName(name);
		salaryLever.setSalary(salary);
		salaryLever.setMark(mark);
		salaryLever.setLogictodelete(1);
		salaryLeverService.insert(salaryLever);
		return "Add success";
	}
	@RequestMapping("deleteSalaryLever")
	@ResponseBody
    public Map<String,Object> deleteASocial(Integer Id){
        Map<String,Object> map = new HashMap<>();
        salaryLeverService.deleteByPrimaryKey(Id);
        map.put("msg","deleteOK");
        return map;
    }
	@RequestMapping("/salaryLeverUpdate")
    public String updateSalaryLever(Integer id, HttpServletRequest request){
		System.err.println("Update----------page");
        SalaryLever salaryLever = salaryLeverService.selectByPrimaryKey(id);
        request.setAttribute("id",salaryLever.getId());
        request.setAttribute("name",salaryLever.getName());
        request.setAttribute("salary",salaryLever.getSalary());
        request.setAttribute("mark",salaryLever.getMark());
        return "Payroll/salaryLever/salaryLeverUpdate";
    }
	@RequestMapping("updateASalaryLever")
	@ResponseBody
	public void updateASalaryLever(Integer id,String name,Integer salary,String mark) {
		SalaryLever salaryLever = new SalaryLever();
		salaryLever.setId(id);
		salaryLever.setName(name);
		salaryLever.setSalary(salary);
		salaryLever.setMark(mark);
		salaryLever.setLogictodelete(1);//default 1 means alive
		salaryLeverService.updateByPrimaryKey(salaryLever);
	}
	
}

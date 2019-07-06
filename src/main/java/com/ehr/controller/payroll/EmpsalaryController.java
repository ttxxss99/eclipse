package com.ehr.controller.payroll;

import java.util.HashMap;

import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.dao.EmpDao;
import com.ehr.model.EmpSalary;

import com.ehr.service.EmpSalaryService;
import com.ehr.service.SocialService;

@Controller
@RequestMapping("/payroll/empsalary")
public class EmpsalaryController {
	@Autowired
	EmpSalaryService empSalaryService;
	@Autowired
	EmpDao empDao;
	@Autowired
	SocialService socialService;
		@RequestMapping("")
		public String empSalary() {
			System.out.println("员工薪资表");
			return "/Payroll/empSalary/empSalary";
		}	
		@RequestMapping("/empsalaryList")
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
			map.put("data",empSalaryService.pageList(pageNum, pageSize));
			map.put("count",empSalaryService.pageList(pageNum, pageSize));
			return map;
		}
		@RequestMapping("empsalaryAdd")
		public String salaryLeverAdd() {
			return "Payroll/empsalary/empSalaryAdd";
		}
		@RequestMapping("addAempSalary")
		@ResponseBody
		public String addAempSalary(Integer empId,Integer salary,Integer subsides,Integer social) {
			System.out.println("add SalaryLever---------");
			EmpSalary empSalary = new EmpSalary();
			empSalary.setEmpId(empId);
			empSalary.setBasicsalary(salary);
			empSalary.setSubsidies(subsides);
			empSalary.setSocialsecurityId(social);
			empSalary.setLogictodelete(1);
			return "Add success";
		}
		@RequestMapping("deletempSalary")
		@ResponseBody
	    public Map<String,Object> deleteAempSalary(Integer Id){
	        Map<String,Object> map = new HashMap<>();
	        empSalaryService.deleteByPrimaryKey(Id);
	        map.put("msg","deleteOK");
	        return map;
	    }
		
}

package com.ehr.controller.recruit;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.model.Recruitmentdemand;
import com.ehr.service.EmpService;
import com.ehr.service.RecruitmentdemandService;
import com.github.pagehelper.PageInfo;

/**
 * 招聘需求模块  控制器
 * @author WW
 *
 */
@Controller
@RequestMapping("/recruit/needs")
public class NeedsController {
	@Autowired
	RecruitmentdemandService recruitmentdemandService;
	@Autowired
	EmpService empService;
	
	//显示主页 该模块的主页为recruitNeedsList.jsp页面
	//访问url http://localhost/recruit/needs
	@RequestMapping
	public String needs() {
		return "recruit/needs/needsList";
	}
	//查询所有
	//访问url http://localhost/recruit/needs/needsList
	@RequestMapping("/needsList")
	public String list() {
		return "recruit/needs/needsList";
	}
	//新增一条数据
	//访问url http://localhost/recruit/needs/needsAdd
	@RequestMapping("/needsAdd")
	public String needsAdd() {
		
		return "recruit/needs/needsAdd";
	}
	//修改指定数据
	@RequestMapping("/needsUpdate")
	public String needsUpdate(Integer id,HttpServletRequest request) {
		Recruitmentdemand recruitmentdemand = recruitmentdemandService.selectById(id);
		request.setAttribute("id", id);
		request.setAttribute("skillsrequired", recruitmentdemand.getSkillsrequired());
		request.setAttribute("hiring", recruitmentdemand.getHiring());
		request.setAttribute("wagebudget", recruitmentdemand.getWagebudget());
		request.setAttribute("initiatetime", recruitmentdemand.getInitiatetime());
		request.setAttribute("state", recruitmentdemand.getState());
		request.setAttribute("mark", recruitmentdemand.getMark());
		request.setAttribute("empId", recruitmentdemand.getEmpId());
		return "recruit/needs/needsUpdate";
	}
	
	//Ajax查询招聘需求ehr_recruitmentdemand表数据
	@RequestMapping("/needsListAjax")
	@ResponseBody
	public Map<String, Object> needsListAjax(){
		Map<String, Object> map = new HashMap<>();
		map.put("data", recruitmentdemandService.selectAll());
		//总条数
		map.put("size", recruitmentdemandService.selectAll().size());
		return map;
	}
	//Ajax添加一个新的数据
	@RequestMapping("/needsAddAjax")
	@ResponseBody
	public Map<String, Object> needsAddAjax(String skillsrequired,Integer hiring,Integer wagebudget,
			String initiatetime,Integer state,String mark,Integer empId) throws ParseException{
		Recruitmentdemand recruitmentdemand = new Recruitmentdemand();
		recruitmentdemand.setSkillsrequired(skillsrequired);
		recruitmentdemand.setHiring(hiring);
		recruitmentdemand.setWagebudget(wagebudget);
		recruitmentdemand.setInitiatetime(new SimpleDateFormat("yyyy-MM-dd").parse(initiatetime));
		recruitmentdemand.setState(state);
		recruitmentdemand.setMark(mark);
		recruitmentdemand.setEmpId(empId);
		recruitmentdemand.setLogictodelete(0);
		recruitmentdemandService.insert(recruitmentdemand);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	}
	//Ajax修改一个新的数据
	@RequestMapping("/needsUpdateAjax")
	@ResponseBody
	public Map<String, Object> needsUpdateAjax(Integer id,String skillsrequired,Integer hiring,Integer wagebudget,
			String initiatetime,Integer state,String mark,Integer empId) throws ParseException{
		Recruitmentdemand recruitmentdemand = new Recruitmentdemand();
		recruitmentdemand.setId(id);
		recruitmentdemand.setSkillsrequired(skillsrequired);
		recruitmentdemand.setHiring(hiring);
		recruitmentdemand.setWagebudget(wagebudget);
		recruitmentdemand.setInitiatetime(new SimpleDateFormat("yyyy-MM-dd").parse(initiatetime));
		recruitmentdemand.setState(state);
		recruitmentdemand.setMark(mark);
		recruitmentdemand.setEmpId(empId);
		recruitmentdemand.setLogictodelete(0);
		recruitmentdemandService.update(recruitmentdemand);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	}
	//Ajax删除一条数据的部分
	@RequestMapping("/needsDeleteAjax")
	@ResponseBody
	public Map<String, Object> needsDeleteAjax(Integer id){
		recruitmentdemandService.deleteById(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg","deleteOK");
		return map;
	}
	//Ajax查询Emp表的所有Id和Name
	@RequestMapping("/empListAjax")
	@ResponseBody
	public Map<String, Object> empListAjax(){
		Map<String, Object> map = new HashMap<>();
		map.put("data", empService.selectAll());
		return map;
	}
	//Ajax 返回页码
	@RequestMapping("/needsListPage")
    @ResponseBody
    public Map<String,Object> needsListPage(Integer pageNum,Integer pageSize){
        System.err.println("----------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        PageInfo<Recruitmentdemand> list = recruitmentdemandService.pageList(pageNum,pageSize);
        //将状态码变为字符串，以及empId变为名字
        List<Recruitmentdemand> list2 = list.getList();
        for (int i = 0; i < list2.size(); i++) {
			Recruitmentdemand recruitmentdemand = list2.get(i);
			if (recruitmentdemand.getState() == 1) {
				recruitmentdemand.setStateStr("已处理");
			}else {
				recruitmentdemand.setStateStr("未处理");
			}
			int empId = recruitmentdemand.getEmpId();
			String empName = empService.selectById(empId).getName();
			recruitmentdemand.setEmpName(empName);
		}
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list);
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }
	
	//Ajax 模糊查询
	@RequestMapping("/selectLikeAjax")
    @ResponseBody
    public Map<String,Object> likeSelectAjax(Integer pageNum,Integer pageSize,
    		Integer state,Integer hiringMin,Integer hiringMax){
        System.err.println("----------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        PageInfo<Recruitmentdemand> list = 
        		recruitmentdemandService.selectLike(pageNum, pageSize, state, hiringMin, hiringMax);
        //将状态码变为字符串，以及empId变为名字
        List<Recruitmentdemand> list2 = list.getList();
        for (int i = 0; i < list2.size(); i++) {
			Recruitmentdemand recruitmentdemand = list2.get(i);
			if (recruitmentdemand.getState() == 1) {
				recruitmentdemand.setStateStr("已处理");
			}else {
				recruitmentdemand.setStateStr("未处理");
			}
			int empId = recruitmentdemand.getEmpId();
			String empName = empService.selectById(empId).getName();
			recruitmentdemand.setEmpName(empName);
		}
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list);
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }
}

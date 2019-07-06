package com.ehr.controller.txs;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.dao.EmpdataDao;
import com.ehr.model.Attendance;
import com.ehr.model.Empdata;
import com.ehr.model.Rule;
import com.ehr.model.pojo.AttendanceQiantai;
import com.ehr.model.pojo.rulePojo;
import com.ehr.service.impl.AttendanceImpl;
import com.ehr.service.impl.RuleImpl;
import com.ehr.utils.TimeClass;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/txs/kaoqing")
public class KaoQingController {

	@Autowired
	EmpdataDao empdataDao;
	
	
	@Autowired
	AttendanceImpl attendanceImpl;

	@Autowired
	RuleImpl ruleImpl;
	
	@RequestMapping("/kqlist")
	public String list() {
		return "txs/kaoqing/kqList";
	}

	@RequestMapping("/rulelist")
	public String rulelist() {
		return "txs/kaoqing/ruleList";
	}

	@RequestMapping("/add")
	public String add() {
		return "txs/kaoqing/add";
	}

	@RequestMapping("/ruleAdd")
	public String ruleAdd() {
		return "txs/kaoqing/ruleAdd";
	}

	@RequestMapping("/updateOpt")
	public String updateOpt(Integer id, HttpServletRequest request) {
		request.setAttribute("obj", attendanceImpl.selectByPrimaryKey(id));
		
		String time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(attendanceImpl.selectByPrimaryKey(id).getClockintime());
		request.setAttribute("time", time);
		return "txs/kaoqing/updateOpt";
	}
	@RequestMapping("/updateRuleOpt")
	public String updateRuleOpt(Integer id, HttpServletRequest request) {
		request.setAttribute("obj",ruleImpl.selectByPrimaryKey(id));
		
		return "txs/kaoqing/updateRuleOpt";
	}
	@RequestMapping("/ruleupdate")
	@ResponseBody
	public void ruleupdate(Integer id,String rulesName, String amStartTime, String amEndTime, String pmStartTime, String pmEndTime,
			String clockInIocation, Integer clockInNum, Integer instructions, Integer empId) {
		Rule rule = new Rule();
		rule.setId(id);
		rule.setRulesname(rulesName);
		rule.setClockinnum(clockInNum);
		rule.setAmstarttime(amStartTime);
		rule.setAmendtime(amEndTime);
		rule.setPmstarttime(pmStartTime);
		rule.setPmendtime(pmEndTime);
		rule.setClockiniocation(clockInIocation);
		rule.setEmpId(empId);
		rule.setInstructions(instructions);
		System.out.println(id);
//		System.err.println(rule.getClockiniocation());
//		System.out.println(rule.getRulesname());
		ruleImpl.updateByPrimaryKey(rule);
	}
	@RequestMapping("/update")
	@ResponseBody
	public Map<String, Object> update(Integer id, String clockintime, String clockiniocation, Integer tag,
			Integer empId) {
		Attendance attendance = new Attendance();
		Date now = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			now = f.parse(clockintime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.err.println(now);

		attendance.setId(id);
		attendance.setClockintime(now);
		attendance.setClockiniocation(clockiniocation);
		attendance.setEmpId(empId);
		attendance.setTag(tag);
		attendanceImpl.updateByPrimaryKey(attendance);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "更新成功");
		return map;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(Integer id) {
		attendanceImpl.deleteByPrimaryKey(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "删除成功");
		return map;
	}

	@RequestMapping("/ruledelete")
	@ResponseBody
	public Map<String, Object> ruledelete(Integer id) {
		ruleImpl.deleteByPrimaryKey(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "删除成功");
		return map;
	}

	@RequestMapping("/ruleinsert")
	@ResponseBody
	public void ruleinsert(String rulesName, String amStartTime, String amEndTime, String pmStartTime, String pmEndTime,
			String clockInIocation, Integer clockInNum, Integer instructions, Integer empId) {
		Rule rule = new Rule();
		rule.setRulesname(rulesName);
		rule.setClockinnum(clockInNum);
		rule.setAmstarttime(amStartTime);
		rule.setAmendtime(amEndTime);
		rule.setPmstarttime(pmStartTime);
		rule.setPmendtime(pmEndTime);
		rule.setClockiniocation(clockInIocation);
		rule.setEmpId(empId);
		rule.setInstructions(instructions);
		ruleImpl.insert(rule);
	}

	@RequestMapping("/insert")
	@ResponseBody
	public Map<String, Object> insert(String date, String clockiniocation,String empid,String time) throws ParseException {
		TimeClass timeClass = new TimeClass();
		Map<String, Object> map = new HashMap<>();
		String clockintime = date+" "+time+":00";
		Integer empId = Integer.parseInt(empid);
		Empdata empdata = new Empdata();
		Attendance attendance = new Attendance();
		Date now = new Date();
		
		
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			now = f.parse(clockintime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Long Checkin_time = now.getTime();
		System.out.println(now+"------");
		attendance.setClockintime(now);
		attendance.setClockiniocation(clockiniocation);
		if(Checkin_time<timeClass.getLongTime(date,"07:00")) {
			map.put("msg", "未到打卡时间");
			return map;
		}else if (Checkin_time<timeClass.getLongTime(date,"08:00")) {
			attendance.setTag(1);
			map.put("msg", "打卡成功");
			empdata.setException_type("正常");
			empdata.setCheckin_type("上班打卡");
			//大于8点小于12点打卡迟到 1561867200000
		}else if (Checkin_time<timeClass.getLongTime(date,"12:00")) {
			attendance.setTag(2);
			map.put("msg", "迟到");
			empdata.setCheckin_type("上班打卡");
			empdata.setException_type("时间异常");
			//小于18点 早退
		}else if(Checkin_time<timeClass.getLongTime(date,"18:00")){
			attendance.setTag(3);
			map.put("msg", "早退");
			empdata.setCheckin_type("下班打卡");
			empdata.setException_type("时间异常");
			//大于18点 成功
		}else if (Checkin_time<timeClass.getLongTime(date,"20:00")) {
			attendance.setTag(1);
			map.put("msg", "打卡成功");
			empdata.setException_type("正常");
			empdata.setCheckin_type("下班打卡");
		}else {
			System.out.println("大于20点");
			map.put("msg", "未到打卡时间");
			return map;
		}
		attendance.setEmpId(empId);
		attendance.setLogictodelete(1);
		
		empdata.setGroupname("上班");
		empdata.setEmpName(attendanceImpl.selectAllPojo(empId).get(0).getName());
		empdata.setCheckin_time(Checkin_time);
		attendanceImpl.insert(attendance);
		empdataDao.insertdate(empdata);
		return map;
	}
	@RequestMapping("/ajaxPageList")
	@ResponseBody
	public Map<String, Object> ajaxPageList(Integer pageNum, Integer pageSize) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		Map<String, Object> map = new HashMap<>();
		PageInfo<AttendanceQiantai> pageList = attendanceImpl.pageqiantaiList(pageNum, pageSize);
		for (int i = 0; i < pageList.getSize(); i++) {
			switch (pageList.getList().get(i).getTag()) {
			case 1:
				pageList.getList().get(i).setTagName("正常");
				break;
			case 2:
				pageList.getList().get(i).setTagName("迟到");
				break;
			case 3:
				pageList.getList().get(i).setTagName("早退");
				break;
			default:
				pageList.getList().get(i).setTagName("情况未知");
				break;
			}
		}
//	        System.out.println(PageListQiantai.getList().get(0));;
//	        System.out.println(pageList.getList().get(0).getTag());
//	        pageList.getList().get(2)
		map.put("code", 0);
		map.put("data", pageList);
//		System.err.println(pageList.getList().get(0).toString());
		
		String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(pageList.getList().get(0).getClockintime());
		map.put("count", pageList);
//		System.err.println(format.toString());
		map.put("time", format);
		return map;
	}

	@RequestMapping("/ajaxPageRuleList")
	@ResponseBody
	public Map<String, Object> ajaxPageRuleList(Integer pageNum, Integer pageSize) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		Map<String, Object> map = new HashMap<>();
		PageInfo<rulePojo> list = ruleImpl.pageqiantaiList(pageNum, pageSize);
		map.put("code", 0);
		map.put("data", list);
		map.put("count", list);
		return map;
	}
	
	@RequestMapping("/likeSearch")
	@ResponseBody
	public Map<String, Object> likeSearch(Integer pageNum, Integer pageSize,String name,Integer empId,Integer tag) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		Map<String, Object> map = new HashMap<>();
		PageInfo<AttendanceQiantai> pageList = attendanceImpl.selecpagetlike(pageNum, pageSize, name, empId,  tag);
		for (int i = 0; i < pageList.getSize(); i++) {
			switch (pageList.getList().get(i).getTag()) {
			case 1:
				pageList.getList().get(i).setTagName("正常");
				break;
			case 2:
				pageList.getList().get(i).setTagName("迟到");
				break;
			case 3:
				pageList.getList().get(i).setTagName("早退");
				break;
			default:
				pageList.getList().get(i).setTagName("情况未知");
				break;
			}
		}
		map.put("code", 0);
		map.put("data", pageList);
		map.put("count", pageList);
		return map;
	}
}

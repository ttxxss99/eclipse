package com.ehr.controller.txs;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.model.Activity;
import com.ehr.model.Attendance;
import com.ehr.model.Emp;
import com.ehr.model.Holiday;
import com.ehr.model.pojo.ActivityQiantai;
import com.ehr.service.EmpService;
import com.ehr.service.EmpWjkService;
import com.ehr.service.impl.ActivityImpl;
import com.ehr.service.impl.EmpServiceImpl;
import com.ehr.service.impl.HolidayImpl;
import com.ehr.utils.SendEmail;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/txs/activity")
public class activityController {
	
	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
    EmpWjkService empWjkService;
	
	@Autowired
	SendEmail sendMail;
	
	@Autowired
	ActivityImpl activityImpl;
	
	@Autowired
	HolidayImpl holidayImpl;
	@RequestMapping("/aclist")
	public String list() {
		return "txs/activity/activityList";
	}
	@RequestMapping("/holidaylist")
	public String holidaylist() {
		return "txs/activity/holidayList";
	}
	@RequestMapping("/acUpdateOpt")
	public String acUpdateOpt(Integer id,HttpServletRequest request) {
//		request.setAttribute("id", id);
		request.setAttribute("id", activityImpl.selectByPrimaryKey(id).getId());
		request.setAttribute("state", activityImpl.selectByPrimaryKey(id).getState());
		request.setAttribute("empId", activityImpl.selectByPrimaryKey(id).getEmpId());
		request.setAttribute("theme", activityImpl.selectByPrimaryKey(id).getTheme());
		request.setAttribute("activityAddress", activityImpl.selectByPrimaryKey(id).getActivityaddress());
		request.setAttribute("introduce", activityImpl.selectByPrimaryKey(id).getIntroduce());
		request.setAttribute("activityTheDetail", activityImpl.selectByPrimaryKey(id).getActivitythedetail());
		request.setAttribute("spending", activityImpl.selectByPrimaryKey(id).getSpending());
		request.setAttribute("initateTime", activityImpl.selectByPrimaryKey(id).getInitatetime());
		return "txs/activity/acUpdateOpt";
	}
	@RequestMapping("/hoUpdateOpt")
	public String hoUpdateOpt(Integer id,HttpServletRequest request) {
//		request.setAttribute("id", id);
		Holiday selectByPrimaryKey = holidayImpl.selectByPrimaryKey(id);
		String time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(holidayImpl.selectByPrimaryKey(id).getTime());
		request.setAttribute("id",selectByPrimaryKey.getId() );
		request.setAttribute("name",selectByPrimaryKey.getName() );
		request.setAttribute("time", time);
		request.setAttribute("content", selectByPrimaryKey.getContent());
		return "txs/activity/hoUpdateOpt";
	}
	@RequestMapping("/acAdd")
	public String acAdd() {
		return "txs/activity/acAdd";
	}
	
	@RequestMapping("/holidayAdd")
	public String holidayAdd() {
		return "txs/activity/holidayAdd";
	}
	
	@RequestMapping("/acdelete")
	@ResponseBody
	public Map<String, Object> delete(Integer id) {
		activityImpl.deleteByPrimaryKey(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "删除成功");
		return map;
	}
	@RequestMapping("/hodelete")
	@ResponseBody
	public Map<String, Object> hodelete(Integer id) {
		holidayImpl.deleteByPrimaryKey(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "删除成功");
		return map;
	}
	@RequestMapping("/acUpdata")
	@ResponseBody
	public void acUpdata( Integer id,String theme, String activityAddress,String introduce,String activityTheDetail,String initateTime, Integer spending, Integer empId) {
		Date now = new Date();
		Activity activity = new Activity();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		try {
			now = f.parse(initateTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println(id);
		activity.setId(id);
		activity.setState(0);
		activity.setTheme(theme);
		activity.setActivityaddress(activityAddress);
		activity.setIntroduce(introduce);
		activity.setInitatetime(now);
		activity.setActivitythedetail(activityTheDetail);
		activity.setSpending(spending);
		activity.setEmpId(empId);
		activityImpl.updateByPrimaryKey(activity);
	}
	@RequestMapping("/hoUpdata")
	@ResponseBody
	public void hoUpdata( Integer id,String name,String time, String content) {
		Date now = new Date();
		Holiday holiday = new  Holiday();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		try {
			now = f.parse(time);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		holiday.setId(id);
		holiday.setName(name);
		holiday.setContent(content);
		holiday.setTime(now);
		holidayImpl.updateByPrimaryKey(holiday);
	}
	
	@RequestMapping("/acInsert")
	@ResponseBody
	public void insert(String theme, String activityAddress,String introduce,String activityTheDetail,String initateTime, Integer spending, Integer empId) {
		Date now = new Date();
		Activity activity = new Activity();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		try {
			now = f.parse(initateTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		activity.setState(0);
		activity.setTheme(theme);
		activity.setActivityaddress(activityAddress);
		activity.setIntroduce(introduce);
		activity.setInitatetime(now);
		activity.setActivitythedetail(activityTheDetail);
		activity.setSpending(spending);
		activity.setEmpId(empId);
		activityImpl.insert(activity);
	}
	
	@RequestMapping("/hoInsert")
	@ResponseBody
	public void hoInsert(String name, String content,String time) {
		Date now = new Date();
		Holiday holiday = new  Holiday();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		try {
			now = f.parse(time);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		holiday.setName(name);
		holiday.setContent(content);
		holiday.setTime(now);
		holidayImpl.insert(holiday);
	}
	
	@RequestMapping("/ajaxPageActivityList")
	@ResponseBody
	public Map<String, Object> ajaxPageRuleList(Integer pageNum, Integer pageSize) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		Map<String, Object> map = new HashMap<>();
		PageInfo<ActivityQiantai> pageList = activityImpl.pageqiantaiList(pageNum, pageSize);
//	        List<AttendancePojo> list = pageList.getList();
		for (int i = 0; i < pageList.getSize(); i++) {
			switch (pageList.getList().get(i).getState()) {
			case 1:
				pageList.getList().get(i).setStaticName("通过");
				break;
			case 2:
				pageList.getList().get(i).setStaticName("未通过");
				break;
			case 0:
				pageList.getList().get(i).setStaticName("未审核");
				break;
			default:
				pageList.getList().get(i).setStaticName("情况未知");
				break;
			}
		}
		map.put("code", 0);
		map.put("data", pageList);
		map.put("count", pageList);
		return map;
	}
	@RequestMapping("/likeSearch")
	@ResponseBody
	public Map<String, Object> likeSearch(Integer pageNum, Integer pageSize,String name,String activityAddress) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		
		Map<String, Object> map = new HashMap<>();
		PageInfo<ActivityQiantai> pageList = activityImpl.selecpagetlike(pageNum, pageSize, name, activityAddress);
//	        List<AttendancePojo> list = pageList.getList();
		for (int i = 0; i < pageList.getSize(); i++) {
			switch (pageList.getList().get(i).getState()) {
			case 1:
				pageList.getList().get(i).setStaticName("通过");
				break;
			case 2:
				pageList.getList().get(i).setStaticName("未通过");
				break;
			case 0:
				pageList.getList().get(i).setStaticName("未审核");
				break;
			default:
				pageList.getList().get(i).setStaticName("情况未知");
				break;
			}
		}
//	        System.out.println(PageListQiantai.getList().get(0));;
//	        System.out.println(pageList.getList().get(0).getTag());
//	        pageList.getList().get(2)
		map.put("code", 0);
		map.put("data", pageList);
		map.put("count", pageList);
		return map;
	}
	@RequestMapping("/ajaxPageHolidayList")
	@ResponseBody
	public Map<String, Object> ajaxPageHolidayList(Integer pageNum, Integer pageSize) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		Map<String, Object> map = new HashMap<>();
		PageInfo<Holiday> pageList = holidayImpl.pageqiantaiList(pageNum, pageSize,null);
		map.put("code", 0);
		map.put("data", pageList);
		map.put("count", pageList);
		return map;
	}
	@RequestMapping("/holikeSearch")
	@ResponseBody
	public Map<String, Object> holikeSearch(Integer pageNum, Integer pageSize,String name) {
		if (pageNum == null) {
			pageNum = 1;
		}
		if (pageSize == null) {
			pageSize = 10;
		}
		Map<String, Object> map = new HashMap<>();
		PageInfo<Holiday> pageList = holidayImpl.pageqiantaiList(pageNum, pageSize,name);
		map.put("code", 0);
		map.put("data", pageList);
		map.put("count", pageList);
		return map;
	}
	
	@RequestMapping("/hoSendEmail")
	@ResponseBody
	public Map<String, Object> hoSendEmail(String id) throws Exception{
		System.err.println(id);
		int ID = Integer.parseInt(id);
		Holiday holiday = holidayImpl.selectByPrimaryKey(ID);
		Map<String, Object> map = new HashMap<>();
		String name = holiday.getName();
		String content = holiday.getContent();
//	list	empService.selectAll(); size
		//list里获取每一个邮箱 email;然后设置List().get(i).getemail
		//	List().get(0).getemail
		System.err.println(name);
		System.err.println(content);
		List<Emp> selectAll = empWjkService.selectAll();
//		List(String) EmailAddress = 
		for(int i=0;i<selectAll.size();i++) {
//			sendMail.sendSimpleMail("email", name, content);
			sendMail.sendQQEmail(mailSender, name, content,selectAll.get(i).getEmail());
		}
		map.put("msg", "发送成功");
		return map;
	}
	
	@RequestMapping("/acSendEmail")
	@ResponseBody
	public Map<String, Object> acSendEmail(String id) throws Exception{
		System.err.println(id);
		int ID = Integer.parseInt(id);
		Activity activity = activityImpl.selectByPrimaryKey(ID);
		Map<String, Object> map = new HashMap<>();
		String name =activity.getTheme();
		String activityaddress = activity.getActivityaddress();
		String introduce = activity.getIntroduce();
		String activitythedetail = activity.getActivitythedetail();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(activity.getInitatetime());
		String content =activityaddress+introduce+activitythedetail+dateString;
//	list	empService.selectAll(); size
		//list里获取每一个邮箱 email;然后设置List().get(i).getemail
		//	List().get(0).getemail
		System.err.println(name);
		System.err.println(content);
		List<Emp> selectAll = empWjkService.selectAll();
//		List(String) EmailAddress = 
		for(int i=0;i<2;i++) {
//			sendMail.sendSimpleMail("email", name, content);
			sendMail.sendQQEmail(mailSender, name, content,"809079733@qq.com");
		}
		map.put("msg", "发送成功");
		return map;
	}
}

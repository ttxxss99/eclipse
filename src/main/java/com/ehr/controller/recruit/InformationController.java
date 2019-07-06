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

import com.ehr.model.Channel;
import com.ehr.model.Releases;
import com.ehr.service.ChannelService;
import com.ehr.service.EmpService;
import com.ehr.service.ReleasesService;
import com.github.pagehelper.PageInfo;

/**
 * 招聘信息发布模块的控制器
 * @author WW
 *
 */
@Controller
@RequestMapping("/recruit/info")
public class InformationController {
	@Autowired
	ReleasesService releasesService;
	@Autowired
	EmpService empService;
	@Autowired
	ChannelService channelService;
	
	//招聘信息主页面 InfoList.jsp
	//访问url http://localhost/recruit/info
	@RequestMapping
	public String info() {
		return "recruit/information/infoList";
	}
	//新增一条数据
	@RequestMapping("/infoAdd")
	public String infoAdd() {
		return "recruit/information/infoAdd";
	}
	//修改一条数据
	@RequestMapping("/infoUpdate")
	public String infoUpdate(Integer id,HttpServletRequest request) {
		Releases releases = releasesService.selectById(id);
		request.setAttribute("id", id);
		request.setAttribute("skillsrequired", releases.getSkillsrequired());
		request.setAttribute("hiring", releases.getHiring());
		request.setAttribute("wagebudget", releases.getWagebudget());
		request.setAttribute("initiatetime", releases.getInitiatetime());
		request.setAttribute("state", releases.getState());
		request.setAttribute("mark", releases.getMark());
		request.setAttribute("empId", releases.getEmpId());
		request.setAttribute("channelId", releases.getChannelId());
		request.setAttribute("logictodelete", releases.getLogictodelete());
		return "recruit/information/infoUpdate";
	}
	
	//Ajax查询招聘需求ehr_releases表数据
	@RequestMapping("/infoListAjax")
	@ResponseBody
	public Map<String, Object> infoListAjax(){
		Map<String, Object> map = new HashMap<>();
		map.put("data", releasesService.selectAll());
		//总条数
		map.put("size", releasesService.selectAll().size());
		return map;
	}
	//Ajax添加一个新的数据
	@RequestMapping("/infoAddAjax")
	@ResponseBody
	public Map<String, Object> infoAddAjax(String skillsrequired,Integer hiring,Integer wagebudget,
			String initiatetime,Integer state,String mark,Integer empId,Integer channelId,Integer logictodelete) throws ParseException{
		Releases releases = new Releases();
		releases.setSkillsrequired(skillsrequired);
		releases.setHiring(hiring);
		releases.setWagebudget(wagebudget);
		releases.setInitiatetime(new SimpleDateFormat("yyyy-MM-dd").parse(initiatetime));
		releases.setState(state);
		releases.setMark(mark);
		releases.setEmpId(empId);
		releases.setChannelId(channelId);
		releases.setLogictodelete(logictodelete);
		releasesService.insert(releases);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
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
	//Ajax查询渠道表的所有Id和Name
	@RequestMapping("/channelListAjax")
	@ResponseBody
	public Map<String, Object> channelListAjax(){
		Map<String, Object> map = new HashMap<>();
		map.put("data", channelService.selectAll());
		return map;
	}
	//Ajax删除一条数据的部分
	@RequestMapping("/infoDeleteAjax")
	@ResponseBody
	public Map<String, Object> infoDeleteAjax(Integer id){
		releasesService.deleteById(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg","deleteOK");
		return map;
	}
	//Ajax 返回页码
	@RequestMapping("/infoListPage")
    @ResponseBody
    public Map<String,Object> companyListPage(Integer pageNum,Integer pageSize){
        System.err.println("----------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        PageInfo<Releases> list = releasesService.pageList(pageNum,pageSize);
        //将状态码变为字符串，以及empId变为名字,渠道id也改为相应的名字,逻辑删除字段改为字符串
        List<Releases> list2 = list.getList();
        for (int i = 0; i < list2.size(); i++) {
			Releases releases = list2.get(i);
			if (releases.getState() == 1) {
				releases.setStateStr("已处理");
			}else {
				releases.setStateStr("未处理");
			}
			if (releases.getLogictodelete() == 0) {
				releases.setLogName("已删除");
			}else {
				releases.setLogName("未删除");
			}
			int empId = releases.getEmpId();
			String empName = empService.selectById(empId).getName();
			Channel channel = channelService.selectById(releases.getChannelId());
			releases.setChannelName(channel.getName());
			releases.setEmpName(empName);
		}
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list);
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }
	//Ajax修改一个新的数据
	@RequestMapping("/infoUpdateAjax")
	@ResponseBody
	public Map<String, Object> infoUpdateAjax(Integer id,String skillsrequired,Integer hiring,Integer wagebudget,
			String initiatetime,Integer state,String mark,Integer empId,Integer channelId,Integer logictodelete) throws ParseException{
		Releases releases = new Releases();
		releases.setId(id);
		releases.setSkillsrequired(skillsrequired);
		releases.setHiring(hiring);
		releases.setWagebudget(wagebudget);
		releases.setInitiatetime(new SimpleDateFormat("yyyy-MM-dd").parse(initiatetime));
		releases.setState(state);
		releases.setMark(mark);
		releases.setEmpId(empId);
		releases.setChannelId(channelId);
		releases.setLogictodelete(logictodelete);
		releasesService.updateById(releases);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	}
	
	//Ajax 返回页码
		@RequestMapping("/selectLikeAjax")
	    @ResponseBody
	    public Map<String,Object> selectLikeAjax(Integer pageNum,Integer pageSize,String skillsrequired){
	        System.err.println("----------------------------");
	        System.err.println(pageNum);
	        System.err.println(pageSize);
	        if(pageNum==null){
	            pageNum=1;
	        }
	        if(pageSize==null){
	            pageSize=10;
	        }
	        PageInfo<Releases> list = releasesService.selectLike(pageNum,pageSize,skillsrequired);
	        //将状态码变为字符串，以及empId变为名字,渠道id也改为相应的名字,逻辑删除字段改为字符串
	        List<Releases> list2 = list.getList();
	        for (int i = 0; i < list2.size(); i++) {
				Releases releases = list2.get(i);
				if (releases.getState() == 1) {
					releases.setStateStr("已处理");
				}else {
					releases.setStateStr("未处理");
				}
				if (releases.getLogictodelete() == 0) {
					releases.setLogName("已删除");
				}else {
					releases.setLogName("未删除");
				}
				int empId = releases.getEmpId();
				String empName = empService.selectById(empId).getName();
				Channel channel = channelService.selectById(releases.getChannelId());
				releases.setChannelName(channel.getName());
				releases.setEmpName(empName);
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

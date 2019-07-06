package com.ehr.controller.recruit;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.model.Applicant;
import com.ehr.service.ApplicantService;
import com.ehr.utils.SendEmail;
import com.github.pagehelper.PageInfo;

/**
 * 应聘者管理模块的 控制器
 * @author WW
 *
 */
@Controller
@RequestMapping("/recruit/candidate")
public class CandidateController {
	@Autowired
	ApplicantService applicantService;
	//Spring 提供的邮件发送类
	@Autowired
	JavaMailSender mailSender;
	//显示主页
	@RequestMapping
	public String needs() {
		return "recruit/candidate/candidateList";
	}
	//新增一条数据
	@RequestMapping("/candidateAdd")
	public String candidateAdd() {
		return "recruit/candidate/candidateAdd";
	}
	//修改指定数据
	@RequestMapping("/candidateUpdate")
	public String candidateUpdate(Integer id,HttpServletRequest request) {
		Applicant applicant = applicantService.selectById(id);
		request.setAttribute("id", id);
		request.setAttribute("name", applicant.getName());
		request.setAttribute("sex", applicant.getSex());
		request.setAttribute("qq", applicant.getQq());
		request.setAttribute("phone", applicant.getPhone());
		request.setAttribute("email", applicant.getEmail());
		request.setAttribute("age", applicant.getAge());
		request.setAttribute("currentaddress", applicant.getCurrentaddress());
		request.setAttribute("applicanttime", applicant.getApplicanttime());
		request.setAttribute("specialty", applicant.getSpecialty());
		request.setAttribute("comments", applicant.getComments());
		request.setAttribute("mark", applicant.getMark());
		return "recruit/candidate/candidateUpdate";
	}
	//发送QQ邮件页面
	@RequestMapping("/candidateEmail")
	public String candidateEmail(Integer id,HttpServletRequest request) {
		System.err.println("---------------candidateEmail---------------------------");
		System.err.println(id);
		request.setAttribute("id",id);
		return "recruit/candidate/candidateEmail";
	}
	//发送邮件功能实现
	@RequestMapping("/candidateEmailAjax")
	@ResponseBody
	public Map<String, Object> candidateEmailAjax(Integer id,String title,String content){
		System.err.println("---------------candidateEmailAjax---------------------------");
		System.err.println(id);
		Applicant applicant = applicantService.selectById(id);
		String email = applicant.getEmail();
		SendEmail sendEmail = new SendEmail();
		sendEmail.sendQQEmail(mailSender, title, content, email);
		Map<String, Object> map = new HashMap<>();
		map.put("msg","OK");
		return map;
	}
	//发送一些邮件功能实现
	@RequestMapping("/candidateEmailSomeAjax")
	@ResponseBody
	public Map<String, Object> candidateEmailSomeAjax(@RequestParam(value = "ids[]")Integer[] ids){
		System.err.println("---------------candidateEmailAjax---------------------------");
		System.err.println("ids = " +ids);
		//OFFER邮件主题
		String title = "Offer";
		
		for (int i = 0; i < ids.length; i++) {
			Applicant applicant = applicantService.selectById(ids[i]);
			String email = applicant.getEmail();
			String name = applicant.getName();
			String content = name + ",你已被本公司录取";
			SendEmail sendEmail = new SendEmail();
			sendEmail.sendQQEmail(mailSender, title, content, email);
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("msg","OK");
		return map;
	}
	
	//Ajax 返回页码
	@RequestMapping("/candidateListPage")
    @ResponseBody
    public Map<String,Object> candidateListPage(Integer pageNum,Integer pageSize){
        System.err.println("----------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        PageInfo<Applicant> list = applicantService.pageList(pageNum,pageSize);
        //将状态码变为字符串，以及empId变为名字
        List<Applicant> list2 = list.getList();
        for (int i = 0; i < list2.size(); i++) {
			Applicant applicant = list2.get(i);
			if (applicant.getSex() == 0) {
				applicant.setSexStr("女");
			}else {
				applicant.setSexStr("男");
			}
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
    public Map<String,Object> selectLikeAjax(Integer pageNum,Integer pageSize,String name,Integer sex){
        System.err.println("----------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        PageInfo<Applicant> list = applicantService.selectLike(pageNum, pageSize, name, sex);
        //将状态码变为字符串，以及empId变为名字
        List<Applicant> list2 = list.getList();
        for (int i = 0; i < list2.size(); i++) {
			Applicant applicant = list2.get(i);
			if (applicant.getSex() == 0) {
				applicant.setSexStr("女");
			}else {
				applicant.setSexStr("男");
			}
		}
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list);
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }
	
	//Ajax添加一个新的数据
	@RequestMapping("/candidateAddAjax")
	@ResponseBody
	public Map<String, Object> candidateAddAjax(String name,Integer sex,String qq,String phone,
			String email,Integer age,String currentaddress,
			String applicanttime,String specialty,String comments,String mark) throws ParseException{
		Applicant applicant = new Applicant();
		applicant.setName(name);
		applicant.setSex(sex);
		applicant.setQq(qq);
		applicant.setPhone(phone);
		applicant.setEmail(email);
		applicant.setAge(age);
		applicant.setCurrentaddress(currentaddress);
		applicant.setApplicanttime(new SimpleDateFormat("yyyy-MM-dd").parse(applicanttime));
		applicant.setSpecialty(specialty);
		applicant.setComments(comments);
		applicant.setMark(mark);
		applicantService.insert(applicant);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	}
	//Ajax修改一个新的数据
	@RequestMapping("/candidatUpdateAjax")
	@ResponseBody
	public Map<String, Object> candidatUpdateAjax(Integer id,String name,Integer sex,String qq,String phone,
			String email,Integer age,String currentaddress,
			String applicanttime,String specialty,String comments,String mark) throws ParseException{
		Applicant applicant = new Applicant();
		applicant.setId(id);
		applicant.setName(name);
		applicant.setSex(sex);
		applicant.setQq(qq);
		applicant.setPhone(phone);
		applicant.setEmail(email);
		applicant.setAge(age);
		applicant.setCurrentaddress(currentaddress);
		applicant.setApplicanttime(new SimpleDateFormat("yyyy-MM-dd").parse(applicanttime));
		applicant.setSpecialty(specialty);
		applicant.setComments(comments);
		applicant.setMark(mark);
		applicantService.updateById(applicant);
		Map<String, Object> map = new HashMap<>();
		map.put("msg", "OK");
		return map;
	}
	//Ajax删除一条数据的部分
	@RequestMapping("/candidateDeleteAjax")
	@ResponseBody
	public Map<String, Object> candidateDeleteAjax(Integer id){
		applicantService.deleteById(id);
		Map<String, Object> map = new HashMap<>();
		map.put("msg","deleteOK");
		return map;
	}
}

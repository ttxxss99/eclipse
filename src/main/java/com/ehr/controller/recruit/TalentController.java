package com.ehr.controller.recruit;

import java.text.ParseException;
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
import com.ehr.model.Talentpool;
import com.ehr.service.TalentpoolService;
import com.ehr.utils.SendEmail;
import com.github.pagehelper.PageInfo;

/**
 * 人才储备管理模块的控制器
 * @author WW
 *
 */
@Controller
@RequestMapping("/recruit/talent")
public class TalentController {
	@Autowired
	TalentpoolService talentpoolService;
	@Autowired
	JavaMailSender mailSender;
	//显示主页
		@RequestMapping
		public String talent() {
			return "recruit/talent/talentList";
		}
		//新增一条数据
		@RequestMapping("/talentAdd")
		public String talentAdd() {
			return "recruit/talent/talentAdd";
		}
		//修改指定数据
		@RequestMapping("/talentUpdate")
		public String talentUpdate(Integer id,HttpServletRequest request) {
			Talentpool talentpool = talentpoolService.selectById(id);
			request.setAttribute("id", id);
			request.setAttribute("name", talentpool.getName());
			request.setAttribute("sex", talentpool.getSex());
			request.setAttribute("phone", talentpool.getPhone());
			request.setAttribute("qq", talentpool.getQq());
			request.setAttribute("email", talentpool.getEmail());
			request.setAttribute("age", talentpool.getAge());
			request.setAttribute("currentaddress", talentpool.getCurrentaddress());
			request.setAttribute("specialty", talentpool.getSpecialty());
			request.setAttribute("comments", talentpool.getComments());
			request.setAttribute("asthecompany", talentpool.getAsthecompany());
			request.setAttribute("mark", talentpool.getMark());
			return "recruit/talent/talentUpdate";
		}
		
		//Ajax 返回页码
		@RequestMapping("/talentListPage")
	    @ResponseBody
	    public Map<String,Object> talentListPage(Integer pageNum,Integer pageSize){
	        System.err.println("----------------------------");
	        System.err.println(pageNum);
	        System.err.println(pageSize);
	        if(pageNum==null){
	            pageNum=1;
	        }
	        if(pageSize==null){
	            pageSize=10;
	        }
	        PageInfo<Talentpool> list = talentpoolService.pageList(pageNum,pageSize);
	        //将状态码变为字符串，以及empId变为名字
	        List<Talentpool> list2 = list.getList();
	        for (int i = 0; i < list2.size(); i++) {
				Talentpool talentpool = list2.get(i);
				if (talentpool.getSex() == 0) {
					talentpool.setSexStr("女");
				}else {
					talentpool.setSexStr("男");
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
	        PageInfo<Talentpool> list = talentpoolService.selectLike(pageNum, pageSize, name, sex);
	        //将状态码变为字符串，以及empId变为名字
	        List<Talentpool> list2 = list.getList();
	        for (int i = 0; i < list2.size(); i++) {
				Talentpool talentpool = list2.get(i);
				if (talentpool.getSex() == 0) {
					talentpool.setSexStr("女");
				}else {
					talentpool.setSexStr("男");
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
		@RequestMapping("/talentAddAjax")
		@ResponseBody
		public Map<String, Object> candidateAddAjax(String name,Integer sex,String phone,String qq,
				String email,Integer age,String currentaddress,
				String specialty,String comments,String asthecompany,String mark) throws ParseException{
			Talentpool talentpool = new Talentpool();
			talentpool.setName(name);
			talentpool.setSex(sex);
			talentpool.setPhone(phone);
			talentpool.setQq(qq);
			talentpool.setEmail(email);
			talentpool.setAge(age);
			talentpool.setCurrentaddress(currentaddress);
			talentpool.setSpecialty(specialty);
			talentpool.setComments(comments);
			talentpool.setAsthecompany(asthecompany);
			talentpool.setMark(mark);
			talentpoolService.insert(talentpool);
			Map<String, Object> map = new HashMap<>();
			map.put("msg", "OK");
			return map;
		}
		//Ajax修改一个新的数据
		@RequestMapping("/talentUpdateAjax")
		@ResponseBody
		public Map<String, Object> talentUpdateAjax(Integer id,String name,Integer sex,String phone,String qq,
				String email,Integer age,String currentaddress,
				String specialty,String comments,String asthecompany,String mark) throws ParseException{
			Talentpool talentpool = new Talentpool();
			talentpool.setId(id);
			talentpool.setName(name);
			talentpool.setSex(sex);
			talentpool.setPhone(phone);
			talentpool.setQq(qq);
			talentpool.setEmail(email);
			talentpool.setAge(age);
			talentpool.setCurrentaddress(currentaddress);
			talentpool.setSpecialty(specialty);
			talentpool.setComments(comments);
			talentpool.setAsthecompany(asthecompany);
			talentpool.setMark(mark);
			talentpoolService.updateById(talentpool);
			Map<String, Object> map = new HashMap<>();
			map.put("msg", "OK");
			return map;
		}
		//Ajax删除一条数据的部分
		@RequestMapping("/talentDeleteAjax")
		@ResponseBody
		public Map<String, Object> candidateDeleteAjax(Integer id){
			talentpoolService.deleteById(id);
			Map<String, Object> map = new HashMap<>();
			map.put("msg","deleteOK");
			return map;
		}
		
		//QQ邮箱 发送一些邮件功能实现
		@RequestMapping("/talentEmailSomeAjax")
		@ResponseBody
		public Map<String, Object> talentEmailSomeAjax(@RequestParam(value = "ids[]")Integer[] ids){
			System.err.println("---------------talentEmailAjax---------------------------");
			System.err.println("ids = " +ids);
			//OFFER邮件主题
			String title = "面试邀请";
			
			for (int i = 0; i < ids.length; i++) {
				Talentpool talentpool = talentpoolService.selectById(ids[i]);
				String email = talentpool.getEmail();
				String name = talentpool.getName();
				String content = name + ",本公司诚邀你进行面试";
				SendEmail sendEmail = new SendEmail();
				sendEmail.sendQQEmail(mailSender, title, content, email);
			}
			
			Map<String, Object> map = new HashMap<>();
			map.put("msg","OK");
			return map;
		}
}

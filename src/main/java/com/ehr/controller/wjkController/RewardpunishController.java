package com.ehr.controller.wjkController;

import com.ehr.dao.EmpWjkDao;
import com.ehr.dao.RdpDao;
import com.ehr.model.Emp;
import com.ehr.model.Rdp;
import com.ehr.service.EmpWjkService;
import com.ehr.service.RdpService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/rdp")
public class RewardpunishController {
	
	@Autowired
    RdpService rdpService;
	@Autowired
    EmpWjkService empWjkService;
	@Autowired
    RdpDao rdpDao;
	@Autowired
    EmpWjkDao empDao;
	
	//列表页
	@RequestMapping("/rdplist")
	public String rdplist() {
		return "emp/rdp/rdplist";
	}
	
	
	   /**
  * 返回表中所有数据
 * @return Map<String,Object>
  */
	@RequestMapping("/rdpMapList")
	@ResponseBody
public Map<String,Object> rdpMapList(Integer pageNum,Integer pageSize){
    Map<String,Object> map = new HashMap<String, Object>();
    map.put("data",rdpService.selectAll());
    map.put("size",rdpService.selectAll().size());
    return map;

}
	
 @RequestMapping("/rdpListPage")
 @ResponseBody
 /**
  * 返回表中所有数据
  * @return Map<String,Object>
  */
 public Map<String,Object> rdpListPage(Integer pageNum,Integer pageSize){
     System.err.println(pageNum);
     System.err.println(pageSize);
     if(pageNum==null){
         pageNum=1;
     }
     if(pageSize==null){
         pageSize=10;
     }
     System.err.println("--------rdpListPage-------------------");
     PageInfo<Rdp> list= rdpService.pageList(pageNum, pageSize);
     List<Rdp> list2 = list.getList();
		list2.forEach(e->{
			System.err.println("--------rdpListPage-------------------");
			Integer empId = e.getEmpId();
			System.err.println(empId);
			Emp emp = empWjkService.selectByPrimaryKey(empId);

			String empName = empWjkService.selectByPrimaryKey(empId).getName();
			
			e.setEmpName(empName);
//			System.err.println(empName);
		});
     
     Map<String,Object> map = new HashMap<String, Object>();
     map.put("code",0);
     map.put("data",list);
     map.put("count",list);
     return map;
 }
 
 
//添加页

 @RequestMapping("/rdpadd")
 public String rdpadd(){
     return "/emp/rdp/rdpadd";
 }

 /**
  * 添加一条奖惩记录
  * 
  */
 @RequestMapping("/addARdp")
 @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
 public void addARdp(String situation,Integer money,Integer judge,Date 
	      time,Integer emp_id){
     System.out.println("-----------进入添加----------");
     Rdp rdp=new Rdp();
     rdp.setSituation(situation);
     rdp.setMoney(money);
     rdp.setJudge(judge);
     rdp.setTime(time);
     rdp.setEmpId(emp_id);
   
     rdpService.insert(rdp);

 }
 
 //修改奖惩记录
 
 @RequestMapping("/rdpupdate")
 public String rdpupdate(Integer id, HttpServletRequest request){
 	System.err.println("下面是id");
     System.err.println(id);
     Rdp rdp = rdpService.selectByPrimaryKey(id);
     System.err.println(rdp.toString());
     
     request.setAttribute("id",rdp.getId());
     request.setAttribute("situation",rdp.getSituation());
     request.setAttribute("money",rdp.getMoney());
     request.setAttribute("judge",rdp.getJudge());
     request.setAttribute("time",rdp.getTime());
     request.setAttribute("emp_id",rdp.getEmpId());
 
     return "/emp/rdp/rdpupdate";
 }

 /**
	*
	*更新一条奖惩记录
  */
 @RequestMapping("/updateARdp")
 @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
 public void updateARdp(Integer id,Integer userid,String situation,Integer money,Integer judge,Date 
	      time,Integer emp_id){
     System.out.println("-----------进入update----------");
     System.err.println(id);
 	Rdp rdp = new Rdp();
 	rdp.setId(id);     
 	rdp.setSituation(situation);
 	rdp.setMoney(money);
 	rdp.setTime(time);
 	rdp.setJudge(judge);
 	rdp.setEmpId(emp_id);
   
 	rdpService.updateByPrimaryKey(rdp);

 }
 
 /**
  * 删除一条奖惩记录
  * 
  */
 @RequestMapping("/deleteARdp")
 @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
 public Map<String,Object> deleteARdp(Integer id){
     Map<String,Object> map = new HashMap<String,Object>();

     rdpService.deleteByPrimaryKey(id);
     map.put("msg","deleteOK");
     return map;
 }
 
 //Ajax 模糊查询
	@RequestMapping("/selectLikeAjax")
	@ResponseBody
   public Map<String,Object> selectLikeAjax(Integer pageNum,Integer pageSize,String situation){
       System.err.println("------------selectLikeAjax----------------");
       System.err.println(pageNum);
       System.err.println(pageSize);
       System.err.println(situation);
       if(pageNum==null){
           pageNum=1;
       }
       if(pageSize==null){
           pageSize=10;
       }
       PageInfo<Rdp> list= rdpService.selectLike(pageNum, pageSize, situation);
       
       Map<String,Object> map = new HashMap<String, Object>();
       map.put("code",0);
       map.put("data",list);
       map.put("count",list);
       System.err.println("==================");
       System.err.println(map.toString());
       return map;
   }

 
	
}


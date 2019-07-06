package com.ehr.controller.wjkController;

import com.ehr.model.Emp;
import com.ehr.model.Pos;
import com.ehr.model.Position;
import com.ehr.service.DeptService;
import com.ehr.service.EmpWjkService;
import com.ehr.service.PosService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


//员工管理类
@Controller
@RequestMapping("/emp")
public class EmployeeController {
	
	@Autowired
    EmpWjkService empWjkService;
	@Autowired
    DeptService deptService;
	@Autowired
    PosService posService;

	
	//列表页
	@RequestMapping("/emplist")
	public String emplist() {
		return "emp/emp/emplist";
	}
	
	   /**
     * 返回表中所有数据
    * @return Map<String,Object>
     */
	@RequestMapping("/empMapList")
	@ResponseBody
   public Map<String,Object> empMapList(Integer pageNum,Integer pageSize){
		
       Map<String,Object> map = new HashMap<String, Object>();
       map.put("data", empWjkService.selectAll());
       map.put("size", empWjkService.selectAll().size());
       return map;

   }	
    @RequestMapping("/empListPage")
    @ResponseBody
    /**
     * 返回表中所有数据
     * @return Map<String,Object>
     */
    public Map<String,Object> empListPage(Integer pageNum,Integer pageSize){
        System.err.println(pageNum);
        System.err.println(pageSize);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        
        PageInfo<Emp> list= empWjkService.pageList(pageNum, pageSize);
        List<Emp> list2 = list.getList();
		list2.forEach(e->{
			Integer deptId = e.getDeptId();
			String deptName = deptService.selectByPrimaryKey(deptId).getName();
			e.setDeptName(deptName);
			
			Integer posId = e.getPositionId();
			System.err.println("职位id"+posId);
            Pos pos = posService.selectByPrimaryKey(posId);
            String name = pos.getName();
			String posName = posService.selectByPrimaryKey(posId).getName();
			System.err.println("职位名称"+posName);
			e.setPosName(posName);
			
		});
        
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list);
        return map;
    }
	
	
	
	
	//添加页

    @RequestMapping("/empadd")
    public String empadd(){
        return "/emp/emp/empadd";
    }

    /**
     * 添加一个新的员工记录
     * 
     */
    @RequestMapping("/addAEmp")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void addAEmp(String userid,String name,String password,String sex,
    		String phone,String qq,String email,Integer age,String currentaddress,Integer deptId,Integer positionId){
        System.out.println("-----------进入添加----------");
    	Emp emp = new Emp();
        emp.setUserid(userid);
        emp.setName(name);
        emp.setPassword(password);
        emp.setSex(sex);
        emp.setPhone(phone);
        emp.setQq(qq);
        emp.setEmail(email);
        emp.setAge(age);
        emp.setCurrentaddress(currentaddress);
        emp.setDeptId(deptId);
        emp.setPositionId(positionId);
        empWjkService.insert(emp);

    }

	
    @RequestMapping("/empupdate")
    public String empupdate(Integer id, HttpServletRequest request){
    	System.err.println("下面是id");
        System.err.println(id);
        Emp emp = empWjkService.selectByPrimaryKey(id);
        System.err.println(emp.toString());
        request.setAttribute("id",emp.getId());
        request.setAttribute("userid",emp.getUserid());
        request.setAttribute("name",emp.getName());
        request.setAttribute("password",emp.getPassword());
        request.setAttribute("sex",emp.getSex());
        request.setAttribute("phone",emp.getPhone());
        request.setAttribute("qq",emp.getQq());
        request.setAttribute("email",emp.getEmail());
        request.setAttribute("age",emp.getAge());
        request.setAttribute("currentaddress",emp.getCurrentaddress());
        request.setAttribute("deptId",emp.getDeptId());
        request.setAttribute("positionId",emp.getPositionId());
        return "/emp/emp/empupdate";
    }
    /*
	*更新一个员工
     */
    @RequestMapping("/updateAEmp")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void updateAEmp(Integer id,String userid,String name,String password,String sex,
    		String phone,String qq,String email,Integer age,
    		String currentaddress,Integer deptId,Integer positionId){
        System.out.println("-----------进入update----------");
    	Emp emp = new Emp();
    	emp.setId(id);     
        emp.setUserid(userid);
        emp.setName(name);
        emp.setPassword(password);
        emp.setSex(sex);
        emp.setPhone(phone);
        emp.setQq(qq);
        emp.setEmail(email);
        emp.setAge(age);
        emp.setCurrentaddress(currentaddress);
        emp.setDeptId(deptId);
        emp.setPositionId(positionId);
        empWjkService.updateByPrimaryKey(emp);

    }
    
    
    
    
    
    
    /**
     * 删除一个的员工记录
     * 
     */
    @RequestMapping("/deleteAEmp")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public Map<String,Object> deletAEmp(Integer id){
        Map<String,Object> map = new HashMap<String,Object>();
        //empDao.deleteByPrimaryKey(id);
        empWjkService.deleteByPrimaryKey(id);
        map.put("msg","deleteOK");
        return map;
    }

  //Ajax 模糊查询
  	@RequestMapping("/selectLikeAjax")
    @ResponseBody
      public Map<String,Object> selectLikeAjax(Integer pageNum,Integer pageSize,Integer id,String sex){
          System.err.println("------------selectLikeAjax----------------");
          System.err.println(pageNum);
          System.err.println(pageSize);
          System.err.println(id);
          System.err.println(sex);
          if(pageNum==null){
              pageNum=1;
          }
          if(pageSize==null){
              pageSize=10;
          }
          PageInfo<Emp> list= empWjkService.selectLike(pageNum, pageSize, id, sex);
          
          Map<String,Object> map = new HashMap<String, Object>();
          map.put("code",0);
          map.put("data",list);
          map.put("count",list);
          System.err.println("==================");
          System.err.println(map.toString());
          return map;
      }
 
	
	
	
}

package com.ehr.controller.wjkController;

import com.ehr.dao.DepartureDao;
import com.ehr.model.Departure;
import com.ehr.service.DepartureService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/departure")
public class DepartureController {
	@Autowired
    DepartureService departureService;
	@Autowired
    DepartureDao departureDao;
	
	//列表页
	@RequestMapping("/departurelist")
	public String departurelist() {
		return "/emp/departure/departurelist";
	}
	
	
	   /**
  * 返回表中所有数据
  */
@RequestMapping("/departureMapList")
@ResponseBody
public Map<String,Object> departureMapList(Integer pageNum,Integer pageSize){
	System.err.println(11111111);
    Map<String,Object> map = new HashMap<String, Object>();
    map.put("code",0);
    map.put("data",departureService.selectAll());
    map.put("count",departureService.selectAll().size());
    return map;

}
	
 @RequestMapping("/departureListPage")
 @ResponseBody
 /**
  * 返回表中所有数据
  * 
  */
 public Map<String,Object> departureListPage(Integer pageNum,Integer pageSize){
     System.err.println(pageNum);
     System.err.println(pageSize);
     if(pageNum==null){
         pageNum=1;
     }
     if(pageSize==null){
         pageSize=10;
     }
     Map<String,Object> map = new HashMap<String, Object>();
     map.put("code",0);
     map.put("data",departureService.pageList(pageNum,pageSize));
     map.put("count",departureService.pageList(pageNum,pageSize));
     return map;
 }
 
 
 
//添加页

@RequestMapping("/departureadd")
public String departureadd(){
    return "/emp/departure/departureadd";
}

/**
 * 添加离职人员记录
 * 
 */
@RequestMapping("/addADeparture")
@ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
public void addADeparture(String instructions,Date time,Integer emp_id){
    System.out.println("-----------进入添加----------");
    Departure departure=new Departure();
    departure.setInstructions(instructions);
    departure.setDeparturetime(time);
    departure.setEmpId(emp_id);
  
    departureService.insert(departure);

}


//修改离职记录

@RequestMapping("/departureupdate")
public String departureupdate(Integer id, HttpServletRequest request){
	System.err.println("下面是id");
   System.err.println(id);
   Departure departure = departureService.selectByPrimaryKey(id);
   
   request.setAttribute("id",departure.getId());
   request.setAttribute("instructions",departure.getInstructions());
   request.setAttribute("departuretime",departure.getDeparturetime());
   request.setAttribute("emp_id",departure.getEmpId());

   return "/emp/departure/departureupdate";
}
/*
	*更新一条离职记录
*/
@RequestMapping("/updateADeparture")
@ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
public void updateADeparture(Integer id,String instructions,Date 
		departuretime,Integer emp_id){
   System.out.println("-----------进入update----------");
   System.err.println(id);
	Departure departure = new Departure();
	departure.setId(id);
	departure.setInstructions(instructions);
	departure.setDeparturetime(departuretime);
	departure.setEmpId(emp_id);

	departureService.updateByPrimaryKey(departure);

}
 
/**
 * 删除一条离职记录
 * 
 */
@RequestMapping("/deleteADeparture")
@ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
public Map<String,Object> deleteADeparture(Integer id){
    Map<String,Object> map = new HashMap<String,Object>();

    departureService.deleteByPrimaryKey(id);
    map.put("msg","deleteOK");
    return map;
}
//Ajax 模糊查询
	@RequestMapping("/selectLikeAjax")
	@ResponseBody
  public Map<String,Object> selectLikeAjax(Integer pageNum,Integer pageSize,String instructions){
      System.err.println("------------selectLikeAjax----------------");
      System.err.println(pageNum);
      System.err.println(pageSize);
      System.err.println(instructions);
      if(pageNum==null){
          pageNum=1;
      }
      if(pageSize==null){
          pageSize=10;
      }
      PageInfo<Departure> list= departureService.selectLike(pageNum, pageSize, instructions);
      
      Map<String,Object> map = new HashMap<String, Object>();
      map.put("code",0);
      map.put("data",list);
      map.put("count",list);
      System.err.println("==================");
      System.err.println(map.toString());
      return map;
  }

 
}

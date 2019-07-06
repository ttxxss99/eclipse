package com.ehr.controller.organization.position;


import com.ehr.model.Dept;
import com.ehr.model.Position;
import com.ehr.service.DeptService;
import com.ehr.service.PositionService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Zy
 * @date 25/06/2019 3:24 PM
 */
@Controller
@RequestMapping("/organization/position")
public class PositionController {
    @Autowired
    PositionService positionService;
    @Autowired
    DeptService deptService;
    /**
     * 返回页面列表页面
     * return string
     */
    @RequestMapping("")
    public String company(){
        return "/organization/position/positionList";
    }
    @RequestMapping("/positionList")
    @ResponseBody
    /**
     * 返回表中所有数据
     * @return Map<String,Object>
     */
    public Map<String,Object> deptList(){
        List<Position> list = positionService.selectAll();
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",positionService.selectAll().size());

        return map;
    }


    @RequestMapping("/positionListPage")
    @ResponseBody
    /**
     * 返回表中所有数据
     * @return Map<String,Object>
     */
    public Map<String,Object> positionListPage(Integer pageNum, Integer pageSize){
        PageInfo<Position> list = positionService.pageList(pageNum,pageSize);
        List<Position> list2 = list.getList();
        list2.forEach(e->{
            // System.err.println("------deptListPage-------");
            //System.err.println(e.toString());
            Integer deptId = e.getDeptId();
            String deptName=deptService.selectByPrimaryKey(deptId).getName();
            System.err.println("==================="+deptName);
            e.setDeptName(deptName);
            // System.err.println(e.toString());
        });
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",positionService.selectAll().size());
        System.err.println("==================");
        return map;
    }


    /**
     * 返回添加职位表单地址
     * return string
     */
    @RequestMapping("/positionAdd")
    public String positionAdd(){
        return "/organization/position/positionAdd";
    }


    /** 在返回表单加载完成时初始化添加下拉框的value和text*/

    @RequestMapping("/positionAddInit")
    @ResponseBody
    public Map<String,Object> deptAddInit(){
        System.err.println("------deptAddInit-----");
        Map<String,Object> map = new HashMap<>();
        List<Dept> list = deptService.selectAll();
        list.forEach(e->{
            map.put(e.getName(),e.getId());
        });
        return map;
    }


    /**
     * 添加一个新的职位记录

     */
    @RequestMapping("/addAPosition")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void addAPosition(String positionName,String positionMark,Integer selectInput){
        System.err.println();
        Position position = new Position();
        position.setName(positionName);
        position.setMark(positionMark);
        position.setDeptId(selectInput);
        positionService.insert(position);
    }

    /**
     * 返回更新公司表单地址
     * return string
     */
    @RequestMapping("/positionUpdate")
    public String positionUpdate(Integer id, HttpServletRequest request){
        System.err.println(id);
        Position position = positionService.selectByPrimaryKey(id);
        request.setAttribute("id",position.getId());
        request.setAttribute("name",position.getName());
        request.setAttribute("mark",position.getMark());
        request.setAttribute("deptName",deptService.selectByPrimaryKey(position.getDeptId()).getName());
        request.setAttribute("deptId",position.getDeptId());
        return "/organization/position/positionUpdate";
    }


    /**
     * 更新一个职位记录

     */
    @RequestMapping("/updateAPosition")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void updateAPosition(Integer positionId ,String positionName,String positionMark,Integer selectInput){
        System.err.println("==============updateADept===============");
        Position position = new Position();
        position.setId(positionId);
        position.setName(positionName);
        position.setMark(positionMark);
        position.setDeptId(selectInput);
        /*System.err.println(positionId);
        System.err.println(position.toString());*/
        positionService.updateByPrimaryKey(position);
    }

    /**
     * 删除一个职位记录
     * @param Id
     *
     */
    @RequestMapping("/deleteAPosition")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public Map<String,Object> deleteAPosition(Integer Id){
        System.err.println("===========deleteAPosition=========================");
        System.err.println(Id);
        Map<String,Object> map = new HashMap<>();
        positionService.deleteByPrimaryKey(Id);
        map.put("msg","deleteOK");
        return map;
    }
    /**
     * delete some 职位记录
     * return void
     */
    @RequestMapping("/deleteSomePosition")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void deleteSomePosition(@RequestParam(value = "ids[]")Integer[] ids){
        for (int i = 0; i < ids.length; i++) {
            positionService.deleteByPrimaryKey(ids[i]);
        }
    }


    @RequestMapping("/likeSearch")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public Map<String, Object> likeSearch(String name, Integer deptId , Integer pageNum, Integer pageSize){
        System.err.println("================likeSearch========================");
        System.err.println(name);
        System.err.println(deptId);


        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }

        PageInfo<Position> list = positionService.likeSearch(name,deptId,pageNum,pageSize);
        List<Position> list2 = list.getList();
        list2.forEach(e->{
            // System.err.println("------deptListPage-------");
            //System.err.println(e.toString());
            Integer id = e.getDeptId();
            String deptName= deptService.selectByPrimaryKey(id).getName();
            System.err.println("==================="+deptName);
            e.setDeptName(deptName);
            // System.err.println(e.toString());
        });

        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",list.getTotal());
        System.err.println("==================");
        System.err.println(map.toString());
        return map;

    }

}

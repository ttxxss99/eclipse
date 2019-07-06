package com.ehr.controller.organization.dept;


import com.ehr.model.Company;
import com.ehr.model.Dept;
import com.ehr.service.CompanyService;
import com.ehr.service.DeptService;
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
 * @date 25/06/2019 3:21 PM
 */
@Controller
@RequestMapping("/organization/dept")
public class DeptController {
    @Autowired
    DeptService deptService;
    @Autowired
    CompanyService companyService;
    /**
     * 返回部门列表页面
     * return string
     */
    @RequestMapping("")
    public String dept(){
        return "/organization/dept/deptList";
    }

    @RequestMapping("/deptList")
    @ResponseBody
    /**
     * 返回表中所有数据
     * @return Map<String,Object>
     */
    public Map<String,Object> deptList(){
       List<Dept> list = deptService.selectAll();
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",deptService.selectAll().size());

        return map;
    }


    @RequestMapping("/deptListPage")
    @ResponseBody
    /**
     * 返回表中所有数据
     * @return Map<String,Object>
     */
    public Map<String,Object> deptListPage(Integer pageNum,Integer pageSize){
        PageInfo<Dept> list = deptService.pageList(pageNum,pageSize);
        List<Dept> list2 = list.getList();
        list2.forEach(e->{
           // System.err.println("------deptListPage-------");
            //System.err.println(e.toString());
            Integer companyId = e.getCompanyId();
            String companyName= companyService.selectByPrimaryKey(companyId).getName();
            System.err.println("==================="+companyName);
            e.setCompanyName(companyName);
           // System.err.println(e.toString());
        });
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",list);
        map.put("count",deptService.selectAll().size());
        System.err.println("==================");
        return map;
    }


    /**
     * 返回添加部门表单地址
     * return string
     */
    @RequestMapping("/deptAdd")
    public String deptAdd(){
        return "/organization/dept/deptAdd";
    }


    /** 在返回表单加载完成时初始化添加下拉框的value和text*/

    @RequestMapping("/deptAddInit")
    @ResponseBody
    public Map<String,Object> deptAddInit(){
        Map<String,Object> map = new HashMap<>();
        List<Company> list = companyService.selectAll();
        list.forEach(e->{
            map.put(e.getName(),e.getId());
        });
       return map;
    }


    /**
     * 添加一个新的部门记录

     */
    @RequestMapping("/addADept")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void addACompany(String deptName,String deptMark,Integer selectInput){
        System.err.println();
        Dept dept = new Dept();
        dept.setName(deptName);
        dept.setMark(deptMark);
        dept.setCompanyId(selectInput);
        deptService.insert(dept);
    }

    /**
     * 返回更新公司表单地址
     * return string
     */
    @RequestMapping("/deptUpdate")
    public String companyUpdate(Integer id, HttpServletRequest request){
        System.err.println(id);
        Dept dept = deptService.selectByPrimaryKey(id);
        request.setAttribute("id",dept.getId());
        request.setAttribute("name",dept.getName());
        request.setAttribute("mark",dept.getMark());
        request.setAttribute("companyName",companyService.selectByPrimaryKey(dept.getCompanyId()).getName());
        request.setAttribute("companyId",dept.getCompanyId());
        return "/organization/dept/deptUpdate";
    }


    /**
     * 更新一个的部门记录

     */
    @RequestMapping("/updateADept")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void updateADept(Integer deptId ,String deptName,String deptMark,Integer selectInput){
        System.err.println("==============updateADept===============");
        Dept dept = new Dept();
        dept.setId(deptId);
        dept.setName(deptName);
        dept.setMark(deptMark);
        dept.setCompanyId(selectInput);
        System.err.println(deptId);
        System.err.println(dept.toString());
        deptService.updateByPrimaryKey(dept);
    }

    /**
     * 删除一个的公司记录
     * @param Id
     *
     */
    @RequestMapping("/deleteADept")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public Map<String,Object> updateADept(Integer Id){
        Map<String,Object> map = new HashMap<>();
        deptService.deleteByPrimaryKey(Id);
        map.put("msg","deleteOK");
        return map;
    }
    /**
     * delete some 公司记录
     * return void
     */
    @RequestMapping("/deleteSomeDept")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void updateSomeCompany(@RequestParam(value = "ids[]")Integer[] ids){
        for (int i = 0; i < ids.length; i++) {
            deptService.deleteByPrimaryKey(ids[i]);
        }
    }


    @RequestMapping("/likeSearch")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public Map<String, Object> likeSearch(String name, Integer companyId , Integer pageNum, Integer pageSize){
        System.err.println("================likeSearch========================");
        System.err.println(name);
        System.err.println(companyId);


        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }

        PageInfo<Dept> list = deptService.likeSearch(name,companyId,pageNum,pageSize);
        List<Dept> list2 = list.getList();
        list2.forEach(e->{
            // System.err.println("------deptListPage-------");
            //System.err.println(e.toString());
            Integer id = e.getCompanyId();
            String companyName= companyService.selectByPrimaryKey(id).getName();
            System.err.println("==================="+companyName);
            e.setCompanyName(companyName);
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

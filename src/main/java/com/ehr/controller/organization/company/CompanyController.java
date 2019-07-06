package com.ehr.controller.organization.company;

import com.ehr.model.Company;
import com.ehr.service.CompanyService;
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
 * @date 23/06/2019 10:10 PM
 */
@Controller
@RequestMapping("/organization/company")
public class CompanyController {
    @Autowired
    CompanyService companyService;
    /**
     * 返回公司列表页面
     * return string
     */
    @RequestMapping("")
    public String company(){
        return "/organization/company/companyList";
    }

    @RequestMapping("/companyList")
    @ResponseBody
    /**
     * 返回表中所有数据
    * @return Map<String,Object>
     */
    public Map<String,Object> companyList(Integer pageNum,Integer pageSize){
        System.err.println("-------------------------");
        System.err.println(pageNum);
        System.err.println(pageSize);


        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",companyService.selectAll());
        map.put("count",companyService.selectAll().size());
        System.err.println("==================");
        System.err.println(map.toString());
        return map;

    }


    @RequestMapping("/companyListPage")
    @ResponseBody
    /**
     * 返回表中所有数据
     * @return Map<String,Object>
     */
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
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",companyService.pageList(pageNum,pageSize));
        map.put("count",companyService.pageList(pageNum,pageSize));
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }


    /**
     * 返回添加公司表单地址
     * return string
     */
    @RequestMapping("/companyAdd")
    public String companyAdd(){
        return "/organization/company/companyAdd";
    }

    /**
     * 添加一个新的公司记录
     * @param companyName 名称
     * @param companyAddress 地址
     * @param companyMark 备注
     */
    @RequestMapping("/addACompany")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void addACompany(String companyName,String companyAddress,String companyMark){
        System.err.println();
        Company company = new Company();
        company.setName(companyName);
        company.setAddress(companyAddress);
        company.setMark(companyMark);
        companyService.insert(company);
    }

    /**
     * 返回更新公司表单地址
     * return string
     */
    @RequestMapping("/companyUpdate")
    public String companyUpdate(Integer id, HttpServletRequest request){
        System.err.println(id);
       Company company = companyService.selectByPrimaryKey(id);
        System.err.println(company.toString());
        System.err.println(request);
        request.setAttribute("id",company.getId());
        request.setAttribute("name",company.getName());
        request.setAttribute("address",company.getAddress());
        request.setAttribute("mark",company.getMark());
        return "/organization/company/companyUpdate";
    }


    /**
     * 更新一个的公司记录
     * @param companyId id  int
     * @param companyName 名称
     * @param companyAddress 地址
     * @param companyMark 备注
     */
    @RequestMapping("/updateACompany")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void updateACompany(Integer companyId ,String companyName,String companyAddress,String companyMark){
        Company company = new Company();
        company.setId(companyId);
        company.setName(companyName);
        company.setAddress(companyAddress);
        company.setMark(companyMark);
        companyService.updateByPrimaryKey(company);
    }

    /**
     * 删除一个的公司记录
     * @param companyId  int
     *
     */
    @RequestMapping("/deleteACompany")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public Map<String,Object> updateACompany(Integer companyId){
        Map<String,Object> map = new HashMap<>();
        companyService.deleteByPrimaryKey(companyId);
        map.put("msg","deleteOK");
        return map;
    }
    /**
     * delete some 公司记录
     * @param   ids
     * return void
     */
    @RequestMapping("/deleteSomeCompany")
    @ResponseBody//这里不加这一行代码 就会出现ajax成功但是前台报404的问题 状态码问题
    public void updateSomeCompany(@RequestParam(value = "ids[]")Integer[] ids){
        for (int i = 0; i < ids.length; i++) {
            companyService.deleteByPrimaryKey(ids[i]);
        }
    }

    @RequestMapping("/likeSearch")
    @ResponseBody
    public Map<String,Object> likeSearch(String someCompanyName,String someCompanyAddress,Integer pageNum, Integer pageSize){
        System.err.println("================likeSearch========================");
        System.err.println(someCompanyName);
        System.err.println(someCompanyAddress);
        if(pageNum==null){
            pageNum=1;
        }
        if(pageSize==null){
            pageSize=10;
        }
        Map<String,Object> map = new HashMap<>();
        map.put("code",0);
        map.put("data",companyService.likeSearch(someCompanyName,someCompanyAddress,pageNum,pageSize));
        map.put("count",companyService.likeSearch(someCompanyName,someCompanyAddress,pageNum,pageSize));
        System.err.println("==================");
        System.err.println(map.toString());
        return map;
    }





}

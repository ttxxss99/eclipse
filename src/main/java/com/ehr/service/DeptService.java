package com.ehr.service;

import com.ehr.model.Dept;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author Zy
 * @date 25/06/2019 2:57 PM
 */
public interface DeptService {
    public List<Dept> selectAll();
    public void insert(Dept company);
    public Dept selectByPrimaryKey(Integer id);
    public void updateByPrimaryKey(Dept company);
    public void deleteByPrimaryKey(Integer id);
    PageInfo<Dept> pageList (Integer pageNum, Integer pageSize);
    PageInfo<Dept> likeSearch (String deptName ,Integer companyId,Integer pageNum, Integer pageSize);
}

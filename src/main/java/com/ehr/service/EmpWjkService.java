package com.ehr.service;

import com.ehr.model.Emp;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface EmpWjkService {

    public List<Emp> selectAll();
    public void insert(Emp emp);
    public Emp selectByPrimaryKey(Integer id);
    public void updateByPrimaryKey(Emp emp);
    public void deleteByPrimaryKey(Integer id);
    PageInfo<Emp> pageList(Integer pageNum, Integer pageSize);
    //模糊查询
  	PageInfo<Emp> selectLike(Integer pageNum, Integer pageSize, Integer id, String sex);
}

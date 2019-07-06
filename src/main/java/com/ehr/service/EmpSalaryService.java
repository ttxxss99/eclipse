package com.ehr.service;

import java.util.List;

import com.ehr.model.EmpSalary;
import com.github.pagehelper.PageInfo;

public interface EmpSalaryService {
	public int deleteByPrimaryKey(Integer id);
	public int insert(EmpSalary record);
	public EmpSalary selectByPrimaryKey(Integer id);
	public List<EmpSalary> selectAll();
	public int updateByPrimaryKey(EmpSalary record);
	PageInfo<EmpSalary> pageList(Integer pageNum,Integer pageSize);
}

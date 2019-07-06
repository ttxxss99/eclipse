package com.ehr.service;

import java.util.List;


import com.ehr.model.SalaryList;
import com.github.pagehelper.PageInfo;


public interface SalaryListService {
	public int deleteByPrimaryKey(Integer id);
	public SalaryList selectByPrimaryKey(Integer id);
	public int updateByPrimaryKey(SalaryList salaryList);
	public List<SalaryList> selectAll();
	PageInfo<SalaryList> pageList(Integer pageNum,Integer pageSize);
}

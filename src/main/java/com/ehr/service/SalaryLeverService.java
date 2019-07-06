package com.ehr.service;

import java.util.List;

import com.ehr.model.SalaryLever;
import com.github.pagehelper.PageInfo;

public interface SalaryLeverService {
	public int deleteByPrimaryKey(Integer id);
	public int insert(SalaryLever salaryLever);
	public int updateByPrimaryKey(SalaryLever salaryLever);
	public SalaryLever selectByPrimaryKey(Integer id);
	public List<SalaryLever> selctAll();
	PageInfo<SalaryLever> pageList(Integer pageNum,Integer pageSize);
}

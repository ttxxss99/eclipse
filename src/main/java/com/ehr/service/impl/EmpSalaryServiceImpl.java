package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.EmpDao;
import com.ehr.dao.EmpSalaryDao;
import com.ehr.model.EmpSalary;
import com.ehr.service.EmpSalaryService;
import com.ehr.service.SocialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class EmpSalaryServiceImpl implements EmpSalaryService {
	@Autowired
	EmpSalaryDao empSalaryDao;
	@Autowired
	EmpDao empDao;
	@Autowired
	SocialService socialService;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		EmpSalary empSalary = empSalaryDao.selectByPrimaryKey(id);
		empSalary.setLogictodelete(0);// logictodelete = 0 means delted
		empSalaryDao.updateByPrimaryKey(empSalary);
		return 0;
	}

	@Override
	public int insert(EmpSalary record) {
		empSalaryDao.updateByPrimaryKey(record);
		return 0;
	}

	@Override
	public EmpSalary selectByPrimaryKey(Integer id) {

		return empSalaryDao.selectByPrimaryKey(id);
	}

	@Override
	public List<EmpSalary> selectAll() {
		// TODO Auto-generated method stub
		List<EmpSalary> empSalaries = empSalaryDao.selectAll();
		return empSalaries;
	}

	@Override
	public int updateByPrimaryKey(EmpSalary record) {
		// TODO Auto-generated method stub
		empSalaryDao.updateByPrimaryKey(record);
		return 0;
	}

	@Override
	public PageInfo<EmpSalary> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<EmpSalary> empSalaries = empSalaryDao.selectAll();
		  empSalaries.forEach(empSalary->{
		  empSalary.setEmpName(empDao.selectByPrimaryKey(empSalary.getEmpId()).getName(
		  )); empSalary.setPurchaseRate(socialService.selectByPrimaryKey(empSalary.
		  getSocialsecurityId()).getPurchaserate().toString()+"%"); });
		 
		return new PageInfo<EmpSalary>(empSalaries);
	}

}

package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.SalaryLeverDao;
import com.ehr.model.SalaryLever;
import com.ehr.service.SalaryLeverService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SalaryLeverServiceImpl implements SalaryLeverService {
	@Autowired
	SalaryLeverDao salaryLeverDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		SalaryLever salaryLever = salaryLeverDao.selectByPrimaryKey(id);
		salaryLever.setLogictodelete(0);//logictodelte = 0 means deleted
		salaryLeverDao.updateByPrimaryKey(salaryLever);
		return id;
	}

	@Override
	public int insert(SalaryLever salaryLever) {
		salaryLeverDao.insert(salaryLever);
		return 0;
	}

	@Override
	public int updateByPrimaryKey(SalaryLever salaryLever) {
		salaryLeverDao.updateByPrimaryKey(salaryLever);
		return 0;
	}

	@Override
	public SalaryLever selectByPrimaryKey(Integer id) {
		return salaryLeverDao.selectByPrimaryKey(id);
	}

	@Override
	public List<SalaryLever> selctAll() {
		// TODO Auto-generated method stub
		return salaryLeverDao.selectAll();
	}

	@Override
	public PageInfo<SalaryLever> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
		List<SalaryLever> salaryLevers = salaryLeverDao.selectAll();
		return new PageInfo<SalaryLever>(salaryLevers);
	}

}

package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.SalaryListDao;
import com.ehr.model.SalaryList;
import com.ehr.service.SalaryListService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SalaryListServiceImpl implements SalaryListService {
	@Autowired
	SalaryListDao salaryListDao;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		SalaryList salaryList = selectByPrimaryKey(id);
		salaryList.setLogictodelete(0);//logictodelte = 0 means deleted
		salaryListDao.updateByPrimaryKey(salaryList);
		return 0;
	}

	@Override
	public SalaryList selectByPrimaryKey(Integer id) {

		return salaryListDao.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKey(SalaryList salaryList) {
		salaryListDao.updateByPrimaryKey(salaryList);
		return 0;
	}

	@Override
	public List<SalaryList> selectAll() {
		// TODO Auto-generated method stub
		return salaryListDao.selectAll();
	}

	@Override
	public PageInfo<SalaryList> pageList(Integer pageNum, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,pageSize);
		List<SalaryList> salaryLists = salaryListDao.selectAll();
		return new PageInfo<SalaryList>(salaryLists);
	}


}

package com.ehr.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.IncomeDao;
import com.ehr.model.Income;
import com.ehr.service.IncomeService;
/**
 * 客户项目统计
 * @author WW
 *
 */
@Service
public class IncomeServiceImpl implements IncomeService{
	@Autowired
	IncomeDao incomeDao;
	
	//根据date查询客户项目数
	@Override
	public List<Income> selectByDate(String date) {
		return incomeDao.selectByDate(date);
	}
	//查询所有月份 去重
	@Override
	public List<String> selectAllDate() {
		List<Date> dates = incomeDao.selectAllDate();
		List<String> list = new ArrayList<>();
		for (int i = 0; i < dates.size(); i++) {
			list.add(new SimpleDateFormat("yyyy-MM").format(dates.get(i)));
		}
		return list;
	}

}

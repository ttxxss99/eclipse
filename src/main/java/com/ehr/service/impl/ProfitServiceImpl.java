package com.ehr.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.ProfitDao;
import com.ehr.model.Profit;
import com.ehr.service.ProfitService;
/**
 * 利润统计
 * @author WW
 *
 */
@Service
public class ProfitServiceImpl implements ProfitService{

	@Autowired
	ProfitDao profitDao;
	//根据月份和公司名字查询数据
	@Override
	public List<Profit> selectByDate(String date, String companyName) {
		return profitDao.selectByDate(date, companyName);
	}
	//查许所有月份  去重
	@Override
	public List<String> selectAllDate() {
		List<Date> dates = profitDao.selectAllDate();
		List<String> list = new ArrayList<>();
		for (int i = 0; i < dates.size(); i++) {
			list.add(new SimpleDateFormat("yyyy-MM").format(dates.get(i)));
		}
		return list;
	}
	//查询所有公司名字  去重
	@Override
	public List<String> selectAllCompany() {
		return profitDao.selectAllCompany();
	}

}

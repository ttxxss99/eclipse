package com.ehr.service.impl;

import com.ehr.dao.NumberDao;
import com.ehr.model.Number;
import com.ehr.service.NumberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 人力资源 人数统计
 * @author WW
 *
 */
@Service
public class NumberServiceImpl implements NumberService {
	@Autowired
    NumberDao numberDao;
	//根据月份和公司名字查询数据
	@Override
	public List<Number> selectByDate(String date, String companyName) {
		return numberDao.selectByDate(date, companyName);
	}
	//查许所有月份  去重
	@Override
	public List<String> selectAllDate() {
		List<Date> dates = numberDao.selectAllDate();
		List<String> list = new ArrayList<>();
		for (int i = 0; i < dates.size(); i++) {
			list.add(new SimpleDateFormat("yyyy-MM").format(dates.get(i)));
		}
		return list;
	}
	//查询所有公司名字  去重
	@Override
	public List<String> selectAllCompany() {
		return numberDao.selectAllCompany();
	}

}

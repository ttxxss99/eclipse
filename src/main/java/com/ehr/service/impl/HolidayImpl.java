package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.HolidayDao;
import com.ehr.model.Holiday;
import com.ehr.model.pojo.ActivityQiantai;
import com.ehr.service.HolidaySerivce;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class HolidayImpl implements HolidaySerivce{

	@Autowired
	HolidayDao HolidayDao;
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return HolidayDao.deleteByPrimaryKey(id);
	}

	public int insert(Holiday record) {
		// TODO Auto-generated method stub
		return HolidayDao.insert(record);
	}

	public List<Holiday> selectAll() {
		// TODO Auto-generated method stub
		return HolidayDao.selectAll();
	}

	public Holiday selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return HolidayDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Holiday record) {
		// TODO Auto-generated method stub
		return HolidayDao.updateByPrimaryKey(record);
	}
	
	public PageInfo<Holiday> pageqiantaiList(Integer pageNum, Integer pageSize,String name) {
		PageHelper.startPage(pageNum, pageSize);
		List<Holiday> list=HolidayDao.selectAll(name);
		return new PageInfo<>(list);
	}
}

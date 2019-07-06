package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.ActivityDao;
import com.ehr.model.Activity;
import com.ehr.model.pojo.ActivityQiantai;
import com.ehr.model.pojo.AttendanceQiantai;
import com.ehr.service.ActivitySerivce;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ActivityImpl implements ActivitySerivce{

	@Autowired
	ActivityDao activityDao;
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return activityDao.deleteByPrimaryKey(id);
	}

	public int insert(Activity record) {
		// TODO Auto-generated method stub
		return activityDao.insert(record);
	}

	public List<Activity> selectAll() {
		// TODO Auto-generated method stub
		return activityDao.selectAll();
	}

	public Activity selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return activityDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Activity record) {
		// TODO Auto-generated method stub
		return activityDao.updateByPrimaryKey(record);
	}

	@Override
	public List<ActivityQiantai> selectAllqiantai() {
		return activityDao.selectAllqiantai();
	}

	@Override
	public PageInfo<ActivityQiantai> pageqiantaiList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<ActivityQiantai> list=activityDao.selectAllqiantai();
		return new PageInfo<>(list);
	}
	public List<ActivityQiantai> selectlike(String name,String activityAddress){
		return  activityDao.selectLike(name, activityAddress);
	}
	public PageInfo<ActivityQiantai> selecpagetlike(Integer pageNum, Integer pageSize,String name,String activityAddress) {
		PageHelper.startPage(pageNum, pageSize);
		List<ActivityQiantai> list=selectlike(name, activityAddress);
		return new PageInfo<>(list);
	}

}

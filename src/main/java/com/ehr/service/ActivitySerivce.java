package com.ehr.service;

import java.util.List;

import com.ehr.model.Activity;
import com.ehr.model.pojo.ActivityQiantai;
import com.ehr.model.pojo.rulePojo;
import com.github.pagehelper.PageInfo;

public interface ActivitySerivce {
	
	int deleteByPrimaryKey(Integer id);
	
	int insert(Activity record);
	
	List<Activity> selectAll();
	
	Activity selectByPrimaryKey(Integer id);
	
	int updateByPrimaryKey(Activity record);
	
	List<ActivityQiantai> selectAllqiantai();
	
	PageInfo<ActivityQiantai> pageqiantaiList(Integer pageNum, Integer pageSize);
}	

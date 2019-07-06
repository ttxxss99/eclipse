package com.ehr.service;

import java.util.List;

import com.ehr.model.Holiday;

public interface HolidaySerivce {
	
	int deleteByPrimaryKey(Integer id);
	
	int insert(Holiday record);
	
	List<Holiday> selectAll();
	
	Holiday selectByPrimaryKey(Integer id);
	
	int updateByPrimaryKey(Holiday record);
}	

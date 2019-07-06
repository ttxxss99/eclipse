package com.ehr.service;

import java.util.List;

import com.ehr.model.Attendance;
import com.ehr.model.pojo.AttendancePojo;
import com.ehr.model.pojo.AttendanceQiantai;
import com.github.pagehelper.PageInfo;


public interface AttendanceSerivce {
	
	int deleteByPrimaryKey(Integer id);
	
	int insert(Attendance record);
	
	List<Attendance> selectAll();
	
	Attendance selectByPrimaryKey(Integer id);
	
	int updateByPrimaryKey(Attendance record);
	
//	PageInfo<AttendancePojo> pageList(Integer pageNum,Integer pageSize);
//	
//	List<AttendancePojo> selectAllPojo();

	PageInfo<AttendanceQiantai> pageqiantaiList(Integer pageNum, Integer pageSize);
}	

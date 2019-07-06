package com.ehr.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.AttendanceDao;
import com.ehr.model.Attendance;
import com.ehr.model.pojo.AttendancePojo;
import com.ehr.model.pojo.AttendanceQiantai;
import com.ehr.service.AttendanceSerivce;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service
public class AttendanceImpl implements AttendanceSerivce{

	@Autowired
	AttendanceDao AttendanceDao;
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return AttendanceDao.deleteByPrimaryKey(id);
	}

	public int insert(Attendance record) {
		// TODO Auto-generated method stub
		return AttendanceDao.insert(record);
	}

	public List<Attendance> selectAll() {
		// TODO Auto-generated method stub
		return AttendanceDao.selectAll();
	}

	public Attendance selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return AttendanceDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Attendance record) {
		// TODO Auto-generated method stub
		return AttendanceDao.updateByPrimaryKey(record);
	}

//	@Override
//	public PageInfo<AttendancePojo> pageList(Integer pageNum, Integer pageSize) {
//		PageHelper.startPage(pageNum, pageSize);
//		List<AttendancePojo> list=AttendanceDao.selectAllPojo();
//		return new PageInfo<>(list);
//	}
//	
//	@Override
//	public List<AttendancePojo> selectAllPojo() {
//		// TODO Auto-generated method stub
//		return AttendanceDao.selectAllPojo();
//	}

	@Override
	public PageInfo<AttendanceQiantai> pageqiantaiList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<AttendanceQiantai> list=AttendanceDao.selectAllPojoqiantai();
		return new PageInfo<>(list);
	}
	public List<AttendanceQiantai> selectlike(String name,Integer empId,Integer tag){
		return  AttendanceDao.selectLike(name, empId,  tag);
	}
	public PageInfo<AttendanceQiantai> selecpagetlike(Integer pageNum, Integer pageSize,String name,Integer empId,Integer tag) {
		PageHelper.startPage(pageNum, pageSize);
		List<AttendanceQiantai> list=selectlike(name, empId, tag);
		return new PageInfo<>(list);
	}
	
	public List<AttendancePojo> selectAllPojo(Integer empId){
		return AttendanceDao.selectAllPojo(empId);
	}
}

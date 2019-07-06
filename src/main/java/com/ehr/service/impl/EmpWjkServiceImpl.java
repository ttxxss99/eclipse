package com.ehr.service.impl;

import com.ehr.dao.EmpWjkDao;
import com.ehr.model.Emp;
import com.ehr.service.EmpWjkService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service 
public class EmpWjkServiceImpl implements EmpWjkService {
	@Autowired
    EmpWjkDao empDao;

	public List<Emp> selectAll() {
		return empDao.selectAll();
	}

	public void insert(Emp emp) {
		empDao.insert(emp);
	}

	public Emp selectByPrimaryKey(Integer id) {
		return empDao.selectByPrimaryKey(id);
	}

	public void updateByPrimaryKey(Emp emp) {
		empDao.updateByPrimaryKey(emp);
	}

	public void deleteByPrimaryKey(Integer id) {
		empDao.deleteByPrimaryKey(id);	
		
	}

	public PageInfo<Emp> pageList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Emp> list = empDao.selectAll();
        return new PageInfo<Emp>(list);
	}

	public PageInfo<Emp> selectLike(Integer pageNum, Integer pageSize, Integer id, String sex) {
		PageHelper.startPage(pageNum,pageSize);
        List<Emp> list = empDao.selectLike(id, sex);
        return new PageInfo<Emp>(list);
	}


}

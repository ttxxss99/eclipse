package com.ehr.service.impl;

import com.ehr.dao.DepartureDao;
import com.ehr.model.Departure;
import com.ehr.service.DepartureService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartureServiceImpl implements DepartureService {

	@Autowired
    DepartureDao departureDao;

	public List<Departure> selectAll() {
		return departureDao.selectAll();
	}

	public void insert(Departure departure) {
		departureDao.insert(departure);
	}

	public Departure selectByPrimaryKey(Integer id) {
		return departureDao.selectByPrimaryKey(id);
	}

	public void updateByPrimaryKey(Departure departure) {
		departureDao.updateByPrimaryKey(departure);
	}

	public void deleteByPrimaryKey(Integer id) {
		departureDao.deleteByPrimaryKey(id);	
		
	}

	public PageInfo<Departure> pageList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Departure> list = departureDao.selectAll();
        return new PageInfo<Departure>(list);
	}

	public PageInfo<Departure> selectLike(Integer pageNum, Integer pageSize, String instructions) {
		PageHelper.startPage(pageNum,pageSize);
		List<Departure> list = departureDao.selectLike(instructions);
		return new PageInfo<Departure>(list);
	}


}

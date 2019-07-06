package com.ehr.service.impl;

import com.ehr.dao.PosDao;
import com.ehr.model.Pos;
import com.ehr.service.PosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PosServiceImpl implements PosService {
@Autowired
PosDao posDao;
	@Override
	public List<Pos> selectAll() {
		// TODO Auto-generated method stub
		return posDao.selectAll();
	}

	@Override
	public Pos selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return posDao.selectByPrimaryKey(id);
	}

}

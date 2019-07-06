package com.ehr.service;

import com.ehr.model.Pos;

import java.util.List;

public interface PosService {
	public List<Pos> selectAll();
	public Pos selectByPrimaryKey(Integer id);
	
}

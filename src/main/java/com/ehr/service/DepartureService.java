package com.ehr.service;

import com.ehr.model.Departure;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface DepartureService {
	public List<Departure> selectAll();
    public void insert(Departure departure);
    public Departure selectByPrimaryKey(Integer id);
    public void updateByPrimaryKey(Departure departure);
    public void deleteByPrimaryKey(Integer id);
    PageInfo<Departure> pageList(Integer pageNum, Integer pageSize);
    //模糊查询
    PageInfo<Departure> selectLike(Integer pageNum, Integer pageSize, String instructions);
}

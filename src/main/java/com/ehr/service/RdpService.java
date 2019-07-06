package com.ehr.service;

import com.ehr.model.Rdp;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface RdpService {
	public List<Rdp> selectAll();
    public void insert(Rdp rdp);
    public Rdp selectByPrimaryKey(Integer id);
    public void updateByPrimaryKey(Rdp rdp);
    public void deleteByPrimaryKey(Integer id);
    PageInfo<Rdp> pageList(Integer pageNum, Integer pageSize);
    //模糊查询
  	PageInfo<Rdp> selectLike(Integer pageNum, Integer pageSize, String situation);
}

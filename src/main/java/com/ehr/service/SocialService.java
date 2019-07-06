package com.ehr.service;

import java.util.List;

import com.ehr.model.Social;
import com.github.pagehelper.PageInfo;

public interface SocialService {
	public List<Social> selectAll();
	public void insert(Social social);
	public int deleteByPrimaryKey(Integer id);
	public Social selectByPrimaryKey(Integer id);
	public int updateByPrimaryKey(Social record);
	PageInfo<Social> pageList(Integer pageNum,Integer pageSize);
}

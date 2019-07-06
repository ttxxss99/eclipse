package com.ehr.service;

import java.util.List;

import com.ehr.model.Rule;
import com.ehr.model.pojo.rulePojo;
import com.github.pagehelper.PageInfo;

public interface RuleSerivce {
	
	int deleteByPrimaryKey(Integer id);
	
	int insert(Rule record);
	
	List<Rule> selectAll();
	
	Rule selectByPrimaryKey(Integer id);
	
	int updateByPrimaryKey(Rule record);
	
	List<rulePojo> selectAllPojoqiantai();
	
	PageInfo<rulePojo> pageqiantaiList(Integer pageNum, Integer pageSize);
}	

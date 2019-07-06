package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.RuleDao;
import com.ehr.model.Rule;
import com.ehr.model.pojo.AttendanceQiantai;
import com.ehr.model.pojo.rulePojo;
import com.ehr.service.RuleSerivce;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class RuleImpl implements RuleSerivce{

	@Autowired
	RuleDao RuleDao;
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return RuleDao.deleteByPrimaryKey(id);
	}

	public int insert(Rule record) {
		// TODO Auto-generated method stub
		return RuleDao.insert(record);
	}

	public List<Rule> selectAll() {
		// TODO Auto-generated method stub
		return RuleDao.selectAll();
	}

	public Rule selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return RuleDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKey(Rule record) {
		return RuleDao.updateByPrimaryKey(record);
	}

	@Override
	public List<rulePojo> selectAllPojoqiantai() {
		return RuleDao.selectAllPojoqiantai();
	}

	@Override
	public PageInfo<rulePojo> pageqiantaiList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<rulePojo> list=RuleDao.selectAllPojoqiantai();
		return new PageInfo<>(list);
	}

}

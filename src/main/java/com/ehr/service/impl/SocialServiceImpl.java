package com.ehr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ehr.dao.SocialDao;
import com.ehr.model.Social;
import com.ehr.service.SocialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SocialServiceImpl implements SocialService {
	@Autowired
	SocialDao socialdao;
	@Override
	public List<Social> selectAll() {
		// TODO Auto-generated method stub
		return socialdao.selectAll();
	}
	@Override
	public void insert(Social social) {
		// TODO Auto-generated method stub
		socialdao.insert(social);
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		Social social = socialdao.selectByPrimaryKey(id);
		social.setLogictodelete(0);// logictodelete = 0 means deleted
		socialdao.updateByPrimaryKey(social);
		return id;
	}
	@Override
	public Social selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		
		return socialdao.selectByPrimaryKey(id);
	}
	@Override
	public int updateByPrimaryKey(Social record) {
		// TODO Auto-generated method stub
		socialdao.updateByPrimaryKey(record);
		return record.getId();
	}
	@Override
	public PageInfo<Social> pageList(Integer pageNum, Integer pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,pageSize);
		List<Social> socials = socialdao.selectAll();
		return new PageInfo<Social>(socials);
	}

}

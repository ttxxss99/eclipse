package com.ehr.service.impl;

import com.ehr.dao.RdpDao;
import com.ehr.model.Rdp;
import com.ehr.service.RdpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RdpServiceImpl implements RdpService {

	@Autowired
    RdpDao rdpDao;

	public List<Rdp> selectAll() {
		return rdpDao.selectAll();
	}

	public void insert(Rdp rdp) {
		rdpDao.insert(rdp);
	}

	public Rdp selectByPrimaryKey(Integer id) {
		return rdpDao.selectByPrimaryKey(id);
	}

	public void updateByPrimaryKey(Rdp rdp) {
		rdpDao.updateByPrimaryKey(rdp);
	}

	public void deleteByPrimaryKey(Integer id) {
		rdpDao.deleteByPrimaryKey(id);	
		
	}

	public PageInfo<Rdp> pageList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Rdp> list = rdpDao.selectAll();
        return new PageInfo<Rdp>(list);
	}

	public PageInfo<Rdp> selectLike(Integer pageNum, Integer pageSize, String situation) {
		PageHelper.startPage(pageNum,pageSize);
        List<Rdp> list = rdpDao.selectLike(situation);
        return new PageInfo<Rdp>(list);
	}

}

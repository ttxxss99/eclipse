package com.ehr.service.impl;

import com.ehr.dao.ApplicantDao;
import com.ehr.model.Applicant;
import com.ehr.service.ApplicantService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 应聘者管理表 服务层接口实现
 * @author WW
 *
 */
@Service
public class ApplicantServiceImpl implements ApplicantService {
	@Autowired
    ApplicantDao applicantDao;
	
	//根据Id查询指定数据
	@Override
	public Applicant selectById(Integer id) {
		return applicantDao.selectByPrimaryKey(id);
	}
	//查询所有数据
	@Override
	public List<Applicant> selectAll() {
		return applicantDao.selectAll();
	}
	//新增一条数据
	@Override
	public int insert(Applicant applicant) {
		return applicantDao.insert(applicant);
	}
	//通过指定的id修改该条数据
	@Override
	public int updateById(Applicant applicant) {
		return applicantDao.updateByPrimaryKey(applicant);
	}
	//通过指定的Id删除该条数据
	@Override
	public int deleteById(Integer id) {
		return applicantDao.deleteByPrimaryKey(id);
	}
	
	//分页
	@Override
	public PageInfo<Applicant> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
        List<Applicant> list = applicantDao.selectAll();
        return new PageInfo<>(list);
	}
	
	//模糊查询
	@Override
	public PageInfo<Applicant> selectLike(Integer pageNum, Integer pageSize, String name, Integer sex) {
		PageHelper.startPage(pageNum,pageSize);
        List<Applicant> list = applicantDao.selectLike(name, sex);
        return new PageInfo<>(list);
	}
}

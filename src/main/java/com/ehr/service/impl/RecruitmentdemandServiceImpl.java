package com.ehr.service.impl;

import com.ehr.dao.EmpDao;
import com.ehr.dao.RecruitmentdemandDao;
import com.ehr.model.Recruitmentdemand;
import com.ehr.service.RecruitmentdemandService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 招聘需求表的服务层接口实现类
 * @author WW
 *
 */
@Service
public class RecruitmentdemandServiceImpl implements RecruitmentdemandService {
	@Autowired
    RecruitmentdemandDao recruitmentdemandDao;
	@Autowired
    EmpDao empDao;
	
	//查找指定id的数据
	@Override
	public Recruitmentdemand selectById(Integer id) {
		Recruitmentdemand recruitmentdemand = recruitmentdemandDao.selectByPrimaryKey(id);
		int empId = recruitmentdemand.getEmpId();
		String empName = empDao.selectByPrimaryKey(empId).getName();
		recruitmentdemand.setEmpName(empName);
		return recruitmentdemand;
	}

	//查找所有数据
	@Override
	public List<Recruitmentdemand> selectAll() {
		List<Recruitmentdemand> list = recruitmentdemandDao.selectAll();
		for (int i = 0; i < list.size(); i++) {
			Recruitmentdemand recruitmentdemand = list.get(i);
			int empId = recruitmentdemand.getEmpId();
			String empName = empDao.selectByPrimaryKey(empId).getName();
			recruitmentdemand.setEmpName(empName);
		}
		return list;
	}

	//新增一条数据
	@Override
	public int insert(Recruitmentdemand recruitmentdemand) {
		return recruitmentdemandDao.insert(recruitmentdemand);
	}

	//修改指定id的数据
	@Override
	public int update(Recruitmentdemand recruitmentdemand) {
		return recruitmentdemandDao.updateByPrimaryKey(recruitmentdemand);
	}

	//删除指定id的数据
	@Override
	public int deleteById(Integer id) {
		return recruitmentdemandDao.deleteByPrimaryKey(id);
	}
	
	//分页部分
	@Override
	public PageInfo<Recruitmentdemand> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
        List<Recruitmentdemand> list = recruitmentdemandDao.selectAll();
        return new PageInfo<>(list);
	}

	//模糊查询
	@Override
	public PageInfo<Recruitmentdemand> selectLike(Integer pageNum, Integer pageSize, Integer state, Integer hiringMin,
                                                  Integer hiringMax) {
		PageHelper.startPage(pageNum,pageSize);
		List<Recruitmentdemand> list = recruitmentdemandDao.selectLike(state, hiringMin, hiringMax);
		return new PageInfo<>(list);
	}

}

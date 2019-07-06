package com.ehr.service.impl;

import com.ehr.dao.EmpDao;
import com.ehr.model.Emp;
import com.ehr.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 员工表服务层接口实现类
 * @author WW
 *
 */
@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
    EmpDao empDao;
	
	//根据Id查找员工的名字
	@Override
	public Emp selectById(Integer id) {
		return empDao.selectByPrimaryKey(id);
	}


	//根据名字查找id
	@Override
	public Integer selectByName(String name) {
		return empDao.selectByName(name);
	}

	//查询所有
	@Override
	public List<Emp> selectAll() {
		return empDao.selectAll();
	}

	//根据用户名和密码查找id
	@Override
	public Integer selectByUserNameAndPwd(String userid, String password) {
		return empDao.selectByUserNameAndPwd(userid, password);
	}
}

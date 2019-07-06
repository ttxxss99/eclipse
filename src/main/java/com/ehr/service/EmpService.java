package com.ehr.service;

import com.ehr.model.Emp;

import java.util.List;

/**
 * 员工表服务层接口
 * @author WW
 *
 */
public interface EmpService {
	//根据id查找用户名字
	Emp selectById(Integer id);
	//根据名字查找Id
	Integer selectByName(String name);
	//查询所有
	List<Emp> selectAll();
	//根据用户名和密码查找指定Emp数据
	Integer selectByUserNameAndPwd(String userid,String password);
}

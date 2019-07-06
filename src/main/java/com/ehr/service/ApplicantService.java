package com.ehr.service;

import com.ehr.model.Applicant;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * 应聘者管理表 服务层接口
 * @author WW
 *
 */
public interface ApplicantService {
	//通过Id查询一条数据
	Applicant selectById(Integer id);
	
	//查询所有
	List<Applicant> selectAll();
	//新增一条数据
	int insert(Applicant applicant);

	//修改编号为id的数据
	int updateById(Applicant applicant);

	//通过指定id删除数据
	int deleteById(Integer id);
	//分页
	PageInfo<Applicant> pageList(Integer pageNum, Integer pageSize);

	//模糊查询
	PageInfo<Applicant> selectLike(Integer pageNum, Integer pageSize, String name, Integer sex);
}

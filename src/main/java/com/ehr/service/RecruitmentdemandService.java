package com.ehr.service;
/**
 * 招聘需求表的服务层接口
 * @author WW
 *
 */

import com.ehr.model.Recruitmentdemand;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface RecruitmentdemandService {
	//查找指定id的数据
	Recruitmentdemand selectById(Integer id);
	//查找所有数据
	List<Recruitmentdemand> selectAll();
	//新增一条数据
	int insert(Recruitmentdemand recruitmentdemand);
	//修改指定id的数据
	int update(Recruitmentdemand recruitmentdemand);
	//删除指定id的数据
	int deleteById(Integer id);
	//分页
	PageInfo<Recruitmentdemand> pageList(Integer pageNum, Integer pageSize);
	//模糊查询
	PageInfo<Recruitmentdemand> selectLike(Integer pageNum, Integer pageSize,
                                           Integer state, Integer hiringMin, Integer hiringMax);
}

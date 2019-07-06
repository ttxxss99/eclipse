package com.ehr.service;
/**
 * 招聘信息发布表 服务层接口
 * @author WW
 *
 */

import com.ehr.model.Releases;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface ReleasesService {
	//查询指定id的数据
	Releases selectById(Integer id);

	//查询所有数据
	List<Releases> selectAll();
	
	//新增一条数据
	int insert(Releases releases);
	
	//修改指定id的数据
	int updateById(Releases releases);
	
	//删除指定id的数据
	int deleteById(Integer id);
	
	//分页
	PageInfo<Releases> pageList(Integer pageNum, Integer pageSize);

	//模糊查询
	PageInfo<Releases> selectLike(Integer pageNum, Integer pageSize, String skillsrequired);
}

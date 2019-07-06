package com.ehr.service;
/**
 * 人才库存储表 服务层接口
 * @author WW
 *
 */

import com.ehr.model.Talentpool;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface TalentpoolService {
	//查询指定id的数据
	Talentpool selectById(Integer id);
	
	//查询所有数据
	List<Talentpool> selectAll();
	
	//新增一条数据
	int insert(Talentpool talentpool);
	
	//修改指定id的数据
	int updateById(Talentpool talentpool);
	
	//删除指定id的数据
	int deleteById(Integer id);
	
	//分页
	PageInfo<Talentpool> pageList(Integer pageNum, Integer pageSize);

	//模糊查询
	PageInfo<Talentpool> selectLike(Integer pageNum, Integer pageSize, String name, Integer sex);
}

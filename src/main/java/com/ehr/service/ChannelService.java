package com.ehr.service;

import com.ehr.model.Channel;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * 渠道管理的服务层接口
 * @author WW
 *
 */
public interface ChannelService {
	//通过id查询
	Channel selectById(Integer id);
	
	//查询所有
	List<Channel> selectAll();
	
	//新增一条数据
	int insert(Channel channel);
	
	//修改指定id的数据
	int updateById(Channel channel);
	
	//删除指定id的数据
	int deleteById(Integer id);
	
	//分页
	PageInfo<Channel> pageList(Integer pageNum, Integer pageSize);
}

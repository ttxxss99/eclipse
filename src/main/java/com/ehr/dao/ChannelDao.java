package com.ehr.dao;

import com.ehr.model.Channel;

import java.util.List;

/**
 * 渠道管理的数据库操作DAO接口部分
 * @author WW
 *
 */
public interface ChannelDao {
	// 删除指定id的数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Channel record);

    //查询指定id的数据
    Channel selectByPrimaryKey(Integer id);

    //查询所有数据
    List<Channel> selectAll();

    //修改指定id的数据
    int updateByPrimaryKey(Channel record);
}
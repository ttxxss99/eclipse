package com.ehr.service.impl;

import com.ehr.dao.ChannelDao;
import com.ehr.model.Channel;
import com.ehr.service.ChannelService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 渠道管理的服务层接口实现类
 * @author WW
 *
 */
@Service
public class ChannelServiceImpl implements ChannelService {
	@Autowired
    ChannelDao channelDao;
	
	//查询指定id的数据
	@Override
	public Channel selectById(Integer id) {
		return channelDao.selectByPrimaryKey(id);
	}
	//查询所有数据
	@Override
	public List<Channel> selectAll() {
		return channelDao.selectAll();
	}
	//新增一条数据
	@Override
	public int insert(Channel channel) {
		return channelDao.insert(channel);
	}
	//修改指定id的一条数据
	@Override
	public int updateById(Channel channel) {
		return channelDao.updateByPrimaryKey(channel);
	}
	//删除指定id的数据
	@Override
	public int deleteById(Integer id) {
		return channelDao.deleteByPrimaryKey(id);
	}
	//分页部分
	@Override
	public PageInfo<Channel> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
        List<Channel> list = channelDao.selectAll();
        return new PageInfo<>(list);
	}

}

package com.ehr.service.impl;

import com.ehr.dao.ChannelDao;
import com.ehr.dao.EmpDao;
import com.ehr.dao.ReleasesDao;
import com.ehr.model.Channel;
import com.ehr.model.Releases;
import com.ehr.service.ReleasesService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 招聘信息发布表 服务层接口的实现
 * @author WW
 *
 */
@Service
public class ReleasesServiceImpl implements ReleasesService {
	@Autowired
    ReleasesDao releasesDao;
	@Autowired
    EmpDao empDao;
	@Autowired
    ChannelDao channelDao;
	
	//查询指定id的数据
	@Override
	public Releases selectById(Integer id) {
		Releases releases = releasesDao.selectByPrimaryKey(id);
		int empId = releases.getEmpId();
		String empName = empDao.selectByPrimaryKey(empId).getName();
		releases.setEmpName(empName);
		int channelId = releases.getChannelId();
		Channel channel = channelDao.selectByPrimaryKey(channelId);
		String channelName = channel.getName();
		releases.setChannelName(channelName);
		return releases;
	}
	
	//查询所有数据
	@Override
	public List<Releases> selectAll() {
		List<Releases> list = releasesDao.selectAll();
		for (int i = 0; i < list.size(); i++) {
			Releases releases = list.get(i);
			int empId = releases.getEmpId();
			String empName = empDao.selectByPrimaryKey(empId).getName();
			releases.setEmpName(empName);
			int channelId = releases.getChannelId();
			Channel channel = channelDao.selectByPrimaryKey(channelId);
			String channelName = channel.getName();
			releases.setChannelName(channelName);
		}
		return list;
	}

	//新增一条数据
	@Override
	public int insert(Releases releases) {
		return releasesDao.insert(releases);
	}

	//修改指定id的数据
	@Override
	public int updateById(Releases releases) {
		return releasesDao.updateByPrimaryKey(releases);
	}

	//删除指定id的数据
	@Override
	public int deleteById(Integer id) {
		return releasesDao.deleteByPrimaryKey(id);
	}

	//分页操作
	@Override
	public PageInfo<Releases> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
        List<Releases> list = releasesDao.selectAll();
        return new PageInfo<>(list);
	}

	//模糊查询
	@Override
	public PageInfo<Releases> selectLike(Integer pageNum, Integer pageSize, String skillsrequired) {
		PageHelper.startPage(pageNum,pageSize);
        List<Releases> list = releasesDao.selectLike(skillsrequired);
        return new PageInfo<>(list);
	}

	
}

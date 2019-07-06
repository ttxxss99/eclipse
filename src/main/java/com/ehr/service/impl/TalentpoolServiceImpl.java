package com.ehr.service.impl;

import com.ehr.dao.TalentpoolDao;
import com.ehr.model.Talentpool;
import com.ehr.service.TalentpoolService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 人才库存储表 服务层接口的实现部分
 * @author WW
 *
 */
@Service
public class TalentpoolServiceImpl implements TalentpoolService {
	@Autowired
    TalentpoolDao talentpoolDao;
	
	//查询指定id的数据
	@Override
	public Talentpool selectById(Integer id) {
		return talentpoolDao.selectByPrimaryKey(id);
	}

	//查询所有数据
	@Override
	public List<Talentpool> selectAll() {
		return talentpoolDao.selectAll();
	}

	//新增一条数据
	@Override
	public int insert(Talentpool talentpool) {
		return talentpoolDao.insert(talentpool);
	}

	//修改指定id的数据
	@Override
	public int updateById(Talentpool talentpool) {
		return talentpoolDao.updateByPrimaryKey(talentpool);
	}

	//删除指定id的数据
	@Override
	public int deleteById(Integer id) {
		return talentpoolDao.deleteByPrimaryKey(id);
	}

	//分页部分
	@Override
	public PageInfo<Talentpool> pageList(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum,pageSize);
        List<Talentpool> list = talentpoolDao.selectAll();
        return new PageInfo<>(list);
	}

	//模糊查询
	@Override
	public PageInfo<Talentpool> selectLike(Integer pageNum, Integer pageSize, String name, Integer sex) {
		PageHelper.startPage(pageNum,pageSize);
        List<Talentpool> list = talentpoolDao.selectLike(name, sex);
        return new PageInfo<>(list);
	}

}

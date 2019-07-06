package com.ehr.service.impl;

import com.ehr.dao.PositionDao;
import com.ehr.model.Dept;
import com.ehr.model.Position;
import com.ehr.service.PositionService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Zy
 * @date 25/06/2019 3:00 PM
 */
@Service
public class PositionServiceImpl implements PositionService {
    @Autowired
    PositionDao positionDao;
    @Override
    public List<Position> selectAll() {
        return positionDao.selectAll();
    }

    @Override
    public void insert(Position position) {
        positionDao.insert(position);
    }

    @Override
    public Position selectByPrimaryKey(Integer id) {
        return positionDao.selectByPrimaryKey(id);
    }

    @Override
    public void updateByPrimaryKey(Position position) {
        positionDao.updateByPrimaryKey(position);
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
        positionDao.deleteByPrimaryKey(id);
    }

    @Override
    public PageInfo<Position> pageList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Position> list = positionDao.selectAll();
        return new PageInfo<>(list);
    }

    @Override
    public PageInfo<Position> likeSearch(String positionName , Integer deptId, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Position> list = positionDao.likeSearch(positionName,deptId);
        return new PageInfo<>(list);
    }
}
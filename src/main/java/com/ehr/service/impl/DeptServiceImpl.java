package com.ehr.service.impl;

import com.ehr.dao.DeptDao;
import com.ehr.model.Dept;
import com.ehr.model.Dept;
import com.ehr.service.DeptService;
import com.ehr.service.DeptService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Zy
 * @date 23/06/2019 10:46 PM
 */
@Service
public class DeptServiceImpl implements DeptService {

    @Autowired
    DeptDao deptDao;
    @Override
    public List<Dept> selectAll() {
        return deptDao.selectAll();
    }

    @Override
    public void insert(Dept dept) {
        deptDao.insert(dept);
    }

    @Override
    public Dept selectByPrimaryKey(Integer id) {
        return deptDao.selectByPrimaryKey(id);
    }

    @Override
    public void updateByPrimaryKey(Dept dept) {
        deptDao.updateByPrimaryKey(dept);
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
        deptDao.deleteByPrimaryKey(id);
    }

    @Override
    public PageInfo<Dept> pageList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Dept> list = deptDao.selectAll();
        return new PageInfo<>(list);
    }

    @Override
    public PageInfo<Dept> likeSearch(String deptName ,Integer companyId,Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Dept> list = deptDao.likeSearch(deptName,companyId);
        return new PageInfo<>(list);
    }
}

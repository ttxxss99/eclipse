package com.ehr.service.impl;

import com.ehr.dao.CompanyDao;
import com.ehr.model.Company;
import com.ehr.service.CompanyService;
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
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    CompanyDao companyDao;
    @Override
    public List<Company> selectAll() {
        return companyDao.selectAll();
    }

    @Override
    public void insert(Company company) {
        companyDao.insert(company);
    }

    @Override
    public Company selectByPrimaryKey(Integer id) {
        return companyDao.selectByPrimaryKey(id);
    }

    @Override
    public void updateByPrimaryKey(Company company) {
        companyDao.updateByPrimaryKey(company);
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
        companyDao.deleteByPrimaryKey(id);
    }

    @Override
    public PageInfo<Company> pageList(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Company> list = companyDao.selectAll();
        return new PageInfo<>(list);
    }

    @Override
    public PageInfo<Company> likeSearch(String name ,String address,Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Company> list = companyDao.likeSearch(name,address);
        return new PageInfo<>(list);
    }
}

package com.ehr.service;

import com.ehr.model.Company;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author Zy
 * @date 23/06/2019 10:45 PM
 */
public interface CompanyService {
    public List<Company> selectAll();
    public void insert(Company company);
    public Company selectByPrimaryKey(Integer id);
    public void updateByPrimaryKey(Company company);
    public void deleteByPrimaryKey(Integer id);
    PageInfo<Company> pageList (Integer pageNum, Integer pageSize);
    PageInfo<Company> likeSearch (String name ,String address,Integer pageNum, Integer pageSize);
}

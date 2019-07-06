package com.ehr.dao;

import com.ehr.model.Recruitmentdemand;

import java.util.List;

/**
 * 招聘需求表的数据库操作DAO接口
 * @author WW
 *
 */
public interface RecruitmentdemandDao {
    //删除指定id的数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Recruitmentdemand record);

    //查找指定id的数据
    Recruitmentdemand selectByPrimaryKey(Integer id);

    //查找所有数据
    List<Recruitmentdemand> selectAll();

    //修改指定id的数据
    int updateByPrimaryKey(Recruitmentdemand record);
    
    //模糊查询
    List<Recruitmentdemand> selectLike(Integer state, Integer hiringMin, Integer hiringMax);
}
package com.ehr.dao;

import com.ehr.model.Releases;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 招聘信息发布表 数据库操作DAO接口
 * @author WW
 *
 */
public interface ReleasesDao {
    //删除指定Id的数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Releases record);

    //查询指定id的数据
    Releases selectByPrimaryKey(Integer id);

    //查询所有数据
    List<Releases> selectAll();

    //修改指定id的数据
    int updateByPrimaryKey(Releases record);
    
    //模糊查询
    List<Releases> selectLike(@Param("skillsrequired") String skillsrequired);
}
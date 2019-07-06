package com.ehr.dao;

import com.ehr.model.Applicant;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 应聘者管理对应的DAO接口 数据库操作接口
 * @author WW
 *
 */
public interface ApplicantDao {
    /**
     * 通过Id删除指定数据
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 增加一条数据
     */
    int insert(Applicant record);

    /**
     * 通过Id查找一条数据
     */
    Applicant selectByPrimaryKey(Integer id);

    /**
     * 查找所有
     */
    List<Applicant> selectAll();
    
    //模糊查询
    List<Applicant> selectLike(@Param("name") String name, @Param("sex") Integer sex);

    /**
     * 更新指定Id代表的数据
     */
    int updateByPrimaryKey(Applicant record);
    
}
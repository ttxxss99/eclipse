package com.ehr.dao;

import com.ehr.model.Talentpool;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 人才库存储表 数据库操作DAO接口
 * @author WW
 *
 */
public interface TalentpoolDao {
    //删除指定id的数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Talentpool record);

    //查询指定id的数据
    Talentpool selectByPrimaryKey(Integer id);

    //查询所有数据
    List<Talentpool> selectAll();

    //模糊查询
    List<Talentpool> selectLike(@Param("name") String name, @Param("sex") Integer sex);
    
    //修改指定id的数据
    int updateByPrimaryKey(Talentpool record);
    
}
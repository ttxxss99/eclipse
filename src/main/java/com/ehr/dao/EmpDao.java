package com.ehr.dao;
/**
 * 员工表的数据库操作DAO接口
 * @author WW
 *
 */

import com.ehr.model.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDao {
    //根据Id查找对应表中数据的名字
    Emp selectByPrimaryKey(Integer id);
    //通过名字寻找id
    Integer selectByName(String name);
    //查询所有Emp的名字和id
    List<Emp> selectAll();
    //根据用户名和密码查找指定Emp数据
    Integer selectByUserNameAndPwd(@Param("userid")String userid, @Param("password")String password);
}
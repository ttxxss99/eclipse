package com.ehr.dao;

import com.ehr.model.Income;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
/**
 * 客户项目统计
 * @author WW
 *
 */
public interface IncomeDao {
	//模糊查询  根据月份查客户项目数
	List<Income> selectByDate(@Param("date") String date);
	//查询所有月份  去重操作
	List<Date> selectAllDate();
	
	
	
	//根据id查询一条数据
    Income selectByPrimaryKey(Integer id);

    //查询所有数据
    List<Income> selectAll();
    
    //根据id删除一条数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Income record);

    //根据id更新一条数据
    int updateByPrimaryKey(Income record);
}
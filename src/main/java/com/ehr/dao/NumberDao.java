package com.ehr.dao;

import com.ehr.model.Number;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 人力资源 人数统计
 * @author WW
 *
 */
public interface NumberDao {
	//模糊查询  根据月份查人数
	List<Number> selectByDate(@Param("date") String date, @Param("companyName") String companyName);
	//查询所有月份  去重操作
	List<Date> selectAllDate();
	//查询所有公司  去重操作
	List<String> selectAllCompany();
	
	
	
	
	
	
	//根据id查询一条数据
	Number selectByPrimaryKey(Integer id);
	
	//查询所有数据
	List<Number> selectAll();
	
    //根据id删除一条数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Number record);


    //根据id更新一条数据
    int updateByPrimaryKey(Number record);
}
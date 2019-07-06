package com.ehr.dao;
import com.ehr.model.Profit;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
/**
 * 利润统计
 * @author WW
 */
public interface ProfitDao {
	//模糊查询  根据月份查利润
	List<Profit> selectByDate(@Param("date") String date, @Param("companyName") String companyName);
	//查询所有月份  去重操作
	List<Date> selectAllDate();
	//查询所有公司  去重操作
	List<String> selectAllCompany();
	
	
	
    //根据id删除一条数据
    int deleteByPrimaryKey(Integer id);

    //新增一条数据
    int insert(Profit record);

    //根据id选择一条数据
    Profit selectByPrimaryKey(Integer id);

    //查找所有数据
    List<Profit> selectAll();

    //根据id更新一条数据
    int updateByPrimaryKey(Profit record);
}
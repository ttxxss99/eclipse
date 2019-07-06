package com.ehr.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ehr.model.Income;
/**
 * 客户项目统计
 * @author WW
 *
 */
public interface IncomeService {
	//模糊查询  根据月份查客户项目数
	List<Income> selectByDate(String date);
	//查询所有月份  去重操作
	List<String> selectAllDate();
}

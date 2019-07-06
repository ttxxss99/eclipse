package com.ehr.service;

import com.ehr.model.Number;

import java.util.List;

/**
 * 人力资源 人数统计
 * @author WW
 *
 */
public interface NumberService {
	//模糊查询  根据月份查人数
	List<Number> selectByDate(String date, String companyName);
	//查询所有月份  去重操作
	List<String> selectAllDate();
	//查询所有公司  去重操作
	List<String> selectAllCompany();
}

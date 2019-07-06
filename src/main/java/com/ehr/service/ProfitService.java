package com.ehr.service;

import java.util.List;

import com.ehr.model.Profit;
import org.springframework.stereotype.Service;

/**
 * 利润统计
 * @author WW
 *
 */
@Service
public interface ProfitService {
	//模糊查询  根据月份查利润
	List<Profit> selectByDate(String date, String companyName);
	//查询所有月份  去重操作
	List<String> selectAllDate();
	//查询所有公司  去重操作
	List<String> selectAllCompany();
}

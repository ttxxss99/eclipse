package com.ehr.dao;

import com.ehr.model.Rule;
import com.ehr.model.pojo.rulePojo;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface RuleDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rule
     *
     * @mbg.generated Sun Jun 23 19:50:14 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rule
     *
     * @mbg.generated Sun Jun 23 19:50:14 CST 2019
     */
    int insert(Rule record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rule
     *
     * @mbg.generated Sun Jun 23 19:50:14 CST 2019
     */
    Rule selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rule
     *
     * @mbg.generated Sun Jun 23 19:50:14 CST 2019
     */
    List<Rule> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rule
     *
     * @mbg.generated Sun Jun 23 19:50:14 CST 2019
     */
    int updateByPrimaryKey(Rule record);
    
    @Select("SELECT ehr_rule.id,ehr_rule.rulesName,ehr_rule.clockInNum,ehr_rule.amStartTime,ehr_rule.amEndTime,ehr_rule.pmStartTime,ehr_rule.pmEndTime,ehr_rule.clockInIocation,ehr_rule.instructions,ehr_emp.`name`\r\n" + 
    		"FROM ehr_rule,ehr_emp\r\n" + 
    		"where ehr_rule.emp_id = ehr_emp.id")
    List<rulePojo> selectAllPojoqiantai();
}
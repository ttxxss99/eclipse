package com.ehr.dao;

import com.ehr.model.Rdp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RdpDao {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rewardpunish
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rewardpunish
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    int insert(Rdp record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rewardpunish
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    Rdp selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rewardpunish
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    List<Rdp> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ehr_rewardpunish
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    int updateByPrimaryKey(Rdp record);

	List<Rdp> selectLike(@Param("situation") String situation);
}
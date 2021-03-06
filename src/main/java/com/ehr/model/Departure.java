package com.ehr.model;

import java.util.Date;

public class Departure {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ehr_departure.id
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ehr_departure.instructions
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    private String instructions;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ehr_departure.departureTime
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    private Date departuretime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ehr_departure.emp_id
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    private Integer empId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column ehr_departure.logicToDelete
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    private Integer logictodelete;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_departure.id
     *
     * @return the value of ehr_departure.id
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_departure.id
     *
     * @param id the value for ehr_departure.id
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_departure.instructions
     *
     * @return the value of ehr_departure.instructions
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public String getInstructions() {
        return instructions;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_departure.instructions
     *
     * @param instructions the value for ehr_departure.instructions
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_departure.departureTime
     *
     * @return the value of ehr_departure.departureTime
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public Date getDeparturetime() {
        return departuretime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_departure.departureTime
     *
     * @param departuretime the value for ehr_departure.departureTime
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public void setDeparturetime(Date departuretime) {
        this.departuretime = departuretime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_departure.emp_id
     *
     * @return the value of ehr_departure.emp_id
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public Integer getEmpId() {
        return empId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_departure.emp_id
     *
     * @param empId the value for ehr_departure.emp_id
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_departure.logicToDelete
     *
     * @return the value of ehr_departure.logicToDelete
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public Integer getLogictodelete() {
        return logictodelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_departure.logicToDelete
     *
     * @param logictodelete the value for ehr_departure.logicToDelete
     *
     * @mbg.generated Fri Jun 28 22:48:24 CST 2019
     */
    public void setLogictodelete(Integer logictodelete) {
        this.logictodelete = logictodelete;
    }
}
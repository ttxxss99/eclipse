package com.ehr.model;
/**
 * 人才库存储表
 * ehr_talentpool表对应的POJO类
 * @author WW
 *
 */
public class Talentpool {
    private Integer id;//编号
    private String name;//名字
    private Integer sex;//性别
    private String phone;//电话
    private String qq;//QQ
    private String email;//邮箱
    private Integer age;//年龄
    private String currentaddress;//现住址
    private String specialty;//技术特长
    private String comments;//圈内评价
    private String asthecompany;//现所在公司
    private String mark;//备注
    private Integer logictodelete;//逻辑删除字段
    //性别为数字 存储转化为字符串的性别
    private String sexStr;

    public String getSexStr() {
		return sexStr;
	}

	public void setSexStr(String sexStr) {
		this.sexStr = sexStr;
	}
    @Override
	public String toString() {
		return "Talentpool [id=" + id + ", name=" + name + ", sex=" + sex + ", phone=" + phone + ", qq=" + qq
				+ ", email=" + email + ", age=" + age + ", currentaddress=" + currentaddress + ", specialty="
				+ specialty + ", comments=" + comments + ", asthecompany=" + asthecompany + ", mark=" + mark
				+ ", logictodelete=" + logictodelete + "]";
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.id
     *
     * @return the value of ehr_talentpool.id
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.id
     *
     * @param id the value for ehr_talentpool.id
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.name
     *
     * @return the value of ehr_talentpool.name
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.name
     *
     * @param name the value for ehr_talentpool.name
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.sex
     *
     * @return the value of ehr_talentpool.sex
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public Integer getSex() {
        return sex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.sex
     *
     * @param sex the value for ehr_talentpool.sex
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setSex(Integer sex) {
        this.sex = sex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.phone
     *
     * @return the value of ehr_talentpool.phone
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.phone
     *
     * @param phone the value for ehr_talentpool.phone
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.QQ
     *
     * @return the value of ehr_talentpool.QQ
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getQq() {
        return qq;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.QQ
     *
     * @param qq the value for ehr_talentpool.QQ
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setQq(String qq) {
        this.qq = qq;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.email
     *
     * @return the value of ehr_talentpool.email
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.email
     *
     * @param email the value for ehr_talentpool.email
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.age
     *
     * @return the value of ehr_talentpool.age
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public Integer getAge() {
        return age;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.age
     *
     * @param age the value for ehr_talentpool.age
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setAge(Integer age) {
        this.age = age;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.currentAddress
     *
     * @return the value of ehr_talentpool.currentAddress
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getCurrentaddress() {
        return currentaddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.currentAddress
     *
     * @param currentaddress the value for ehr_talentpool.currentAddress
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setCurrentaddress(String currentaddress) {
        this.currentaddress = currentaddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.specialty
     *
     * @return the value of ehr_talentpool.specialty
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getSpecialty() {
        return specialty;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.specialty
     *
     * @param specialty the value for ehr_talentpool.specialty
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.comments
     *
     * @return the value of ehr_talentpool.comments
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getComments() {
        return comments;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.comments
     *
     * @param comments the value for ehr_talentpool.comments
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setComments(String comments) {
        this.comments = comments;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.asTheCompany
     *
     * @return the value of ehr_talentpool.asTheCompany
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getAsthecompany() {
        return asthecompany;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.asTheCompany
     *
     * @param asthecompany the value for ehr_talentpool.asTheCompany
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setAsthecompany(String asthecompany) {
        this.asthecompany = asthecompany;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.mark
     *
     * @return the value of ehr_talentpool.mark
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public String getMark() {
        return mark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.mark
     *
     * @param mark the value for ehr_talentpool.mark
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setMark(String mark) {
        this.mark = mark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column ehr_talentpool.logicToDelete
     *
     * @return the value of ehr_talentpool.logicToDelete
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public Integer getLogictodelete() {
        return logictodelete;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column ehr_talentpool.logicToDelete
     *
     * @param logictodelete the value for ehr_talentpool.logicToDelete
     *
     * @mbg.generated Mon Jun 24 10:46:18 CST 2019
     */
    public void setLogictodelete(Integer logictodelete) {
        this.logictodelete = logictodelete;
    }
}
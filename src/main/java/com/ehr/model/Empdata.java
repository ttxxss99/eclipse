package com.ehr.model;


public class Empdata {
	int id;
	String empName;
	String groupname;
	String checkin_type;
	String exception_type;
	Long checkin_time;
	public Long getCheckin_time() {
		return checkin_time;
	}
	public void setCheckin_time(Long checkin_time) {
		this.checkin_time = checkin_time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public String getCheckin_type() {
		return checkin_type;
	}
	public void setCheckin_type(String checkin_type) {
		this.checkin_type = checkin_type;
	}
	public String getException_type() {
		return exception_type;
	}
	public void setException_type(String exception_type) {
		this.exception_type = exception_type;
	}
	
	public Empdata(int id, String empName, String groupname, String checkin_type, String exception_type,
			Long checkin_time) {
		super();
		this.id = id;
		this.empName = empName;
		this.groupname = groupname;
		this.checkin_type = checkin_type;
		this.exception_type = exception_type;
		this.checkin_time = checkin_time;
	}
	public Empdata() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Empdata [id=" + id + ", empName=" + empName + ", groupname=" + groupname + ", checkin_type="
				+ checkin_type + ", exception_type=" + exception_type + ", checkin_time=" + checkin_time + "]";
	}
	
}

package com.ehr.model.pojo;

import com.ehr.model.Attendance;

public class AttendancePojo extends Attendance{
	String name;

	public AttendancePojo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AttendancePojo(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}

package com.ehr.model.pojo;


public class AttendanceQiantai extends AttendancePojo{
	String tagName;
	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}

	public AttendanceQiantai() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AttendanceQiantai(String tagName) {
		super();
		this.tagName = tagName;
	}
	
	
}

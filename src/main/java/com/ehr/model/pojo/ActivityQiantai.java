package com.ehr.model.pojo;

import java.util.Date;

import com.ehr.model.Activity;

public class ActivityQiantai extends Activity{
	String name;
	String staticName;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStaticName() {
		return staticName;
	}
	public void setStaticName(String staticName) {
		this.staticName = staticName;
	}
	public ActivityQiantai() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ActivityQiantai(Integer id, String theme, String activityaddress, String introduce, String activitythedetail,
			Date initatetime, Integer spending, Integer state, Integer empId, Integer logictodelete) {
		super(id, theme, activityaddress, introduce, activitythedetail, initatetime, spending, state, empId, logictodelete);
		// TODO Auto-generated constructor stub
	}
	public ActivityQiantai(String name, String staticName) {
		super();
		this.name = name;
		this.staticName = staticName;
	}
	
	
}

package com.ehr.model.pojo;

import com.ehr.model.Rule;

public class rulePojo extends Rule{
	String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public rulePojo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public rulePojo(Integer id, String rulesname, Integer clockinnum, String amstarttime, String amendtime,
			String pmstarttime, String pmendtime, String clockiniocation, Integer instructions, Integer empId,
			Integer logictodelete) {
		super(id, rulesname, clockinnum, amstarttime, amendtime, pmstarttime, pmendtime, clockiniocation, instructions, empId,
				logictodelete);
		// TODO Auto-generated constructor stub
	}

}

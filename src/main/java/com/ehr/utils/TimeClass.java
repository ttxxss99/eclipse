package com.ehr.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeClass {
	Date now=null;
	
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	
	//获取时间
	public Long getLongTime(String date,String time) {
		String datetime= date+" "+time+":00";
		Long longTime=null;
		System.err.println(date);
		System.err.println(time);
		System.err.println(datetime+"21212121");
		
		try {
			Date date1 = simpleDateFormat.parse(datetime);
			longTime = date1.getTime();
			System.err.println(longTime+"________");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		System.err.println(longTime+"________");
		return longTime;
	}
	public TimeClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

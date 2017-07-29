package com.yc.mp.util;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.apache.logging.log4j.LogManager;

public class DateUtil {
	
	
	public Date strToDate(String str){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//小写的mm表示的是分钟  
		try {
			Date date= sdf.parse(str);
			return date;
		} catch (ParseException e) {
			LogManager.getLogger().debug("字符转换失败");
		}
		return null;
	}
	
	public String dateToStr(Date date){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
		String str=sdf.format(date);
		return str;
	}
}

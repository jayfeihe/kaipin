package com.kaipin.oss.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.joda.time.DateTime;
import org.joda.time.Months;

/**
 * 时间操作类
 * @author Mr-H
 *
 */
public class TimeUtil {
	
	public static void main(String[] args) throws ParseException {
 		
//		System.out.println(getLaterMouthDate(1, getDate()));
		
//		System.out.println(TimeUtil.currentTimeMillis());
//		long epoch = new java.text.SimpleDateFormat ("yyyy-MM-dd HH:mm:ss").parse("2008-12-01 16:33:00").getTime()/1000;
// 		System.out.println(epoch);
// 		System.out.println(getBeforMouthDate(1,"2015-12-11 22:53:37","2016-04-11"));
//		System.out.println(currentTimeMillisByTime("2016-03-15 00:00:00"));
//		getNearestMonthDays();
		String s[] = getDaysBetweenDate("2015-01-01", "2020-12-31");
		System.out.println(s.length);
//		isNotWeekDay("2016-04-29");
		//getBeforeMounthDay();
	}

	/**
	 * HH:mm:ss
	 * @return
	 */
	public static String getTime() {
		return new SimpleDateFormat("HH:mm:ss").format(new Date());
	}

	/**
	 * yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String getDate() {
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}

	/**
	 * yyyy-MM-dd
	 * @return
	 */
	public static String getDates() {
		return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	}
	
	/**
	 * 时间戳
	 * @return
	 */
	public static long currentTimeMillis() {
//		Date date = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
//		return Long.valueOf(sdf.format(date));
		return System.currentTimeMillis();
	}
	
	//获取当前季度
	//获得本季度
	/**
	 * 获取季度
	 * @return
	 */
    public static String getThisSeasonTime(){  
    	int month = Integer.valueOf(getDates().substring(5, 7));
        int season = 1;  
        if(month>=1&&month<=3){  
            season = 1;  
        }  
        if(month>=4&&month<=6){  
            season = 2;  
        }  
        if(month>=7&&month<=9){  
            season = 3;  
        }  
        if(month>=10&&month<=12){  
            season = 4;  
        } 
        return String.valueOf(getDates().substring(0, 4)+"年第"+season+"季度");
    } 
    
    
    /**
     * 获取一个当前日期 X个月后的日期
     * 
     * @return
     */
    public static String getLaterMouthDate(int renewalsdata, String validatetime){
    	try {
     		//int renewalsdata = 1;
//     		String validatetime = "20120131";
     		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
     		Date now = sdf.parse(validatetime);
     		Calendar calendar = Calendar.getInstance();
     		calendar.setTime(now);
//     		System.out.println("原来  == " + sdf.format(calendar.getTime()));
     		calendar.add(Calendar.MONTH, renewalsdata);
//     		System.out.println("添加  == " + sdf.format(calendar.getTime()));
     		return sdf.format(calendar.getTime());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
    }
    
    
    /**
     * 获取当前时间X个月前的日期
     * @return
     */
    public  static String getBeforMouthDate(){
 		Date date = new Date();//当前日期
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//格式化对象
	    Calendar calendar = Calendar.getInstance();//日历对象
	    calendar.setTime(date);//设置当前日期
	    calendar.add(Calendar.MONTH, -12);//月份减一
	    System.out.println(sdf.format(calendar.getTime()));//输出格式化的日期
	    return "";
    }
    
    /**
     * 根据时间戳获取时间   yyyy-MM-dd HH:mm:ss
     * @param currentTimeMillis 时间戳
     * @return 时间
     */
    public static String getTimeByMillis(Long currentTimeMillis){
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(new Date(currentTimeMillis));
    }
    
    /**
     * 根据时间获取时间戳
     * @param dateString 时间
     * @return 时间戳
     * @throws ParseException
     */
    public static long currentTimeMillisByTime(String dateString) throws ParseException{
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = sdf.parse(dateString);
    	return date.getTime();
    }
    
    
    /**
     * 获取当前月最近一个月的日期
     * @return
     */
    public static String[] getNearestMonthDays(){
    	String dayArray[] = new String[30];
    	String currentDay = getDates();
    	int index = Integer.valueOf((String) currentDay.subSequence(5, 7));
    	System.out.println(index);
    	return dayArray;
    }
    
    /**
     * 获取两个时间段之间的月数
     * @param renewalsdata
     * @param startTime
     * @param endTime
     * @return
     */
    public static String getMouthsBetweenMouth(String startTime,String endTime){
    	String startStr[] = startTime.substring(0, 10).split("-");
	    DateTime end = new DateTime(
	    		Integer.valueOf(startStr[0]), 
	    		Integer.valueOf(startStr[1]), 
	    		Integer.valueOf(startStr[2]) ,00 , 00 , 00);
	    String endTimeStr[] = endTime.split("-");
	    DateTime start = new DateTime(
	    		Integer.valueOf(endTimeStr[0]), 
	    		Integer.valueOf(endTimeStr[1]) , 
	    		Integer.valueOf(endTimeStr[2]) , 00, 00 , 00);
	    int months = Months.monthsBetween(end, start).getMonths(); // 6
	   // System.out.println(months);
	    return String.valueOf(months);
    }
    
    /**
     * 两个日期之间的每一天
     * 包括周末
     * @param startTime 2008-08-08
     * @param endTime 2009-08-08
     * @return
     */
    public static String[] getDaysBetweenDate(String startTime, String endTime){
    	String days[] = null;
    	String daysStr = "";
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    	try {
    		if(StringUtil.isNotEmpty(startTime) && StringUtil.isNotEmpty(endTime)){
        		Date dateOne = sdf.parse(startTime);
    			Date dateTwo = sdf.parse(endTime);
    			Calendar calendar = Calendar.getInstance();
    			calendar.setTime(dateOne);
    			while(calendar.getTime().compareTo(dateTwo) <= 0){				
    				daysStr = daysStr + "," + sdf.format(calendar.getTime());
    				calendar.add(Calendar.DAY_OF_MONTH, 1);				
    			}
        	}
    		
    		days = daysStr.substring(1, daysStr.length()).split(",");
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return days;
    }
    
    
    /**
     * 获取当前日期前一个月的第一天
     * @return
     */
    public static String getBeforeMounthDay(){
		Date date = new Date();//当前日期
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//格式化对象
		Calendar calendar = Calendar.getInstance();//日历对象
		calendar.setTime(date);//设置当前日期
		calendar.add(Calendar.MONTH, -1);//月份减一
		System.out.println(sdf.format(calendar.getTime()));
    	return sdf.format(calendar.getTime());
    }
    
    
    /**
     * 判断一个日期是否是周末
     * @param startTime
     */
    public static boolean isNotWeekDay(String time){
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    	SimpleDateFormat sdf1 = new SimpleDateFormat("EEEE");
    	boolean flag = false;
    	try {
			Date date = sdf.parse(time);
			String dates = sdf1.format(date);
			System.out.println(dates);
			if(!dates.equals("星期日") && !dates.equals("星期六")){
				flag = true;
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
    	return flag;
    }
    
}

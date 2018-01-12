/**
 *
 * @Title: DateTimeUtils.java
 * @Prject: policy_report
 * @author: yin.hl
 * @date: 2016年9月13日 下午12:57:31 
 * @version: V1.0
 */
package com.bdqn.blog.utils;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;



/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/7
 Time: 12:19
 时间工具类
 */
public final class DateTimeUtils {

	public static String getNowString() throws Exception {
		return convertDate2String(new Date(), "yyyyMMddHHmmss");
	}

	public static Long getNowLong() throws Exception {
		return Long.valueOf(getNowString());
	}

	public static Date convertString2Date(String sdate, String format) throws Exception {
		if (sdate == null || "".equals(sdate.trim())) {
			return null;
		}
		Date date = DateUtils.parseDate(sdate, new String[] { format });
		return date;
	}

	public static String convertDate2String(Date date, String format) throws Exception {
		if (date == null) {
			return "";
		}
		String sdate = DateFormatUtils.format(date, format);
		return sdate;
	}

	public static int getYear(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.get(Calendar.YEAR);
	}

	public static int getMonth(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.get(Calendar.MONTH) + 1;
	}

	public static int getDay(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar.get(Calendar.DAY_OF_MONTH);
	}

	public static final String DEFAULT_FORMAT = "yyyyMMddHHmmss";

	public final static Integer dateToInteger(Date srcDate, String format) throws Exception {

		SimpleDateFormat sf = new SimpleDateFormat(format);

		return Integer.valueOf(sf.format(srcDate));

	}

	public final static Integer dateToInteger(Date srcDate) throws Exception {

		SimpleDateFormat sf = new SimpleDateFormat("yyyyMMdd");

		return Integer.valueOf(sf.format(srcDate));

	}

	public final static Long dateToLong(Date srcDate, String format) throws Exception {

		SimpleDateFormat sf = new SimpleDateFormat(format);

		return Long.valueOf(sf.format(srcDate));

	}

	public final static Long dateToLong(Date srcDate) throws Exception {

		SimpleDateFormat sf = new SimpleDateFormat(DEFAULT_FORMAT);

		return Long.valueOf(sf.format(srcDate));

	}

	public final static String dateToString(Date srcDate, String format) throws Exception {
		SimpleDateFormat sf = new SimpleDateFormat(format);
		return sf.format(srcDate);
	}

	public final static long getTimeDifference(String endTime, String startTime) throws Exception {
		SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
		return (sf.parse(endTime).getTime() - sf.parse(startTime).getTime()) / 1000;
	}

	public final static Date stringToDate(String date, String format) throws ParseException {
		SimpleDateFormat sf = new SimpleDateFormat(format);
		return sf.parse(date);
	}
}

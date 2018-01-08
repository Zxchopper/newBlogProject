package com.bdqn.blog.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * 全局工具类
 * @author fujiawei
 *
 */
public class GlobalUtil {

	/**
	 * 判断是否为空
	 * @return
	 */
	public static boolean isNull(Object param){
		boolean isNull = true;
		if(param!=null){
			String info = String.valueOf(param);
			if(!"".equals(info)){
				isNull = false;
			}
		}
		return isNull;
	}
	
	/**
	 * 判断是否为空
	 * @return
	 */
	public static boolean isTrimNull(Object param){
		boolean isNull = true;
		if(param!=null){
			String info = String.valueOf(param);
			if(!"".equals(info.trim())){
				isNull = false;
			}
		}
		return isNull;
	}
	
	/**
	 * BigDecimal格式化金额
	 * @param pattern
	 * @param bd
	 * @return
	 */
	public static String parseMoney(String pattern,BigDecimal bd){
		DecimalFormat df=new DecimalFormat(pattern);
		    return df.format(bd);
	}
	
	public static void main(String[] args) {
		System.out.println(isNull(""));
	}
}

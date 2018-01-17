package com.bdqn.blog.utils;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 字符串工具类
 * @author fujiawei
 *
 */
public class StringUntils {

	/**
	 * 判断字符串是否是数字
	 * @param
	 *
	 * @return
	 */
	public static boolean isNumeric(String str) {
		for (int i = 0; i < str.length(); i++) {
			System.out.println(str.charAt(i));
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	/**
	 * 脱敏 中间显示的为*
	 * @param s
	 * @param
	 * @param
	 * @return
	 */
	public static String SubString(String s,int frontLength,int lastLength){
		if(s!=null && s.length()>=(frontLength+lastLength)){
			String frontString;
			if(frontLength==0){
				frontString="";
			}else{
				frontString=s.substring(0, frontLength);
			}
			String substring1 = s.substring(s.length() - lastLength);
			int length = s.length() - frontLength - lastLength;
			StringBuffer sb =new StringBuffer();
			for(int i=0;i<length;i++){
				sb.append("*");
			}
			return frontString+sb.toString()+substring1;
		}else{
			return s;
		}
	}

	//字符串数据去重
	public static String[] removeDuplicate (String[] arrayStr) {

		String []  newStr = null;
		if (arrayStr != null) {
			Set<String> set = new HashSet<String>(Arrays.asList(arrayStr));
			int i=0;
			newStr = new String[set.size()];
			for (String str : set) {
				newStr[i] = str;
				i++;
			}
		}
		return newStr;
	}


	//List<String> 转  String[]
	public static String[] listToStrArr (List<String> list) {

		String[] result  = null;

		if (list != null && list.size() > 0 ) {
			result = new String[list.size()];

			for (int j=0; j<list.size(); j++) {
				result[j] = list.get(j);
			}
		}
		return result;
	}

}

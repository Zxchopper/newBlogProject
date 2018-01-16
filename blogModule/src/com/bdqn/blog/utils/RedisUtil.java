package com.bdqn.blog.utils;

import com.alibaba.fastjson.JSON;
import com.bdqn.blog.pojo.BlogGenre;

public class RedisUtil {

    public static <T> T getObject(String str, Class<T> cl){
        try {
            return JSON.parseObject(str,cl);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String getString(Object obj){
        try {
            return JSON.toJSONString(obj);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}

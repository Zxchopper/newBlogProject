package com.bdqn.blog.dao.cache;

import com.bdqn.blog.utils.RedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.List;
import java.util.Set;

@Component
public class RedisCache {

    @Autowired
    private JedisPool jedisPool;

    public Jedis getJedis(){
        return jedisPool.getResource();
    }

    public String hget(String hkey,int id) {
        String key=id+"";
        return jedisPool.getResource().hget(hkey, key);
    }

    public <T> T hget(int id, Object obj, Class<T> cla) {
        Class<?> cl = obj.getClass();
        String objName=cl.getName().substring(cl.getName().lastIndexOf(".")+1, cl.getName().length());
        String hkey=objName;
        String key=id+"";
        String result=jedisPool.getResource().hget(hkey, key);
        return RedisUtil.getObject(result,cla);
    }

    public long hset(Object obj,int id) {
        Class<?> cl = obj.getClass();
        String objName=cl.getName().substring(cl.getName().lastIndexOf(".")+1, cl.getName().length());
        String hkey=objName;
        String key=id+"";
        String value= RedisUtil.getString(obj);
        return jedisPool.getResource().hset(hkey,key,value);
    }

    public long hdel(String hkey, String key){
        return jedisPool.getResource().hdel(hkey, key);
    }

    public void addList(String key,String value){
        jedisPool.getResource().lpush(key,value);
    }

    public List<String> getList(String key,int start,int end){
        return jedisPool.getResource().lrange(key,start,end);
    }

    public void keys(){

        Set<String> keys = jedisPool.getResource().keys("*");
        for (String str:keys) {
            System.out.println(str);
        }

    }
}

package com.bdqn.blog.server;

import com.bdqn.blog.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserServer {
     User getLoginUser(@Param("name") String name, @Param("pwd") String pwd)throws Exception;
}

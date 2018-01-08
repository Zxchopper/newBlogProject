package com.bdqn.blog.dao;

import com.bdqn.blog.entity.User;
import org.apache.ibatis.annotations.Param;


/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/6
 Time: 17:19
 */
public interface UserMapper {
	/**
	 * 通过用户名与密码获取User
	 * @param name,pwd
	 * @return
	 * @throws Exception
	 */

	  User getLoginUser(@Param("name") String name, @Param("pwd") String pwd)throws Exception;

}

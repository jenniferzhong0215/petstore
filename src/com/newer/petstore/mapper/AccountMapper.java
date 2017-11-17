package com.newer.petstore.mapper;

import org.apache.ibatis.annotations.Select;

public interface AccountMapper {

	/**
	 * 登录
	 * 
	 * @param user
	 *            用户名
	 * @return 用户的密码或 null
	 */
	@Select("select password from accounts where name = #{user}")
	String login(String user);

	/**
	 * 检查用户名是否存在
	 * 
	 * @param name
	 * @return
	 */
	@Select("select password from accounts where name=#{name}")
	String checkName(String name);

}

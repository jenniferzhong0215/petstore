package com.newer.petstore.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 控制器的定义（流程的规范化）
 * 
 * @author wtao
 *
 */
public interface Controller {

	/**
	 * 控制器的执行
	 * 
	 * @param request	请求对象（获得用户 HTTP 请求中的数据）
	 * @param response	响应对象
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	String execute(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException;
}

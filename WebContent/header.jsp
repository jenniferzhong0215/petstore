<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<h1>Xxx 宠物店</h1>
	<menu>
		<c:forEach items="${categories}" var="c">
			<li>${c.title}</li>
		</c:forEach>
		<form action="search" method="GET">
			<input type="text" name="keyWords" placeholder="请输入关键字" />
			<input type="submit" value="搜索"/>
		</form>
		<input type="text" id="key" name="keyWords" placeholder="请输入关键字" />
		<button id="btnSearch">搜索</button>
	</menu>
</header>
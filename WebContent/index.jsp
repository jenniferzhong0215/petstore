<%@page import="com.newer.petstore.domain.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.newer.petstore.AppInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		$('#btnSearch').on('click', function() {
			
			$.get(
					'search',
					{keyWords:$('#key').val()}, 
					function(data) {
						//alert(data);
						
						$('table').remove();
						$('#r').text(data);
						
						// DOM
						// todo list
					});
		});
	});
</script>

<link href="css/master.css" rel="stylesheet">

</head>
<body>
	<%@ include file="header.jsp"%>
	<div id="r"></div>
	<table>
		<tr>
			<th>名称</th>
			<th>价格</th>
			<th>库存</th>
			<th>销量</th>
			<th>图片的路径</th>
			<th></th>
		</tr>

		<c:forEach items="${products}" var="p">
			<tr>
				<td>${p.title }</td>
				<td>${p.price }</td>
				<td>${p.quantity }</td>
				<td>${p.salesNum }</td>
				<td><img alt="${p.title }" src="${p.picPath }" width="100px"
					height="100px"></td>
				<td><a href="cart?id=${p.id }">加入购物车</a></td>
			</tr>
		</c:forEach>

	</table>

	<%@ include file="footer.jsp"%>

</body>
</html>
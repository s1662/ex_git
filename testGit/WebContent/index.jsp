<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 INDEX페이지</title>
<style type="text/css">
	table.tb1{
		margin : auto;
		width : 960px;
		color : gray;
		border : 1px solid gray;
	}
</style>
</head>
<body>
<table border=0 class="tb1">
	<tr>
		<td align="center"><br>
			<jsp:include page="menu_top.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td align="center">
			<c:if test="${pagefile ne null }">
			<jsp:include page='${pagefile }'/>
			</c:if>
		</td>
	</tr>
</table>
</body>
</html>
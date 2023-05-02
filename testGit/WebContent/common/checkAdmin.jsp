<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.id ne 'admin' }">
	<script>
		alert('권한이 없습니다!!');
		location.href="${pageContext.request.contextPath }/memberLogin.me";
	</script>
</c:if>
<%-- 
<c:if test="${member.grade ne 'S' }">
	<script>
		alert('권한이 없습니다!!');
		location.href="${pageContext.request.contextPath }/memberLogin.me";
	</script>
</c:if>
--%>
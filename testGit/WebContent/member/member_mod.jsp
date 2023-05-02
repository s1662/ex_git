<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 관리자모드(회원 정보 보기)</title>
<style>
	#memberInfoArea{width : 400px;margin : auto;border : 1px solid gray;}
	table{width : 380px;margin : auto;text-align: center;}
</style>
<script>
function changePW(chk){
	if(chk.checked){
		document.getElementById("dspPWChange").style.display="block";
	}else{
		document.getElementById("dspPWChange").style.display="none";
	}
}

function modifyFormSubmit(f){
	if(f.MEMBER_PWCH.checked){
		if(f.MEMBER_PW.value!=f.MEMBER_PWchk.value){
			alert("비밀번호가 일치하지 않습니다");
			f.MEMBER_PW.value="";
			f.MEMBER_PWchk.value="";
			f.MEMBER_PW.focus();
			return false;
		}
	}
	f.submit();
}
</script>
</head>
<body>
<section id = "memberInfoArea">
<form action="memberModifyAction.me" method="post" name="modifyform" >
	<input type="hidden" name="MEMBER_ID" id="MEMBER_ID" 
		value="${member.MEMBER_ID }">
<table>
	<tr>
		<td>아이디 : </td>
		<td>${member.MEMBER_ID }</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="checkbox" name="MEMBER_PWCH" id="MEMBER_PWCH" 
				onclick="changePW(this)"> 비밀번호변경
		</td></tr>
	<tr><td  colspan="2" align="left">
		<div  id="dspPWChange" style="display:none">
		<table>
		<tr>
		<td>비밀번호 : </td>
		<td><input type="password" name="MEMBER_PW" id="MEMBER_PW"></td></tr>
		<tr>
		<td>비밀번호 확인 : </td>
		<td><input type="password" name="MEMBER_PWchk" id="MEMBER_PWchk"></td>
		</tr>
		</table></div>
	</td></tr>
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="MEMBER_NAME" id="MEMBER_NAME" 
			value="${member.MEMBER_NAME}"></td>
	</tr>
	<tr>
		<td>나이 : </td>
		<td><input type="text" name="MEMBER_AGE" maxlength="2" 
				id = "MEMBER_AGE" value="${member.MEMBER_AGE}"/></td>
	</tr>
	<tr>
		<td>성별 : </td>
		<td>
		<c:if test="${member.MEMBER_GENDER eq '남'}">
			<input type="radio" name="MEMBER_GENDER" value="남" 
				checked id = "MEMBER_GENDER"/>남자
			<input type="radio" name="MEMBER_GENDER" value="여"/>여자
		</c:if>
		<c:if test="${member.MEMBER_GENDER eq '여'}">
			<input type="radio" name="MEMBER_GENDER" value="남"  
				id = "MEMBER_GENDER"/>남자
			<input type="radio" name="MEMBER_GENDER" value="여" checked/>여자
		</c:if>
		</td>
	</tr>
	<tr>
		<td>이메일 주소 : </td>
		<td><input type="text" name="MEMBER_EMAIL" id = "MEMBER_EMAIL" 
				value="${member.MEMBER_EMAIL}"/></td>
	</tr>
	<tr>
		<td colspan=2>
		<a href="javascript:modifyFormSubmit(modifyform)">정보수정</a>&nbsp;&nbsp;
		<a href="javascript:modifyform.reset();changePW(MEMBER_PWCH)">다시작성</a>&nbsp;&nbsp;
		<a href="memberListAction.me">리스트로 돌아가기</a>
		</td>
	</tr>
</table>
</form>
</section>
</body>
</html>
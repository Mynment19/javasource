<%@page import="user.domain.LoginDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 
	//if(5<10){
	// 	out.print("<h3>5는 10보다 작다</h3>");
	//}	
%>


<c:if test="${5 < 10}">
	<h3>5는 10보다 작다</h3>
</c:if>

<c:if test="${6 + 3 == 9}">
	<h3>6 + 3 = 9</h3>
</c:if>


<c:choose>
	<c:when test="${5+10 == 50 }">
		<h3>5+10 == 50이다</h3>
	</c:when>
	<c:otherwise>
		<h3>5+10 == 50이 아니다</h3>
	</c:otherwise>
</c:choose>>	
<%
	List<LoginDTO> loginDTO = (List<LoginDTO>)request.getAttribute("loginDTO");

	for(LoginDTO dto : loginDTO){
		out.print("아이디"+dto.getUserId()+"<br>");
		out.print("비밀번호"+dto.getPassword()+"<br>");
		out.print("<hr/>");
	}
	
%>


<table>
	<tr>
	<th>아이디</th>
	<th>비밀번호</th>
	</tr>
	<c:forEach var="dto" items="${loginDTO}">
		<tr>${dto.uesrId}</tr>
		<tr>${dto.password }</tr>
	</c:forEach>
</table>



</body>
</html>
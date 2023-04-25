<%@page import="java.util.ArrayList"%>
<%@page import="user.domain.LoginDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



<%
	List<LoginDTO> loginDTO = new ArrayList();
	
	loginDTO.add(new LoginDTO("hong123","12345"));
	loginDTO.add(new LoginDTO("hong123","12346"));
	loginDTO.add(new LoginDTO("hong123","12347"));
	loginDTO.add(new LoginDTO("hong123","12348"));
	loginDTO.add(new LoginDTO("hong123","12349"));
	loginDTO.add(new LoginDTO("hong123","12340"));

	request.setAttribute("loginDTO", loginDTO);
	pageContext.forward("jstlTest.jsp");


%>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>게시글 목록</title>
</head>
<body>
<h2>ModelAndView 테스트 페이지입니다.</h2>
<br>
<h4>list Test : ${ObjectTest}</h4>
<h4>Object Test : ${listTest}</h4>
<br>
<br>
<c:forEach var="listTest" items="${listTest}">
	${listTest} <br>
</c:forEach>
</body>
</html>

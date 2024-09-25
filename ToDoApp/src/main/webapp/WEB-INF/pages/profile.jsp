<%@page import="com.raj.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Member m=(Member)request.getAttribute("member");
	%>
	<h1>Hello <%= m.getFname() %></h1>
</body>
</html>
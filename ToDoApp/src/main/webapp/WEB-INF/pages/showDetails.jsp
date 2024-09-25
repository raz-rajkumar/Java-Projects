<%@page import="com.raj.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDoApp</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<style>
body {
	height: 100vh;
	background: linear-gradient(to top left, rgba(0, 255, 0, 0.242),
		rgba(255, 166, 0, 0.242), rgba(0, 255, 255, 0.184));
	display: flex;
	padding-top: 30px;
	flex-direction: column;
	align-items: center;
}

nav {
	background: linear-gradient(to top right, rgba(255, 166, 0, 0.363),
		rgba(0, 0, 255, 0.327), rgba(255, 192, 203, 0.453),
		rgba(255, 0, 0, 0.44));
	height: 50px;
	width: 98%;
	display: flex;
	align-items: center;
	justify-content: space-around;
	position: absolute;
}

.main {
	height: 200px;
	width: 450px;
	background-color: rgba(85, 69, 69, 0.145);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	margin-top: 100px;
	border-radius: 20px;
	box-shadow: 15px 15px 50px rgba(0, 0, 0, 0.572);
}
</style>
<body align="center">
	<nav>
		<div id="logo">
			<h3>
				To<span>Do</span> App
			</h3>
		</div>
		<div id="login">
			<a href="logout" id="anchor"
				class="btn btn-danger">LogOut</a><b>
				<%=(String)request.getAttribute("name") %></b>
				
		</div>
	</nav>
	<div class="main">
	<%
	Member member = (Member) request.getAttribute("member");
	%>
	<h1>
		Hello
		<%=member.getFname()%></h1>
	<br>
	<form:form action="showTasks" method="post" modelAttribute="member" >
		<form:hidden path="username" />
		<input type="submit" value="Show Tasks" class="btn btn-outline-success">
	</form:form>
	</div>
</body>
</html>
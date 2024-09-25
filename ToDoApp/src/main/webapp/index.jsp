<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="./WEB-INF/pages/style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<style>
body {
	height: 100vh;
	/* background: url("/background.jpg"); */
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	padding-top: 30px;
	flex-direction: column;
	align-items: center;
	
}
nav{
	background:linear-gradient(to top right, rgba(255, 166, 0, 0.363),rgba(0, 0, 255, 0.327),rgba(255, 192, 203, 0.453),rgba(255, 0, 0, 0.44));
	height: 50px;
	width: 98%;
	display: flex;
	align-items: center;
	justify-content: space-around;
	padding-left: 20px;
	padding-right: 20px;
	position: absolute;
}
</style>
<body>
	<nav>
		<div id="logo"><h3>To<span>Do</span> App</h3></div>
		<div id="login">
			<a href="login" id="anchor" class="btn btn-success">LogIn</a>
			<a href="signup" id="anchor" class="btn btn-dark">SignUp</a>
		</div>
	</nav>
	<div>
		
	</div>
</body>
</html>
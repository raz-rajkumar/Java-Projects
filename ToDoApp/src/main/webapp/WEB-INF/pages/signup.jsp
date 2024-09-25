<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Register</title>
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
	height: 500px;
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

form {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

</style>
<body>
	<nav>
		<div id="logo">
			<h3>
				To<span>Do</span> App
			</h3>
		</div>
		<div id="login">
			<a href="login" id="anchor" class="btn btn-success">Login</a>
		</div>
	</nav>
	<div class="main">
	<h3>Registraion Form</h3><hr>

	<form:form action="register" method="post" modelAttribute="member">
		<table >
			
			<tr>
				<td><b>Enter First Name</b></td>
				<td class="input"><form:input path="fname" class="form-control"
					id="floatingInput" placeholder="First Name"/></td>
			</tr>
			<tr>
				<td><b>Enter Last Name</b></td>
				<td class="input"><form:input path="lname" class="form-control"
							id="floatingInput" placeholder="Last Name"/></td>
			</tr>
			<tr>
				<td><b>Enter Mail Id</b></td>
				<td class="input"><form:input path="mail" class="form-control"
							id="floatingInput" placeholder="example@gmail.com"/></td>
			</tr>
			<tr>
				<td><b>Enter Phone number</b></td>
				<td class="input"><form:input path="phno" class="form-control"
							id="floatingInput" placeholder="Phone Number"/></td>
			</tr>
			<tr>
				<td><b>Enter username</b></td>
				<td class="input"><form:input path="username" class="form-control"
							id="floatingInput" placeholder="UserName"/></td>
			</tr>
			<tr>
				<td><b>Enter password</b></td>
				<td class="input"><form:input path="password" class="form-control"
							id="floatingInput" placeholder="Min- 4 character"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="REGISTER" class="btn btn-secondary"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><b>Already Registered ? <a
					href="login">Click here </a>to Login</b>
				</td>
			</tr>
		</table>
	</form:form>
	</div>
</body>
</html>
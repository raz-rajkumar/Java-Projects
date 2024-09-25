<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<script type="text/javascript">
	function cancel() {
		if (confirm("Do you want to Cancel?")) {
			document.frm.action = "cancel";
			document.frm.submit();
		}
	}
</script>
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
	height: 300px;
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
			<a href="addTask" class="btn btn-warning">Add
				Task To Do</a> <a href="logout" id="anchor" class="btn btn-danger">LogOut</a><b>
				<%=(String)request.getAttribute("name") %></b>

		</div>
	</nav>
	<div class="main">
		<h3>Update Task</h3>
		<hr>
		<form:form name="frm" action="updateTask" method="post" modelAttribute="task">
			<table>
				<tr>
					<form:hidden path="username" />
					<form:hidden path="id" />
					<td><b>Task Description</b></td>
					<td><form:input path="task" class="form-control"
							id="floatingInput" /></td>
				</tr>
				<tr>
					<td><b>Target Date</b></td>
					<td><form:input path="date" class="form-control"
							id="floatingInput" /></td>
				</tr>
				<tr>
					<td><b>Enter Task Status</b></td>
					<td><form:select path="status" class="form-select"
							aria-label="Default select example">
							<option selected>Open this select menu</option>
							<form:option value="Not Done"></form:option>
							<form:option value="In Progress"></form:option>
							<form:option value="Completed"></form:option>
						</form:select></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br><input type="submit"
						value="UPDATE" class="btn btn-primary"><input type="button"
						value="CANCEL" class="btn btn-secondary"
						onclick="cancel()"></td></td>
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>
<%@page import="com.raj.model.Member"%>
<%@page import="com.raj.model.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDo List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	
<script type="text/javascript">
function deleteTask(id) {
	if (confirm("Are You sure to delete ?")) {
		document.frm.id.value = id;
		document.frm.action = "deleteTask";
		document.frm.submit();
		/*
		document.getElementById('taskForm').action = "deleteTask";
        document.getElementById('taskId').value = id;        
        document.getElementById('taskForm').submit(); */
	}
}
function editTask(id) {
	if (confirm("Do you want to edit ?")) {
		document.frm.id.value = id;
		document.frm.action = "editTask";
		document.frm.submit();
	}
	
}
</script>
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
	justify-content: space-evenly;
	position: absolute;
}

.main {
	width: 90%;
	background-color: rgba(85, 69, 69, 0.145);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	margin-top: 100px;
	border-radius: 20px;
	box-shadow: 15px 15px 50px rgba(0, 0, 0, 0.572);
}

td {
	width: 250px;
}
#login
{
	display: flex;
	flex-direction: row;
}

</style>
<body align="center">
	<%
	Member m=(Member)request.getAttribute("member");
	String username=(String) request.getAttribute("name");
	%>
	<nav>
		<div id="logo">
			<h3>
				To<span>Do</span> App
			</h3>
		</div>
		<div id="login">
				<form action="profile" method="post">
				<input type="submit" value="<%= username%>" class="btn btn-secondary">
				</form>
		</div>
		<div id="login">
			<a href="addTask" class="btn btn-warning">Add Task To Do</a> <a
				href="logout" id="anchor" class="btn btn-danger">LogOut</a>
		</div>
	</nav>
	<div class="main">
		<form name="frm" method="post">
			<%
			List<Task> t = (List<Task>) request.getAttribute("tasks");
			if (t.isEmpty()) {
			%>
			<h1>No Task</h1>

			<%
			} else {
			int i = 1;
			%>
			<table class="table table-success">
				<h1>Your Tasks</h1>
				<tr>
					<th>Serial No.</th>
					<th>Task</th>
					<th>Target Date</th>
					<th>Task Status</th>
					<th colspan="2" align="center">Action</th>
				</tr>
				<%
				for (Task tk : t) {
				%>
				<input type="hidden" name="id" value="<%=tk.getId()%>">
				<tr>
					<td><%=i++%></td>
					<td><%=tk.getTask()%></td>
					<td><%=tk.getDate()%></td>
					<td><%=tk.getStatus()%></td>
					<td><input type="button" 
						onclick="editTask(<%=tk.getId()%>)" value="EDIT" class="btn btn-info" ></td>
					<td><input type="button" value="DELETE"
						onclick="deleteTask('<%=tk.getId()%>')" class="btn btn-danger"></td>
						
				</tr>

				<%
				}
				%>
			</table>
			<%
			}
			%>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Emplloyee</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
	<link href="
https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css
" rel="stylesheet">
</head>
<body>
	<nav class="navigation">
		<h2>Employee List</h2>
		<div>
		<a href="ems" class="btn btn-outline-dark">HOME</a>
	</nav>
	<div class="add">
			<a href="home" class="cancel" id="btnn-cancel"><i class="bi bi-x-circle"></i></a>
			<form:form method="post" action="updateEmployee" modelAttribute="employee">
		<table class="table">
		<form:hidden path="id"/>
			<tr>
				<td><b>Enter Name</b></td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td><b>Enter Address</b></td>
				<td><form:input path="address"/></td>
			</tr>
			<tr>
				<td><b>Enter Salary</b></td>
				<td><form:input path="salary"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="SUBMIT" class="btn btn-primary"/></td>
			</tr>
		</table>
	</form:form>
		</div>
</body>
</html>
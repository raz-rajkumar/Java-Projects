<%@page import="java.util.Date"%>
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
<title>EMS-Home Page</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/index.js"></script>
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
		<a href="#" class="btn btn-warning" id="btnn-add">Add Employee Details</a></div>
	</nav>
	<div class="show_container">
		<form name="frm">
		<input type="hidden" name="emp_id">
			<fmt:setBundle basename="labels" />
			<table border="1" width="100%">
				<tr align="center">
					<th id="dt" colspan="6"><b>Date: </b> <fmt:formatDate
							value="<%=new Date()%>" dateStyle="long" /></th>
				</tr>
				<tr>
					<th><fmt:message key="emp.show.label.id" /></th>
					<th><fmt:message key="emp.show.label.name" /></hd>
					<th><fmt:message key="emp.show.label.address" /></th>
					<th><fmt:message key="emp.show.label.salary" /></th>
					<th><fmt:message key="emp.show.label.editAction" /></th>
					<th><fmt:message key="emp.show.label.deleteAction" /></th>
				</tr>
				<c:if test="${fn:length(emps) == 0 }">
				<tr>
					<td colspan="6" align="center"><h1>No Employees found!!!</h1></td>
				</tr>
				</c:if>
				<c:if test="${fn:length(emps)!=0 }">
				<c:forEach items="${emps}" var="emp">
					<tr id="td_bg">
						<td>${emp.id}</td>
						<td>${emp.name}</td>
						<td>${emp.address}</td>
						<td>${emp.salary}</td>
						<td><a class="btn btn-primary" onclick="editEmployee('${emp.id}')"><fmt:message key="emp.edit.logo" /></td>
						<td><a class="btn btn-danger" onclick="deleteEmployee('${emp.id}')" /><fmt:message key="emp.delete.logo" /></td>

					</tr>
				</c:forEach>
				</c:if>
			</table>
		</form>
	</div>
	<div class="popup">
		<div class="add">
			<a class="cancel" id="btnn-cancel"><i class="bi bi-x-circle"></i></a>
			<form:form method="post" action="saveEmployee" modelAttribute="employee">
		<table class="table">
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
	</div>
	
	<script type="text/javascript">
	document.getElementById('btnn-add').addEventListener('click', function(){
		document.querySelector('.popup').style.display="flex";
	});
document.getElementById('btnn-cancel').addEventListener('click', function(){
		document.querySelector('.popup').style.display="none";
	});
	</script>
</body>
</html>
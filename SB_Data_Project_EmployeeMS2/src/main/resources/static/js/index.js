
function deleteEmployee(id) {
	if (confirm("Do you want to delete (Y/N) ?")) {
		document.frm.emp_id.value = id;
		document.frm.action = "deleteEmployee";
		document.frm.method = "POST";
		document.frm.submit();
	}
}
function editEmployee(id) {
	if (confirm("Do You want to edit?")) {
		document.frm.emp_id.value = id;
		document.frm.action = "editEmployee";
		document.frm.method = "POST";
		document.frm.submit();
	}
}
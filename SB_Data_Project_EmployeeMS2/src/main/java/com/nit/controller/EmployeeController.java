package com.nit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.entity.Employee;
import com.nit.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;

import static com.nit.constant.Constant.INDEX_URL;
import static com.nit.constant.Constant.INDEX_VIEW;
import static com.nit.constant.Constant.HOME_URL;
import static com.nit.constant.Constant.HOME_VIEW;
import static com.nit.constant.Constant.REDIRECT_HOME;
import static com.nit.constant.Constant.SAVE_URL;
import static com.nit.constant.Constant.DELETE_URL;
import static com.nit.constant.Constant.EDIT_URL;
import static com.nit.constant.Constant.EDIT_VIEW;
import static com.nit.constant.Constant.UPDATE_URL;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;

	@RequestMapping(INDEX_URL)
	public String index() {
		return INDEX_VIEW;
	}

	@RequestMapping(HOME_URL)
	public String home(Model model) {
		model.addAttribute("emps", service.getAllEmployees());
		model.addAttribute(new Employee());
		return HOME_VIEW;
	}

	@RequestMapping(SAVE_URL)
	public String saveEmployee(@ModelAttribute Employee emp) {
		service.saveEmployee(emp);
		return REDIRECT_HOME;
	}

	@RequestMapping(DELETE_URL)
	public String deleteEmployee(HttpServletRequest request) {
		String empId = request.getParameter("emp_id");
		service.deleteEmployee(Integer.valueOf(empId));
		return REDIRECT_HOME;
	}

	@RequestMapping(EDIT_URL)
	public String editEmployee(HttpServletRequest req, Model model) {
		Employee emp = service.getEmployee(Integer.valueOf(req.getParameter("emp_id")));
		model.addAttribute(emp);
		return EDIT_VIEW;
	}

	@RequestMapping(UPDATE_URL)
	public String updateEmployee(@ModelAttribute Employee emp) {
		service.updateEmployee(emp);
		return REDIRECT_HOME;
	}
}

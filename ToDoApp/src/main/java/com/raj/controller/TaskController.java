package com.raj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.raj.dao.MemberDAO;
import com.raj.dao.TaskDAO;
import com.raj.model.Member;
import com.raj.model.Task;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TaskController {
	@Autowired
	@Qualifier("dao2")
	private TaskDAO taskdao;
	@Autowired
	@Qualifier("dao1")
	private MemberDAO memdao;
	private String name;

	@RequestMapping("/showTasks")
	public String showTasks(@ModelAttribute Member member, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String uname = member.getUsername();
		session.setAttribute("uname", uname);

		Member m = memdao.view(uname);
		name = m.getFname() + " " + m.getLname();
		List<Task> tasks = taskdao.showTasks(uname);

		model.addAttribute("tasks", tasks);
		model.addAttribute("name", name);
		model.addAttribute("member", m);
		return "showTask";
	}

	@RequestMapping("/addTask")
	public String addTask(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String uname = (String) session.getAttribute("uname");

		Task t = new Task();
		t.setUsername(uname);
		model.addAttribute("task", t);
		return "addTask";
	}

	@RequestMapping("/saveTask")
	public String saveTask(@ModelAttribute Task task, Model model, HttpServletRequest request) {
		taskdao.addTask(task);

		HttpSession session = request.getSession();
		String uname = (String) session.getAttribute("uname");

		Member m = new Member();
		m.setUsername(uname);
		model.addAttribute("member", m);
		model.addAttribute("name", name);
		model.addAttribute("msg", "Task Added Successfully...");
		return "success";
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate(); // Clear session
		return "redirect:login";
	}

	@RequestMapping("/deleteTask")
	public String deleteTask(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String uname = (String) session.getAttribute("uname");

		taskdao.deleteTask(uname, Integer.parseInt(req.getParameter("id")));
		Member m = new Member();
		m.setUsername(uname);
		model.addAttribute("member", m);
		model.addAttribute("msg", "Task Deleted Successfully...");
		return "success";
	}

	@RequestMapping("/editTask")
	public String editTask(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String uname = (String) session.getAttribute("uname");

		Task task = taskdao.viewTask(uname, Integer.parseInt(req.getParameter("id")));
		model.addAttribute("uname", uname);
		model.addAttribute("task", task);
		return "editTask";
	}

	@RequestMapping("/updateTask")
	public String updateTask(@ModelAttribute Task task, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String uname = (String) session.getAttribute("uname");

		taskdao.updateTask(task);
		Member m = new Member();
		m.setUsername(uname);
		model.addAttribute("member", m);
		model.addAttribute("name", name);
		model.addAttribute("msg", "Task Updated Successfully...");
		return "success";
	}

	@RequestMapping("/cancel")
	public String cancel(HttpServletRequest req, Model model) {
		return "redirect:show";
	}

	@RequestMapping("/show")
	public String show(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String uname = (String) session.getAttribute("uname");
		Member m = memdao.view(uname);
		name = m.getFname() + " " + m.getLname();
		List<Task> tasks = taskdao.showTasks(uname);
		model.addAttribute("tasks", tasks);
		model.addAttribute("name", name);
		return "showTask";
	}
}

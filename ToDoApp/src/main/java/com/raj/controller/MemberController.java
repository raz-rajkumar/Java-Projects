package com.raj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.raj.dao.MemberDAO;
import com.raj.model.Member;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MemberController {
	@Autowired
	@Qualifier("dao1")
	private MemberDAO mem;
	private String name=null;
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("member", new Member());
		return "login";
	}

	@RequestMapping("/signup")
	public String signup(Model model) {
		model.addAttribute("member", new Member());
		return "signup";
	}

	@RequestMapping("/register")
	public String register(@ModelAttribute Member member) {
		mem.addMember(member);
		return "redirect:login";
	}

	@RequestMapping("/logging")
	public String logging(@ModelAttribute Member member, Model model) {
		Member m = mem.viewMember(member.getUsername(), member.getPassword());
		if (m == null)
			return "login";
		else {
			model.addAttribute("member", m);
			name=m.getFname()+" "+m.getLname();
			model.addAttribute("name",name);
			return "showDetails";
		}
	}
	
	
	@RequestMapping("/profile")
	public String profile(HttpServletRequest req,Model model)
	{
		Member m=mem.view(req.getParameter("uname"));
		model.addAttribute("member",m);
		return "profile";
	}
	
	
}

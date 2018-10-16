package com.bru.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.MemberDao;
import com.bru.model.MemberBean;


@Controller
public class MemberController {

	@Autowired
	MemberDao memberDao;
//	@RequestMapping(path = "/login", method = RequestMethod.GET)
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("messessError", "");
		return "login";
	}

	@RequestMapping("/welcome")
	public String authenLogin(String email, String password, HttpServletRequest request, Model model)
			throws SQLException {
		String authen = "";
		MemberBean bean = new MemberBean();
		bean = memberDao.login(email, password);
		request.getSession().setAttribute("login", bean);
		if (bean.getEmail() != null) {
//			if (bean.getRole().equals("พนักงาน")) {
//				authen = "index1";
//			} else if (bean.getRole().equals("")) {
//				authen = "hello";
//			}
			authen = "index1";
		} else {
			model.addAttribute("messessError", "F");
			authen = "login";
		}
		return authen;
	}

	@RequestMapping("/logout")
	private String logout(HttpServletRequest request, Model model) {
		request.getSession().removeAttribute("login");
		model.addAttribute("messessError", "L");
		return "login";
	}

	// insert
	@RequestMapping(value = "/insertmember")
	public String insertmember(@RequestBody MemberBean memberBean) throws Exception {
		memberDao.insert(memberBean);
		return "membersetting";
	}
	
	@RequestMapping(value = "/updatemember")
	public String updateproblem(MemberBean memberBean) throws SQLException {
		memberDao.update(memberBean);
		return "membersetting";
	}
	
	@RequestMapping(value = "/updateprofile")
	public String updateprofile(MemberBean memberBean) throws SQLException {
		memberDao.update(memberBean);
		return "profile";
	}
}

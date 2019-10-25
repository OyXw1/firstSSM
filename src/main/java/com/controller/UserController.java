package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login(User user, Model model, HttpSession session) {
		User loginUser = userService.login(user);
		if (loginUser != null) {
			session.setAttribute("user", loginUser);
			return "redirect:allUser";
		} else {
			session.setAttribute("message", "请先登录");
			return "redirect:loginForm.jsp";
		}
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm.jsp";
	}

	@RequestMapping("allUser")
	public String allUser(HttpServletRequest request) {
		List<User> userList = userService.selectAll();
		request.setAttribute("userList", userList);
		return "userList";
	}

	@RequestMapping("toAddUser")
	public String toAddUser() {
		return "addUser";
	}

	@RequestMapping("addUser")
	public String addUser(User user, HttpServletRequest request) {
		userService.addUser(user);
		List<User> userList = userService.selectAll();
		request.setAttribute("userList", userList);
		return "userList";
	}

	@RequestMapping("toUpdateUser")
	public String toUpdateUser(@Param("id") int id, HttpServletRequest request, Model model) {
		model.addAttribute("user_id", id);
		return "updateUser";
	}

	@RequestMapping("updateUser")
	public String updateUser(User user, HttpServletRequest request) {
		userService.addUser(user);
		List<User> userList = userService.selectAll();
		request.setAttribute("userList", userList);
		return "userList";
	}

	@RequestMapping("deleteUser")
	public String deleteUser(@Param("id") int id, HttpServletRequest request) {
		userService.deleteUser(id);
		List<User> userList = userService.selectAll();
		request.setAttribute("userList", userList);
		return "userList";
	}

}

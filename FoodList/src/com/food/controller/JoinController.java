package com.food.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.food.service.MemberService;
import com.food.vo.MemberVO;


public class JoinController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		MemberVO member = new MemberVO(name , id, pwd, email);
		
		MemberService service = MemberService.getInstance();
		service.join(member);
		
		HttpUtil.forward(request, response, "/home.jsp");

	}

}

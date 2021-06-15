package com.food.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.food.service.FoodService;


public class SearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String recipe_name = request.getParameter("recipe_name");
		String path = null;
		
		boolean result =  FoodService.getInstance().SearchFood(recipe_name);
		String msg=null;
		if(result==false)
			msg="false";
		else
			msg="true";
		
		
		
		/* if(food.equals("다이어트식"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("recipe_name",recipe_name);
			path="/result/Menu01Output.jsp";
		}
		else if(food.equals("해장식")) 
		{
			path="/Menu01.jsp"; 
		}
		else if(food.equals("영양식")) 
		{
			path="/Menu01.jsp"; 
		}
		
		else if(food.equals("일반식")) 
		{
			path="/Menu01.jsp"; 
		}
		else if(food.equals("간편식")) 
		{
			path="/Menu01.jsp"; 
		} */
		
		
		request.setAttribute("msg", msg);
		request.setAttribute("rRecipe_name", recipe_name);
	
		
     
		
		HttpUtil.forward(request, response, "/result/Menu01Output.jsp");
	}

}

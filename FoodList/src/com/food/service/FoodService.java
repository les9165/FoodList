package com.food.service;

import java.util.ArrayList;

import com.food.dao.FoodDao;
import com.food.vo.FoodVO;

public class FoodService {
	private static FoodService service = new FoodService();
	private FoodService() {};
	public static FoodService serviceGetInstance()
	{
		return service;
	}
	FoodDao dao = FoodDao.getInstance();
	
	public ArrayList<FoodVO> getFoodList()
	{
		return dao.getFoodList();
	}
	
	public boolean SearchFood(String recipe_name) {
		// TODO Auto-generated method stub
		return dao.SearchFood(recipe_name);
	}
	public static FoodService getInstance() {
		// TODO Auto-generated method stub
		return null;
	}
}


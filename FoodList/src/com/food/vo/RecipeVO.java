package com.food.vo;

public class RecipeVO {
	private int recipe_id;
	private String recipe_name;
	private String recipe_type;
	private int ingredient_id;
	
	private FoodVO foodVO;
	
	public int getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(int tRecipe_id) 
	{
		this.recipe_id = tRecipe_id;
	}
	public String getRecipe_name()
	{
		return recipe_name;
	}
	public void setRecipe_name(String tRecipe_name)
	{
		this.recipe_name = tRecipe_name;
	}
	public String getRecipe_type()
	{
		return recipe_type;
	}
	public void setRecipe_type(String tRecipe_type)
	{
		this.recipe_type = tRecipe_type;
	}
	
	public FoodVO getFoodVO() {
		if(foodVO == null)
			foodVO = new FoodVO();
		return foodVO;
	}

	public void setFoodVO(FoodVO foodVO) {
		this.foodVO = foodVO;
	}
}

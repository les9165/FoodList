package com.food.vo;

public class MemberVO {
	private String id;
	private String pwd;
	private String name;
	private String email;
	
	
	public MemberVO(String name2, String id2, String pwd2, String email2) {
		// TODO Auto-generated constructor stub
	}
	public String getId()
	{
		return id;
	}
	public void setId(String tId)
	{
		this.id = tId;
	}
	public String getPwd()
	{
		return pwd;
	}
	public void setPwd(String tPwd)
	{
		this.pwd = tPwd;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String tName)
	{
		this.name = tName;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String tEmail)
	{
		this.email = tEmail;
	}
}


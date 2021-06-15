package com.food.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.food.vo.FoodVO;
import com.food.vo.MemberVO;


public class FoodDao {
	private static FoodDao dao = new FoodDao();
	public List getRecipeWithIngredient;
	private FoodDao() {}
	
	public static FoodDao getInstance()
	{
		return dao;
	}
	
	public Connection connect()
	{
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/foodlist";
			String user = "root";
			String pwd = "0331";
			conn = DriverManager.getConnection(url,user,pwd);
		}
		catch(Exception e)
		{
			System.out.println("Connenction 오류 : " + e);
		}
		return conn;
	}
	public void close(Connection conn, PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.println("close error"+ e);
			}
		}
		if(conn != null)
		{
			try {
				conn.close();
			}catch(Exception e)
			{
				System.out.println("Conn close error" + e);
			}
		}
	}
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
	{
		if(rs != null)
		{
			try {
				rs.close();
			}catch(Exception e) {
				System.out.println("rs close error" + e);
			}
		}
		close(conn,pstmt);
	}
		
	
	public void memberInsert(MemberVO member)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try 
		{
			conn = connect();
			pstmt = conn.prepareStatement("Insert into member values(?,?,?,?);");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.executeUpdate();
		
		}catch(Exception e)
		{
			System.out.println("MDAO:mInsert"+e);
		}finally {
			close(conn,pstmt);
		}
	}
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from member where id = ? and pwd = ?;" );
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
			}
			else
				result = false;
		}catch(Exception e)
		{
			System.out.print("login error" + e);
		}
		finally
		{
			close(conn,pstmt);
		}

		
		return result;
	}
	

	public ArrayList<FoodVO> getFoodList() {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertFood(FoodVO vo, String image) {
		// TODO Auto-generated method stub
		
	}

/*	public ArrayList<FoodVO> getFoodList() {
		// TODO Auto-generated method stub
		return null;
	}*/

	public boolean SearchFood(String recipe_name) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
	
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select recipe_name from recipe r "
					+ "	inner join ingredient_index i"
					+ "on i.recipe_id = r.recipe_id"
					+ "where i.ingredient_id IN(?,?)"
					+ "GROUP BY recipe_name"
					+ "HAVING COUNT(*) = 2;");
			pstmt.setString(2, recipe_name);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
				
			}}catch(Exception e) {
				System.out.println("Msearch error");
			}finally
			{
				close(conn,pstmt,rs);
			}
			return result;
		}

	public void join(MemberVO member) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?);");
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getId());
			pstmt.setString(3, member.getPwd());
			pstmt.setString(4, member.getEmail());
			pstmt.executeUpdate();
		}catch(Exception e)
		{
			System.out.print("join error" + e);
		}
		finally
		{
			close(conn,pstmt);
		}
		
	}
	}
	




package com.food.service;

import com.food.dao.FoodDao;
import com.food.vo.MemberVO;

public class MemberService {
	private static MemberService service = new MemberService();
	private MemberService() {};
	private FoodDao dao = FoodDao.getInstance();

	public static MemberService getInstance() {
		// TODO Auto-generated method stub
		return service;
	}
	

	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		return dao.login(id, pwd);
	}


	public void join(MemberVO member) {
		// TODO Auto-generated method stub
		dao.join(member);
	}

}

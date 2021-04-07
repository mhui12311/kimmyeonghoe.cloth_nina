package kimmyeonghoe.cloth.user.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimmyeonghoe.cloth.user.dao.map.UserMap;
import kimmyeonghoe.cloth.user.domain.User;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired private UserMap userMap;

	@Override
	public User login(String userId, String userPw) {
		return userMap.login(userId, userPw);
	}
	
	@Override
	public int insertUser(User user) {
		return userMap.insertUser(user);
	}
	
	@Override
	public String selectId(String userId) {
		return userMap.selectId(userId);
	}
}

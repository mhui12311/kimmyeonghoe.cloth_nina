package kimmyeonghoe.cloth.user.dao;

import kimmyeonghoe.cloth.user.domain.User;

public interface UserDao {
	User login(String userId, String userPw);
	int insertUser(User user);
	String selectId(String userId);
}

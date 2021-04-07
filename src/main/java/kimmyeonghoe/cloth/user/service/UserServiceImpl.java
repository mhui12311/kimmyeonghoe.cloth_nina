package kimmyeonghoe.cloth.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimmyeonghoe.cloth.user.dao.UserDao;
import kimmyeonghoe.cloth.user.domain.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired private UserDao userDao;

	@Override
	public User chkUser(String userId, String userPw) {
		return userDao.login(userId, userPw);
	}
	
	@Override
	public int join(User user) {
		return userDao.insertUser(user);
	}
	
	@Override
	public String chkId(String userId) {
		return userDao.selectId(userId);
	}
}

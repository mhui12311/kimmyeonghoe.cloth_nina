package kimmyeonghoe.cloth.user.dao.map;

import org.apache.ibatis.annotations.Param;

import kimmyeonghoe.cloth.user.domain.User;

public interface UserMap {
	User login(@Param("userId") String userId, @Param("userPw") String userPw);
	int insertUser(User user);
	String selectId(@Param("userId") String userId);
}

package kimmyeonghoe.cloth.user.service;

import kimmyeonghoe.cloth.user.domain.User;

public interface UserService {
	User chkUser(String userId, String userPw);
	int join(User user);
	String chkId(String userId);
/*	
	int getNotices();
	int addNotice(String title, String content, LocalDate regDate);
//	int fixNotice(Notice notice);
	int delNotice(@PathVariable int noticeNum);
*/
}

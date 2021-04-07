package kimmyeonghoe.cloth.admin.notice.dao;

import java.util.List;

import kimmyeonghoe.cloth.admin.notice.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotices();
	int insertNotice(Notice Notice);
	int updateNotice(Notice Notice);
	int deleteNotice(int NoticeNum);
	Notice searchNotice(int NoticeNum);
}

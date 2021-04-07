package kimmyeonghoe.cloth.admin.notice.dao.map;

import java.util.List;

import kimmyeonghoe.cloth.admin.notice.domain.Notice;

public interface NoticeMap {
	List<Notice> selectnotices();
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int noticeNum);
	Notice searchNotice(int noticeNum);
}

package kimmyeonghoe.cloth.admin.notice.dao;

import java.util.List;

import kimmyeonghoe.cloth.admin.notice.domain.AdminNotice;

public interface AdminNoticeDao {
	List<AdminNotice> selectNotices();
	int insertNotice(AdminNotice notice);
	int updateNotice(AdminNotice notice);
	int deleteNotice(int noticeNum);
}

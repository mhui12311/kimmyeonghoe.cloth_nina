package kimmyeonghoe.cloth.admin.notice.service;

import java.util.List;

import kimmyeonghoe.cloth.admin.notice.domain.AdminNotice;

public interface AdminNoticeService {
	List<AdminNotice> getNotices();
	int addNotice(AdminNotice notice);
	int fixNotice(AdminNotice notice);
	int delNotice(int noticeNum);
}

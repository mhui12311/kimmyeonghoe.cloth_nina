package kimmyeonghoe.cloth.admin.notice.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kimmyeonghoe.cloth.admin.notice.domain.AdminNotice;

public interface AdminNoticeMap {
	List<AdminNotice> selectNotices();
	int insertNotice(AdminNotice notice);
	int updateNotice(AdminNotice notice);
	int deleteNotice(@Param("noticeNum") int noticeNum);
}

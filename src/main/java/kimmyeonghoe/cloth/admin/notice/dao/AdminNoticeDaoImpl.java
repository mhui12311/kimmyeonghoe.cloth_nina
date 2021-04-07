package kimmyeonghoe.cloth.admin.notice.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimmyeonghoe.cloth.admin.notice.dao.map.AdminNoticeMap;
import kimmyeonghoe.cloth.admin.notice.domain.AdminNotice;

@Repository
public class AdminNoticeDaoImpl implements AdminNoticeDao{
	@Autowired private AdminNoticeMap noticeMap;

	@Override
	public List<AdminNotice> selectNotices() {
		return noticeMap.selectNotices();
	}

	@Override
	public int insertNotice(AdminNotice notice) {
		return noticeMap.insertNotice(notice);
	}

	@Override
	public int updateNotice(AdminNotice notice) {
		return noticeMap.updateNotice(notice);
	}

	@Override
	public int deleteNotice(int noticeNum) {
		return noticeMap.deleteNotice(noticeNum);
	}
}

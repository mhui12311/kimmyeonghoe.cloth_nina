package kimmyeonghoe.cloth.admin.notice.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimmyeonghoe.cloth.admin.notice.dao.map.NoticeMap;
import kimmyeonghoe.cloth.admin.notice.domain.Notice;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao{
	@Autowired private NoticeMap noticeMap;
	
	@Override
	public List<Notice> selectNotices() {
		return noticeMap.selectnotices();
	}
	
	@Override
	public int insertNotice(Notice notice) {
		return noticeMap.insertNotice(notice);
	}
	
	@Override
	public int updateNotice(Notice notice) {
		return noticeMap.updateNotice(notice);
	}
	
	@Override
	public int deleteNotice(int noticeNum) {
		return noticeMap.deleteNotice(noticeNum);
	}
	
	@Override
	public Notice searchNotice(int noticeNum) {
		return noticeMap.searchNotice(noticeNum);
	}
}

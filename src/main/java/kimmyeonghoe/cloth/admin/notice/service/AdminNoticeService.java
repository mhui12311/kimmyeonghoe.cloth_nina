package kimmyeonghoe.cloth.admin.notice.service;

import java.util.List;


public interface NoticeService {
	List<Notice> getNotices();
	boolean addCloth(Notice cloth);
	boolean fixCloth(Notice cloth);
	boolean delCloth(int clothNum);
	Notice findCloth(int clothNum);
}

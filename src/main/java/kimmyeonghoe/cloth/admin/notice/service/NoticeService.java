package kimmyeonghoe.cloth.admin.notice.service;

import java.util.List;

import kimmyeonghoe.cloth.admin.cloth.domain.Cloth;

public interface NoticeService {
	List<Notice> getCloths();
	boolean addCloth(Notice cloth);
	boolean fixCloth(Notice cloth);
	boolean delCloth(int clothNum);
	Notice findCloth(int clothNum);
}

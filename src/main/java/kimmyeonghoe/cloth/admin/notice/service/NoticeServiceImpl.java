package kimmyeonghoe.cloth.admin.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimmyeonghoe.cloth.admin.cloth.dao.ClothDao;
import kimmyeonghoe.cloth.admin.cloth.domain.Cloth;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired private ClothDao clothDao;
	
	@Override
	public List<Notice> getCloths() {
		return clothDao.selectCloths();
	}

	@Override
	public boolean addCloth(Notice cloth) {
		return clothDao.insertCloth(cloth) > 0;
	}

	@Override
	public boolean fixCloth(Notice cloth) {
		return clothDao.updateCloth(cloth) > 0;
	}

	@Override
	public boolean delCloth(int clothNum) {
		return clothDao.deleteCloth(clothNum) > 0;
	}
	
	@Override
	public Notice findCloth(int clothNum) {
		return clothDao.searchCloth(clothNum);
	}
}

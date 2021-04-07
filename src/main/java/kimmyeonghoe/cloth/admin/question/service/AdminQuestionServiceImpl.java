package kimmyeonghoe.cloth.admin.question.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimmyeonghoe.cloth.admin.question.dao.AdminQuestionDao;
import kimmyeonghoe.cloth.admin.question.domain.AdminQuestion;

@Service
public class AdminQuestionServiceImpl implements AdminQuestionService {
	@Autowired private AdminQuestionDao QuestionDao;
	
	@Override
	public List<AdminQuestion> getQuestions() {
		return QuestionDao.selectQuestions();
	}

	@Override
	public boolean addQuestion(AdminQuestion question) {
		return QuestionDao.insertQuestion(question) > 0;
	}

	@Override
	public boolean fixQuestion(AdminQuestion question) {
		return QuestionDao.updateQuestion(question) > 0;
	}

	@Override
	public boolean delQuestion(int questionNum) {
		return QuestionDao.deleteQuestion(questionNum) > 0;
	}
	
	@Override
	public AdminQuestion findQuestion(int questionNum) {
		return QuestionDao.searchQuestion(questionNum);
	}
}

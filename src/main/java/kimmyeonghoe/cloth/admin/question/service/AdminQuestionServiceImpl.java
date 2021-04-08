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
	public int addQuestion(AdminQuestion question) {
		return QuestionDao.insertQuestion(question);
	}

	@Override
	public int fixQuestion(AdminQuestion question) {
		return QuestionDao.updateQuestion(question);
	}

	@Override
	public int delQuestion(int questionNum) {
		return QuestionDao.deleteQuestion(questionNum);
	}
	
	@Override
	public AdminQuestion findQuestion(int questionNum) {
		return QuestionDao.searchQuestion(questionNum);
	}
}

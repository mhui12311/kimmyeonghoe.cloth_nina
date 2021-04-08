package kimmyeonghoe.cloth.admin.question.service;

import java.util.List;

import kimmyeonghoe.cloth.admin.question.domain.AdminQuestion;

public interface AdminQuestionService {
	List<AdminQuestion> getQuestions();
	int addQuestion(AdminQuestion question);
	int fixQuestion(AdminQuestion question);
	int delQuestion(int questionNum);
	AdminQuestion findQuestion(int questionNum);
}

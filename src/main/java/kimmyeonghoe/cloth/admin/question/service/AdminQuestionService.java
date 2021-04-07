package kimmyeonghoe.cloth.admin.question.service;

import java.util.List;

import kimmyeonghoe.cloth.admin.question.domain.AdminQuestion;

public interface AdminQuestionService {
	List<AdminQuestion> getQuestions();
	boolean addQuestion(AdminQuestion question);
	boolean fixQuestion(AdminQuestion question);
	boolean delQuestion(int questionNum);
	AdminQuestion findQuestion(int questionNum);
}

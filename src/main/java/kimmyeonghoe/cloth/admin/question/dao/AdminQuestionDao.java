package kimmyeonghoe.cloth.admin.question.dao;

import java.util.List;

import kimmyeonghoe.cloth.admin.question.domain.AdminQuestion;

public interface AdminQuestionDao {
	List<AdminQuestion> selectQuestions();
	int insertQuestion(AdminQuestion question);
	int updateQuestion(AdminQuestion question);
	int deleteQuestion(int questionNum);
	AdminQuestion searchQuestion(int questionNum);
}
